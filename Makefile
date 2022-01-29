IMAGE_NAME := iamd3vil/caddy
CURRENT_BUILD_TAG := 2.4.6
LATEST_TAG:= latest

build:
	docker build \
	-t ${IMAGE_NAME}:${CURRENT_BUILD_TAG} \
	-t ${IMAGE_NAME}:${LATEST_TAG} \
	.

push:
	docker push ${IMAGE_NAME}:${CURRENT_BUILD_TAG}
	docker push ${IMAGE_NAME}:${LATEST_TAG}