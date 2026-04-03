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
│   │   ├── fedora/40/Dockerfile
│   │   ├── arch/latest/Dockerfile
│   │   ├── gentoo/stage3-amd64/Dockerfile
│   │   ├── slackware/15.0/Dockerfile
│   │   ├── alpine/3.19/Dockerfile
│   │   └── heroku/
│   │       ├── 20/Dockerfile
│   │       ├── 20-build/Dockerfile
│   │       ├── 20-cnb/Dockerfile
│   │       ├── 20-cnb-build/Dockerfile
│   │       ├── 22/Dockerfile
│   │       ├── 22-build/Dockerfile
│   │       ├── 22-cnb/Dockerfile
│   │       ├── 22-cnb-build/Dockerfile
│   │       ├── 24/Dockerfile
│   │       ├── 24-build/Dockerfile
│   │       ├── 26/Dockerfile
│   │       └── 26-build/Dockerfile
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
│   │   ├── go/1.22/Dockerfile
│   │   ├── bundler/Dockerfile
│   │   ├── ccache/Dockerfile
│   │   ├── docker-cli/Dockerfile
│   │   ├── gradle/Dockerfile
│   │   ├── nuget/Dockerfile
│   │   └── composer/Dockerfile
│   │
│   └── databases/
│       ├── postgres/16/Dockerfile
│       ├── mysql/8/Dockerfile
│       ├── redis/7/Dockerfile
│       └── oracle/
│           ├── 19.3.0/Dockerfile
│           ├── 21.3.0/Dockerfile
│           └── 23.2.0/Dockerfile
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
- Generates Trivy scan reports and publishes them as HTML through GitHub Pages for direct browser viewing

---

## Notes

- Windows images require Windows build agents
- macOS images are placeholders (Docker does not officially support macOS base images)
- Images are minimal and intended to be extended

---

## Registry Naming Convention

Images are published as:
```
<registry>/<namespace>/docker-repo/<category>-<name>-<version>:latest
```
Example:
```
ghcr.io/prasanth595/docker-repo/linux-ubuntu-22.04:latest
ghcr.io/prasanth595/docker-repo/languages-python-3.11:latest
```

Full pull URLs:
- ghcr.io/prasanth595/docker-repo/databases-mysql-8:latest
- ghcr.io/prasanth595/docker-repo/databases-oracle-19.3.0:latest
- ghcr.io/prasanth595/docker-repo/databases-oracle-21.3.0:latest
- ghcr.io/prasanth595/docker-repo/databases-oracle-23.2.0:latest
- ghcr.io/prasanth595/docker-repo/databases-postgres-16:latest
- ghcr.io/prasanth595/docker-repo/databases-redis-7:latest
- ghcr.io/prasanth595/docker-repo/languages-bundler:latest
- ghcr.io/prasanth595/docker-repo/languages-ccache:latest
- ghcr.io/prasanth595/docker-repo/languages-composer:latest
- ghcr.io/prasanth595/docker-repo/languages-docker-cli:latest
- ghcr.io/prasanth595/docker-repo/languages-go-1.22:latest
- ghcr.io/prasanth595/docker-repo/languages-gradle:latest
- ghcr.io/prasanth595/docker-repo/languages-java-21:latest
- ghcr.io/prasanth595/docker-repo/languages-node-20:latest
- ghcr.io/prasanth595/docker-repo/languages-nuget:latest
- ghcr.io/prasanth595/docker-repo/languages-python-3.11:latest
- ghcr.io/prasanth595/docker-repo/linux-alpine-3.19:latest
- ghcr.io/prasanth595/docker-repo/linux-arch-latest:latest
- ghcr.io/prasanth595/docker-repo/linux-centos-7:latest
- ghcr.io/prasanth595/docker-repo/linux-debian-12:latest
- ghcr.io/prasanth595/docker-repo/linux-fedora-40:latest
- ghcr.io/prasanth595/docker-repo/linux-gentoo-stage3-amd64:latest
- ghcr.io/prasanth595/docker-repo/linux-heroku-20:latest
- ghcr.io/prasanth595/docker-repo/linux-heroku-20-build:latest
- ghcr.io/prasanth595/docker-repo/linux-heroku-20-cnb:latest
- ghcr.io/prasanth595/docker-repo/linux-heroku-20-cnb-build:latest
- ghcr.io/prasanth595/docker-repo/linux-heroku-22:latest
- ghcr.io/prasanth595/docker-repo/linux-heroku-22-build:latest
- ghcr.io/prasanth595/docker-repo/linux-heroku-22-cnb:latest
- ghcr.io/prasanth595/docker-repo/linux-heroku-22-cnb-build:latest
- ghcr.io/prasanth595/docker-repo/linux-heroku-24:latest
- ghcr.io/prasanth595/docker-repo/linux-heroku-24-build:latest
- ghcr.io/prasanth595/docker-repo/linux-heroku-26:latest
- ghcr.io/prasanth595/docker-repo/linux-heroku-26-build:latest
- ghcr.io/prasanth595/docker-repo/linux-redhat-9:latest
- ghcr.io/prasanth595/docker-repo/linux-slackware-15.0:latest
- ghcr.io/prasanth595/docker-repo/linux-ubuntu-20.04:latest
- ghcr.io/prasanth595/docker-repo/linux-ubuntu-22.04:latest
- ghcr.io/prasanth595/docker-repo/windows-nanoserver-2022:latest
- ghcr.io/prasanth595/docker-repo/windows-servercore-2022:latest
---

## License

MIT License. Use at your own risk. macOS images are placeholders only.
