# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/motorola/cancunf/device.mk)

# Inherit some common rising stuff.
$(call inherit-product, vendor/lineage/config/common.mk)
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
$(call inherit-product, vendor/lineage/config/BoardConfigSoong.mk)
$(call inherit-product, vendor/lineage/config/BoardConfigLineage.mk)
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := rising_cancunf
PRODUCT_DEVICE := cancunf
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g54 5G

PRODUCT_GMS_CLIENTID_BASE := android-motorola

# Lunch banner maintainer variable
RISING_MAINTAINER=EzerMod

PRODUCT_BUILD_PROP_OVERRIDES += \
    RisingMaintainer=EzerMod

RISING_MAINTAINER := EzerMod
TARGET_ENABLE_BLUR := false

PRODUCT_NO_CAMERA := false

# GMS build flags, true by default
# Ship with GMS packages, replaces default AOSP packages with Google manufactured packages.
#WITH_GMS := true/false

# CORE build flags
WITH_GMS := true
TARGET_USES_PICO_GAPPS := true

# VANILLA only build flags
#WITH_GMS := false

# VANILLA build with MICROG
#WITH_GMS := false
#WITH_MICROG := true

TARGET_DEFAULT_PIXEL_LAUNCHER := false 


# Whether to ship lawnchair launcher, false by default
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := false 

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName=cancunf
