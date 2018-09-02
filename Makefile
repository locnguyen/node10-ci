SHELL := bash
REGISTRY := lochnguyen
IMAGE_NAME := node10-ci
VERSION_TAG := $(shell git rev-parse --short HEAD)

image:
	docker build --no-cache -t $(IMAGE_NAME) .
	docker tag $(IMAGE_NAME) $(REGISTRY)/$(IMAGE_NAME):latest
	docker tag $(IMAGE_NAME) $(REGISTRY)/$(IMAGE_NAME):$(VERSION_TAG)

clean:
	docker rmi -f $(IMAGE_NAME)
	docker rmi -f $(REGISTRY)/$(IMAGE_NAME):latest
	docker rmi -f $(REGISTRY)/$(IMAGE_NAME):$(VERSION_TAG)

push:
	docker push $(REGISTRY)/$(IMAGE_NAME):$(VERSION_TAG)

push-all:
	docker push $(REGISTRY)/$(IMAGE_NAME):latest
	docker push $(REGISTRY)/$(IMAGE_NAME):$(VERSION_TAG)