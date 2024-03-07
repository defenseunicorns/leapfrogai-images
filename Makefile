
build:
	apko build python-3.11.yaml ghcr.io/defenseunicorns/leapfrogai/python:3.11 python-3.11.tar
	docker load -i python-3.11.tar

build-dev:
	apko build python-3.11-dev.yaml ghcr.io/defenseunicorns/leapfrogai/python:3.11-dev python-3.11-dev.tar
	docker load -i python-3.11-dev.tar

make cleanup:
	rm python-3.11-dev.tar
	rm -rf sbom*.cdx
	rm -rf sbom*.spdx.json