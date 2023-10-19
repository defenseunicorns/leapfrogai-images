# LeapfrogAI Base Images

## Pre-requisites

* [apko](https://apko.dev)

## Example

```
$ apko build python-3.11-dev.yaml ghcr.io/defenseunicorns/leapfrogai/python:3.11-dev python-3.11-dev.tar
$ apko build python-3.11.yaml ghcr.io/defenseunicorns/leapfrogai/python:3.11 python-3.11.tar
$ docker load < python-3.11-dev.tar
$ docker load < python-3.11.tar
```

## TODO

* Automation
* Maybe better tagging?
* Maybe move over to TF / reduce duplication between apko manifests