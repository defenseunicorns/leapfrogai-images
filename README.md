# LeapfrogAI Base Images

## Pre-requisites

* [apko](https://apko.dev)
* [Docker](https://www.docker.com/)

## GitHub Runner Instructions

`Test Build Images` runs on PR to ensure images build successfully.

`Publish Images` must be manually triggered from the `Actions` tab.

## Local Instructions

### Build

``` shell
# Individual Architectures
make build
make build-dev
```

### Cleanup

To remove all artifacts created by build step:

``` shell
make cleanup
```