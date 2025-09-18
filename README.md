# Docker Base Image Repository

This repository contains a collection of base Docker images for Linux, Windows, macOS (placeholder), programming languages, and databases.  
It is designed to standardize container images and provide a single source of truth for projects.

## Repository Structure
```
docker-repo/
│── .github/
│   └── workflows/
│       └── docker-build.yml   # CI/CD workflow
│
│── build.sh                   # builds & pushes everything
│── README.md                  # this file
│
│── images/
│   ├── linux/
│   │   ├── ubuntu/22.04/Dockerfile
│   │   ├── ubuntu/20.04/Dockerfile
│   │   ├── debian/12/Dockerfile
│   │   ├── redhat/9/Dockerfile
│   │   ├── centos/7/Dockerfile
│   │   └── alpine/3.19/Dockerfile
│   │
│   ├── windows/
│   │   ├── servercore/2022/Dockerfile
│   │   └── nanoserver/2022/Dockerfile
│   │
│   ├── macos/
│   │   └── base/12/Dockerfile   # placeholder (not officially supported)
│   │
│   ├── languages/
│   │   ├── python/3.11/Dockerfile
│   │   ├── java/21/Dockerfile
│   │   ├── node/20/Dockerfile
│   │   └── go/1.22/Dockerfile
│   │
│   └── databases/
│       ├── postgres/16/Dockerfile
│       ├── mysql/8/Dockerfile
│       └── redis/7/Dockerfile
```

## Usage

### Build a single image
```
docker build -t my-registry/ubuntu-22.04:latest images/linux/ubuntu/22.04
```
### Build and push all images
```
./build.sh
```
The build script:
- Finds all Dockerfiles under images/
- Builds each image
- Tags images based on folder names
- Pushes them to the configured registry

---

## CI/CD Workflow

- Located in .github/workflows/docker-build.yml
- Runs on push to main or manual dispatch
- Logs in to registry
- Builds and pushes all images

---

## Notes

- Windows images require Windows build agents
- macOS images are placeholders (Docker does not officially support macOS base images)
- Images are minimal and intended to be extended

---

## Registry Naming Convention

Images are published as:
```
<registry>/<namespace>/<category>-<name>-<version>:latest
```
Example:
```
ghcr.io/prasanth595/linux-ubuntu-22.04:latest
ghcr.io/prasanth595/languages-python-3.11:latest
```
---

## License

MIT License. Use at your own risk. macOS images are placeholders only.
