ifndef DOCKER_TAG
DOCKER_TAG=asia.gcr.io/mystical-rhino-224503/mars-wallet/btc-fullnode
endif

.PHONY : all
all: docker-build

.PHONY : install
install: docker-push

.PHONY : clean
clean: docker-rmi

.PHONY : docker-build
docker-build:
	docker build --tag $(DOCKER_TAG) .

.PHONY : docker-push
docker-push:
	docker push $(DOCKER_TAG)

.PHONY : docker-rmi
docker-rmi:
	docker rmi $(DOCKER_TAG)
