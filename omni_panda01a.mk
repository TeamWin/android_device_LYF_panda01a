# Release name
PRODUCT_RELEASE_NAME := panda01a

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PACKAGES += \
	charger_res_images \
	charger

PRODUCT_COPY_FILES += \
    device/LYF/panda01a/dt.img:dt.img

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := panda01a
PRODUCT_NAME := omni_panda01a
PRODUCT_BRAND := LYF
PRODUCT_MODEL := F1s
PRODUCT_MANUFACTURER := LYF
PRODUCT_GMS_CLIENTID_BASE := android-ckt

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="panda01a_msm8952_64-user 6.0.1 MMB29M 702 release-keys" \
    PRODUCT_NAME=LS-5201 \
    TARGET_DEVICE=LS-5201

BUILD_FINGERPRINT := LYF/LS-5201/panda01a_msm8952_64:6.0.1/MMB29M/195:user/release-keys
