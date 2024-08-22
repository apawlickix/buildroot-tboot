################################################################################
#
# Tboot
#
################################################################################

TBOOT_VERSION = 1.11.3
TBOOT_SOURCE = tboot-$(TBOOT_VERSION).tar.gz
TBOOT_SITE = https://sourceforge.net/projects/tboot/files/tboot
TBOOT_LICENSE = 0BSD
TBOOT_LICENSE_FILES = COPYING


define TBOOT_BUILD_CMDS
    $(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D)
endef

define TBOOT_INSTALL_TARGET_CMDS
    $(INSTALL) -D -m 0755 $(@D)/utils/txt-stat $(TARGET_DIR)/bin
endef

$(eval $(generic-package))