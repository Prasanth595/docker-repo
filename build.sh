#!/bin/bash
set -e

REGISTRY="ghcr.io/your-username"   # or Docker Hub
ROOT_DIR="images"

# Find all Dockerfiles recursively
find "$ROOT_DIR" -name "Dockerfile" | while read -r dockerfile; do
    # Example: images/linux/ubuntu/22.04/Dockerfile -> linux/ubuntu/22.04
    image_path=$(dirname "${dockerfile#"$ROOT_DIR/"}")
    image_name=$(echo "$image_path" | tr '/' '-')
    
    echo "🚀 Building $REGISTRY/$image_name:latest"
    docker build -t $REGISTRY/$image_name:latest -f "$dockerfile" "$(dirname "$dockerfile")"
    
    echo "📦 Pushing $REGISTRY/$image_name:latest"
    docker push $REGISTRY/$image_name:latest
done
