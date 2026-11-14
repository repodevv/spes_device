#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from spes/spesn device
$(call inherit-product, device/xiaomi/spes/device.mk)

# Inherit some common PixelOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

#PRODUCT_SOONG_NAMESPACES += \
#    vendor/pixelos/pixel-clocks/common

# In your device.mk or BoardConfig.mk

# Set maintainer
MISTOS_MAINTAINER := Sehraan

# Enable GMS with mini package
WITH_GMS := false

# Enable UI enhancements
TARGET_ENABLE_BLUR := true

# Enable features
TARGET_SUPPORTS_QUICK_TAP := true
BYPASS_CHARGE_SUPPORTED := true

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="spes_global-user 13 TKQ1.221114.001 V816.0.11.0.TGKMIXM release-keys" \
    BuildFingerprint=Redmi/spes_global/spes:13/TKQ1.221114.001/V816.0.11.0.TGKMIXM:user/release-keys \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)

