ifndef DOCKER_TAG
DOCKER_TAG=asia.gcr.io/mystical-rhino-224503/mars-wallet/btc-fullnode
endif

docker-build:
	docker build --tag $(DOCKER_TAG) .

docker-push:
	docker push $(DOCKER_TAG)
