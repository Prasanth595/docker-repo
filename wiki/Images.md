# Images

## Registry format

All published images follow this naming pattern:

```text
ghcr.io/prasanth595/docker-repo/<category>-<name>-<version>:latest
```

## Example categories

- `databases` - database server images
- `languages` - language runtimes and build tools
- `linux` - Linux distribution base images
- `windows` - Windows base images

## Example published image URLs

- `ghcr.io/prasanth595/docker-repo/databases-mysql-8:latest`
- `ghcr.io/prasanth595/docker-repo/databases-postgres-16:latest`
- `ghcr.io/prasanth595/docker-repo/languages-python-3.11:latest`
- `ghcr.io/prasanth595/docker-repo/linux-ubuntu-22.04:latest`
- `ghcr.io/prasanth595/docker-repo/windows-servercore-2022:latest`

## Notes

Use the image name listed in the `images/` directory and prefix it with `ghcr.io/prasanth595/docker-repo/` when pulling or tagging images.
