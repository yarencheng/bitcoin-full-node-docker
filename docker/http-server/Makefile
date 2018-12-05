ifndef DOCKER_TAG
DOCKER_TAG=asia.gcr.io/mystical-rhino-224503/mars-wallet/http-server
endif

.PHONY : all
all: docker-build

.PHONY : install
install: docker-push

.PHONY : clean
clean: docker-rmi

.PHONY : docker-build
docker-build:
	docker build --tag $(DOCKER_TAG) --file dockerfile ../../go

.PHONY : docker-push
docker-push:
	docker push $(DOCKER_TAG)

.PHONY : docker-rmi
docker-rmi:
	docker rmi $(DOCKER_TAG)