all:
	$(MAKE) all -C go

docker-build:
	$(MAKE) $@ -C go
	$(MAKE) $@ -C full-node/btc

docker-push:
	$(MAKE) $@ -C go
	$(MAKE) $@ -C full-node/btc