#!/bin/bash
set -e

REGISTRY="ghcr.io/prasanth595/docker-repo"   # or Docker Hub
ROOT_DIRS=("images" "others")

for ROOT_DIR in "${ROOT_DIRS[@]}"; do
    if [ ! -d "$ROOT_DIR" ]; then
        continue
    fi

    # Find all Dockerfiles recursively under each root
    find "$ROOT_DIR" -name "Dockerfile" | while read -r dockerfile; do
        # Example: images/linux/ubuntu/22.04/Dockerfile -> linux/ubuntu/22.04
        image_path=$(dirname "${dockerfile#"$ROOT_DIR/"}")
        image_name=$(echo "$image_path" | tr '/' '-')
        
        echo "🚀 Building $REGISTRY/$image_name:latest"
        docker build -t "$REGISTRY/$image_name:latest" -f "$dockerfile" "$(dirname "$dockerfile")" --progress=plain
        
        echo "📦 Pushing $REGISTRY/$image_name:latest"
        docker push "$REGISTRY/$image_name:latest"
    done
done
