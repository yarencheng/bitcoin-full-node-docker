ifndef DOCKER_TAG
DOCKER_TAG=asia.gcr.io/mystical-rhino-224503/mars-wallet/demo-client
endif

all: go-install

go-install:
	go install -v ./...

docker-build:
	docker build --tag $(DOCKER_TAG) .

docker-push:
	docker push $(DOCKER_TAG)
