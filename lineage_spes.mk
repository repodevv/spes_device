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
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

#PRODUCT_SOONG_NAMESPACES += \
#    vendor/pixelos/pixel-clocks/common

# Lunch banner maintainer variable
RISING_MAINTAINER=Sehraan

# Chipset/Maintainer properties (ro.rising.chipset/ro.rising.maintainer) 
# Set RISING_MAINTAINER for version control 
# (Optional if builder is setting properties via init_<device>.cpp)
PRODUCT_BUILD_PROP_OVERRIDES += \
    RisingChipset=Snapdragon 680 \
    RisingMaintainer=Sehraan

RISING_MAINTAINER := Sehraan

# Disable/enable blur support, false by default
TARGET_ENABLE_BLUR := true

# Whether to ship aperture camera, false by default
PRODUCT_NO_CAMERA := false

# VANILLA only build flags
WITH_GMS := false

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="spes_global-user 13 TKQ1.221114.001 V816.0.11.0.TGKMIXM release-keys" \
    BuildFingerprint=Redmi/spes_global/spes:13/TKQ1.221114.001/V816.0.11.0.TGKMIXM:user/release-keys \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)

