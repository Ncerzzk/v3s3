################################################################################
#
# ESP_HOSTED_NG
#
################################################################################

ESP_HOSTED_NG_VERSION = support_519
ESP_HOSTED_NG_SITE = $(call github,Ncerzzk,esp-hosted,$(ESP_HOSTED_NG_VERSION))
ESP_HOSTED_NG_DEPENDENCIES = 

define ESP_HOSTED_NG_BUILD_CMDS
	cd $(@D)/esp_hosted_ng/host && $(MAKE) target=sdio  CROSS_COMPILE=$(TARGET_CROSS) KERNEL=$(LINUX_DIR) 
endef

define ESP_HOSTED_NG_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/esp_hosted_ng/host/esp32_sdio.ko  $(TARGET_DIR)/root/
endef

$(eval $(generic-package))

