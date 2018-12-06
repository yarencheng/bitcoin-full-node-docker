
SUBDIRS = go docker/btc-full-node docker/eth-full-node docker/http-server
INSTALLDIRS = $(SUBDIRS:%=install-%)
CLEANDIRS = $(SUBDIRS:%=clean-%)

.PHONY : all
all: $(SUBDIRS)

.PHONY : install
install: $(INSTALLDIRS)

.PHONY : clean
clean: $(CLEANDIRS)

.PHONY: $(SUBDIRS)
$(SUBDIRS):
	$(MAKE) -C $@

.PHONY: $(INSTALLDIRS)
$(INSTALLDIRS): 
	$(MAKE) -C $(@:install-%=%) install

.PHONY: $(CLEANDIRS)
$(CLEANDIRS): 
	$(MAKE) -C $(@:clean-%=%) clean
