## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

TARGET_BOOTANIMATION_NAME := vertical-720x1280

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# This device has NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/lge/su640/su640.mk)

PRODUCT_NAME := cm_su640

# Release name and versioning
PRODUCT_RELEASE_NAME := OptimusLTE
PRODUCT_VERSION_DEVICE_SPECIFIC :=

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := su640

PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=lgp930 PRODUCT_NAME=lge_iproj BUILD_FINGERPRINT=LGE/i_skt/i_skt:2.3.5/GRJ90/LG-SU640-V10i.42481c03:user/release-keys PRIVATE_BUILD_DESC="i_skt-user 2.3.5 GRJ90 LG-SU640-V10i.42481c03 release-keys"

# Enable Torch
PRODUCT_PACKAGES += Torch WiFiDirectDemo
