trash-panda := docker images -q ghcr.io/defenseunicorns/leapfrogai/python:*

build-all:
	make build-amd64
	make build-arm64
	make build-dev-amd64
	make build-dev-arm64

publish-all:
	make publish-amd64
	make publish-arm64
	make publish-dev-amd64
	make publish-dev-arm64

build-arm64:
	apko build python-3.11.yaml ghcr.io/defenseunicorns/leapfrogai/python:3.11 python-3.11.tar --arch arm64
	docker load -i python-3.11.tar

build-amd64:
	apko build python-3.11.yaml ghcr.io/defenseunicorns/leapfrogai/python:3.11 python-3.11.tar --arch x86_64
	docker load -i python-3.11.tar

build-dev-amd64:
	apko build python-3.11-dev.yaml ghcr.io/defenseunicorns/leapfrogai/python:3.11-dev python-3.11-dev.tar --arch x86_64
	docker load -i python-3.11-dev.tar

build-dev-arm64:
	apko build python-3.11-dev.yaml ghcr.io/defenseunicorns/leapfrogai/python:3.11-dev python-3.11-dev.tar --arch arm64
	docker load -i python-3.11-dev.tar

publish-amd64:
	docker push ghcr.io/defenseunicorns/leapfrogai/python:3.11-amd64

publish-dev-amd64:
	docker push ghcr.io/defenseunicorns/leapfrogai/python:3.11-dev-amd64

publish-arm64:
	docker push ghcr.io/defenseunicorns/leapfrogai/python:3.11-arm64

publish-dev-arm64:
	docker push ghcr.io/defenseunicorns/leapfrogai/python:3.11-dev-arm64

make cleanup:
	make cleanup-files
	make cleanup-images

make cleanup-files:
	rm -rf *.tar
	rm -rf *.cdx
	rm -rf *.spdx.json

make cleanup-images:
	docker rmi -f $$(docker images -q ghcr.io/defenseunicorns/leapfrogai/python:*)