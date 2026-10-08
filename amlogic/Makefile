# SPDX-License-Identifier: (GPL-2.0+ OR MIT)

KERNEL_SRC ?= /lib/modules/$(shell uname -r)/build
M ?= $(shell pwd)

ifeq ($(O),)
out_dir := .
else
out_dir := $(O)
endif

DRIVER_DIR := sdio_driver_bt
DRIVER_KOS := sdio_bt.ko
W1_SYMVERS := $(abspath $(out_dir)/$(M)/../../amlogic-drivers/w1/Module.symvers)

modules modules_install clean:
	$(MAKE) -C $(KERNEL_SRC) M=$(M)/$(DRIVER_DIR) KBUILD_EXTRA_SYMBOLS="$(KBUILD_EXTRA_SYMBOLS) $(W1_SYMVERS)" $(@)
	if [ -e $(out_dir)/$(M)/$(DRIVER_DIR)/Module.symvers ]; then \
		ln -sf $(out_dir)/$(M)/$(DRIVER_DIR)/Module.symvers $(out_dir)/$(M)/Module.symvers; \
	fi
	for ko in $(DRIVER_KOS); do \
		if [ -e $(out_dir)/$(M)/$(DRIVER_DIR)/$$ko ]; then \
			ln -sf $(out_dir)/$(M)/$(DRIVER_DIR)/$$ko $(out_dir)/$(M)/$$ko; \
		fi; \
	done
