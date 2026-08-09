# Docker Base Image Repository

A collection of **112 public base images** for Linux distros, Windows, language runtimes, databases, messaging, web servers, and build tools — a single source of truth for standardizing container bases across projects.

Every image is a minimal wrapper around a **public upstream image** (Docker Hub, Microsoft Artifact Registry, Red Hat, Oracle, or GHCR), pinned to a concrete version tag.

## Repository Structure

```
docker-repo/
├── .github/workflows/docker-build.yml   # CI: builds & pushes all images
├── .github/agents/                      # agent config for this repo
├── build.sh                             # builds/pushes everything under images/
├── wiki/                                # GitHub-style wiki pages
│   ├── Home.md
│   ├── Images.md                        # full 112-image catalog (path, FROM, pull URL)
│   └── Usage.md
└── images/
    ├── linux/       (39)  alpine, amazonlinux, arch, busybox, centos, debian, fedora,
    │                      gentoo, heroku, opensuse, oracle, redhat (UBI), rocky, slackware, ubuntu
    ├── windows/     (4)   nanoserver, servercore
    ├── macos/       (1)   placeholder (not officially supported)
    ├── languages/   (32)  python, node, go, java (Temurin), dotnet (MCR), php, ruby, rust,
    │                      perl, swift, haskell, erlang, elixir, dart, julia, bundler, ccache,
    │                      composer, docker-cli, gradle, nuget
    ├── databases/   (22)  postgres, mysql, mariadb, mongo, redis, memcached, elasticsearch,
    │                      influxdb, neo4j, couchdb, couchbase, cassandra, solr, sqlserver (MCR),
    │                      oracle (Database Free)
    ├── messaging/   (5)   rabbitmq, zookeeper, activemq, kafka (Apache), nats
    ├── servers/     (5)   nginx, httpd, tomcat, caddy, traefik (GHCR)
    └── tools/       (4)   maven, gradle, gcc, git (alpine/git)
```

> The complete catalog — every image with its exact `FROM` source and published pull URL — lives in **[wiki/Images.md](wiki/Images.md)**.

## Registry & Naming Convention

`build.sh` discovers every `images/**/Dockerfile` and publishes it to GitHub Container Registry:

```
ghcr.io/prasanth595/docker-repo/<category>-<name>-<version>:latest
```

| Local image | Published as |
|---|---|
| `images/linux/ubuntu/22.04/Dockerfile` | `ghcr.io/prasanth595/docker-repo/linux-ubuntu-22.04:latest` |
| `images/languages/python/3.13/Dockerfile` | `ghcr.io/prasanth595/docker-repo/languages-python-3.13:latest` |
| `images/databases/postgres/17/Dockerfile` | `ghcr.io/prasanth595/docker-repo/databases-postgres-17:latest` |

## Usage

### Build a single image

```bash
docker build -t ghcr.io/prasanth595/docker-repo/linux-ubuntu-22.04:latest images/linux/ubuntu/22.04
```

### Build and push all images

```bash
./build.sh
```

Requires Docker and GHCR authentication:

```bash
docker login ghcr.io -u prasanth595 --password-stdin < <PAT with write:packages>
```

### CI/CD

`.github/workflows/docker-build.yml` logs into GHCR and runs `./build.sh` on every push to `main` or manual dispatch. Images are tagged as `<category>-<name>-<version>:latest` based on folder names.

## Testing images locally

Before pushing, validate locally:

```bash
# syntax/lint check (no pull needed)
docker build --check -f images/linux/ubuntu/22.04/Dockerfile images/linux/ubuntu/22.04

# full build
docker build -t test image images/linux/ubuntu/22.04

# run & smoke test
docker run --rm test image bash -c "cat /etc/os-release | head -2"
```

Notes:

- **Docker Hub anonymous rate limit**: ~100 pulls / 6h / IP. `docker login` raises this limit and is required for pushes anyway.
- **WSL**: on this machine, WSL2 is enabled — prefer `wsl -d Ubuntu-24.04` for Linux-native testing, or use the Docker Desktop WSL2 backend (`docker context use desktop-linux`).
- **Windows images** (`images/windows/*`) can only be built on a Windows-container host; the Ubuntu CI runner skips/needs a separate job for them.
- **macOS image** is a placeholder — Docker does not officially support macOS base images.

## Upstream registries used (all public, anonymously pullable)

| Registry | Images |
|---|---|
| Docker Hub (`library/*` and official repos) | most images |
| `mcr.microsoft.com` | dotnet 8/9, SQL Server 2022, Windows base images |
| `registry.access.redhat.com` | UBI 9 (redhat/9) |
| `container-registry.oracle.com` | Oracle Database Free 23.5 (Enterprise images are license-gated and not public) |
| `ghcr.io` | traefik 3.x (Traefik publishes stable tags on GHCR, not Docker Hub) |
| `alpine/git` | git (there is no official `git` image on Docker Hub) |

## Notes

- Versions are pinned in each `FROM`; to upgrade, edit the tag and rebuild. If an upstream tag disappears, only that image fails in CI.
- A few equivalent variants intentionally exist (`arch/latest` vs `archlinux/latest`, `windows/2022` vs `windows/ltsc2022`); both publish under their folder names.
- Secrets: `.gitignore` ignores `key.json` and `.env` files — never commit service-account keys.

## License

MIT. Use at your own risk; macOS image is a placeholder only.