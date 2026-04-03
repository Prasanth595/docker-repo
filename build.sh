#!/bin/bash
set -e

DEFAULT_REGISTRY="ghcr.io"
DEFAULT_NAMESPACE="prasanth595"
REGISTRY="${REGISTRY:-$DEFAULT_REGISTRY}"
NAMESPACE="${NAMESPACE:-$DEFAULT_NAMESPACE}"
ROOT_DIRS=("images")

for ROOT_DIR in "${ROOT_DIRS[@]}"; do
    if [ ! -d "$ROOT_DIR" ]; then
        continue
    fi

    # Find all Dockerfiles recursively under each root
    find "$ROOT_DIR" -name "Dockerfile" | while read -r dockerfile; do
        if [ -n "$SKIP_WINDOWS" ] && [[ "$dockerfile" == */windows/* ]]; then
            echo "⏭️ Skipping Windows image on non-Windows runner: $dockerfile"
            continue
        fi

        # Example: images/linux/ubuntu/22.04/Dockerfile -> linux/ubuntu/22.04
        image_path=$(dirname "${dockerfile#"$ROOT_DIR/"}")
        image_name=$(echo "$image_path" | tr '/' '-')
        image_ref="$REGISTRY/$NAMESPACE/$image_name:latest"

        if [ -n "$PUSH_ONLY" ]; then
            echo "📦 Pushing $image_ref"
            docker push "$image_ref"
            continue
        fi

        echo "🚀 Building $image_ref"
        docker build -t "$image_ref" -f "$dockerfile" "$(dirname "$dockerfile")" --progress=plain

        if [ -n "$SKIP_PUSH" ]; then
            continue
        fi

        echo "📦 Pushing $image_ref"
        docker push "$image_ref"
    done
done
