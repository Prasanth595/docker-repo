# Usage

## Build all images

From the repository root:

```bash
./build.sh
```

The script finds every `images/**/Dockerfile`, builds each image, tags it from its folder path, and pushes it to GHCR.

## Build a single image

```bash
docker build -t ghcr.io/prasanth595/docker-repo/linux-ubuntu-22.04:latest images/linux/ubuntu/22.04
```

## Push target

```text
ghcr.io/prasanth595/docker-repo/<category>-<name>-<version>:latest
```

Examples:

```text
ghcr.io/prasanth595/docker-repo/linux-ubuntu-22.04:latest
ghcr.io/prasanth595/docker-repo/languages-python-3.13:latest
ghcr.io/prasanth595/docker-repo/databases-postgres-17:latest
```

## Authentication

GHCR requires login for pushes (a PAT with `write:packages` scope):

```bash
echo <PAT> | docker login ghcr.io -u prasanth595 --password-stdin
```

Logging in to Docker Hub as well raises the anonymous pull limit (useful for building many images locally):

```bash
docker login
```

## Testing images locally (before push)

1. Syntax/lint check (no downloads):

   ```bash
   docker build --check -f images/linux/ubuntu/22.04/Dockerfile images/linux/ubuntu/22.04
   ```

2. Full build + smoke test:

   ```bash
   docker build -t test image images/linux/ubuntu/22.04
   docker run --rm test image bash -c "cat /etc/os-release | head -2"   # runtime images
   docker run --rm test image python --version                          # language runtimes
   docker run -d --name tmp-db test image && docker inspect -f '{{.State.Status}}' tmp-db && docker rm -f tmp-db
   ```

3. On this machine WSL2 is available:

   ```bash
   wsl -d Ubuntu-24.04          # Linux-native shell
   docker context use desktop-linux   # or Docker Desktop's WSL2 backend
   ```

### Troubleshooting

| Error | Fix |
|---|---|
| `toomanyrequests` / `429 Too Many Requests` | anonymous Docker Hub pull limit (~100 pulls/6h/IP). Run `docker login`, or wait for the window to reset. |
| `not found` / `no such manifest` | upstream tag no longer exists (tags drift). Bump the version in the `FROM` line. |
| `no match for platform` | Windows base image built on a Linux host. Use a Windows-container build host. |
| `unknown instruction` | Dockerfile syntax error. Check for missing `\` line continuations in multi-line `ENV`. |

## CI/CD

`.github/workflows/docker-build.yml` runs on push to `main` and manual dispatch:

- logs in to GHCR (`ghcr.io`)
- makes `build.sh` executable
- runs `./build.sh` to build and push all images

## Notes

- Update the full image catalog in [Images.md](Images.md) after adding or removing images (regenerate the tables from the `images/` tree).
- Keep `build.sh`, the CI workflow, and the docs aligned with the image layout.