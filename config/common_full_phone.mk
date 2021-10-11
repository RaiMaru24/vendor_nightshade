# Inherit full common NightShade stuff
$(call inherit-product, vendor/nightshade/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Include nightshade LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/nightshade/overlay/dictionaries

# Enable support of one-handed mode
PRODUCT_PRODUCT_PROPERTIES += \
    ro.support_one_handed_mode=true

$(call inherit-product, vendor/nightshade/config/telephony.mk)
