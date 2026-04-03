# Usage

## Build images

The repository includes scripts and Dockerfiles for building container images.

From the repository root, run:

```bash
./build.sh
```

This script builds all images and pushes them using the GHCR path.

## Push target

Images are published to GitHub Container Registry under:

```text
ghcr.io/prasanth595/docker-repo/<image_name>:latest
```

Example:

```text
ghcr.io/prasanth595/docker-repo/linux-ubuntu-22.04:latest
```

## Notes

- Ensure you are authenticated to GHCR if you plan to push images.
- The `build.sh` script should already use the registry `ghcr.io/prasanth595/docker-repo`.
