# LeapfrogAI Base Images

## Pre-requisites

* [apko](https://apko.dev)
* [Docker](https://www.docker.com/)

## GitHub Runner Instructions

`Publish Images` must be manually triggered from the `Actions` tab.

## Local Instructions

### Build

Builds two base images, one for the builder image and one for the final production image.

``` shell
# Dev/Builder Image
make build-dev

# Production Image
make build
```

### Cleanup

To remove all artifacts created by build step:

``` shell
make cleanup
```