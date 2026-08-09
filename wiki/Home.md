# Docker Repo Wiki

Welcome to the `docker-repo` documentation wiki.

## Pages

- [Usage](Usage.md) - build, test, tag, and push images.
- [Images](Images.md) - full catalog of all 112 images with base (FROM) sources and published registry URLs.

## Purpose

This wiki documents the repository for contributors and consumers of images published under `ghcr.io/prasanth595/docker-repo`.

The repository provides standardized, version-pinned base images across:

- Linux distributions (39 images)
- Windows base images (4 images; Windows-container hosts only)
- macOS placeholder (1 image; not officially supported)
- Language runtimes and build tools (32 images)
- Databases (22 images)
- Messaging/streaming (5 images)
- Web/app servers (5 images)
- Build tools (4 images)

All images wrap public upstream images (Docker Hub, MCR, Red Hat, Oracle, GHCR) and are published as `<category>-<name>-<version>:latest` under `ghcr.io/prasanth595/docker-repo`.