# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#
#   Copyright (c) 2014 Red Hat, Inc. All rights reserved.
#
#   Author: CAI Qian    <caiqian@redhat.com>
#   Update: Guangze Bai <gbai@redhat.com>
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

export TEST        := /kdump/crash-sysrq-c
export TESTVERSION := 3.0


# Common VARs from rhts makefile
export TEST_DIR=/mnt/tests$(TEST)
export METADATA=testinfo.desc

.PHONY: build clean run

# All files you want bundled into your rpm.
FILES := $(METADATA) Makefile PURPOSE runtest.sh

build:
	chmod a+x runtest.sh

clean:
	rm -f $(METADATA)

run: $(FILES) build
	./runtest.sh

$(METADATA): Makefile
	touch $(METADATA)
	@echo "Name:          $(TEST)"                           > $(METADATA)
	@echo "TestVersion:   $(TESTVERSION)"	                >> $(METADATA)
	@echo "Path:          $(TEST_DIR)"                      >> $(METADATA)
	@echo "TestTime:      1h"                               >> $(METADATA)
	@echo "License:       GPLv3"                            >> $(METADATA)
	@echo "Owner:		  Kdump QE <kdump-qe-list@redhat.com>" >>$(METADATA)
	@echo "RepoRequires:  kdump/include" >> $(METADATA)
	@echo "Description:   Crashing system via SysRq-C."     >> $(METADATA)
