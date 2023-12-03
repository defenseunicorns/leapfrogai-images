# LeapfrogAI Base Images

## Pre-requisites

* [apko](https://apko.dev)

## Instructions

### Build


To build all architectures:

``` shell
make build-all  # All Architectures
```

``` shell
# Individual Architectures
make build-amd64
make build-arm64
make build-dev-amd64
make build-dev-arm64
```

### Publish

To publish to GHCR:

> If running locally, ensure you have a GitHub auth token setup.

``` shell
make publish-all    # All Architectures
```

``` shell
# Individual Architectures
make publish-amd64
make publish-arm64
make publish-dev-amd64
make publish-dev-arm64
```

### Cleanup

To remove all artifacts created by build step:

``` shell
make cleanup-all    # Everything
```

``` shell
make cleanup-files  # Just the local files
```

``` shell
make cleanup-images # Just the images
```