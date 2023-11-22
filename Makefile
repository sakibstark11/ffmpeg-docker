TAG?=latest
DOCKER_REPO=ffmpeg
IMAGE_TAG=$(DOCKER_USERNAME)/$(DOCKER_REPO):$(TAG)

build:
	docker build -t $(IMAGE_TAG) .

push:
	docker push $(IMAGE_TAG)
