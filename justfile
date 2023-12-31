IMAGE_NAME := "ghcr.io/iamd3vil/caddy"
CURRENT_BUILD_TAG := "2.7.6"
LATEST_TAG:= "latest"

default: build

build:
	docker build \
	-t {{IMAGE_NAME}}:{{CURRENT_BUILD_TAG}} \
	-t {{IMAGE_NAME}}:{{LATEST_TAG}} \
	.

push:
	docker push {{IMAGE_NAME}}:{{CURRENT_BUILD_TAG}}
	docker push {{IMAGE_NAME}}:{{LATEST_TAG}}