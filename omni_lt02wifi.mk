#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from lt02wifi device
$(call inherit-product, device/samsung/lt02wifi/device.mk)

PRODUCT_DEVICE := lt02wifi
PRODUCT_NAME := omni_lt02wifi
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := SM-T210
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="cm_lt02wifi-userdebug 4.4.4 KTU84Q 591f669dc8 test-keys"

BUILD_FINGERPRINT := Samsung/cm_lt02wifi/lt02wifi:4.4.4/KTU84Q/591f669dc8:userdebug/test-keys
