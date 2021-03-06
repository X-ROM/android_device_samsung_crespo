# Inherit some common C-RoM stuff.
#$(call inherit-product, vendor/crom/config/gsm.mk)

PRODUCT_RELEASE_NAME := NS

# Inherit some common C-RoM stuff.
$(call inherit-product, vendor/crom/config/common_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/crespo/full_crespo.mk)

# Enhanced NFC
#$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

PRODUCT_NAME := crom_crespo
PRODUCT_DEVICE := crespo
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus S
PRODUCT_MANUFACTURER := Samsung

# media
PRODUCT_COPY_FILES += \
    vendor/crom/prebuilt/common/media/hdpi/bootanimation.zip:system/media/bootanimation.zip

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=soju BUILD_FINGERPRINT="google/soju/crespo:4.1.2/JZO54K/485486:user/release-keys" PRIVATE_BUILD_DESC="soju-user 4.1.2 JZO54K 485486 release-keys"
