# Inherit common mobile SkyzenOS stuff
$(call inherit-product, vendor/skyzen/config/common_mobile.mk)

PRODUCT_SIZE := full

ifneq ($(PRODUCT_NO_CAMERA),true)
PRODUCT_PACKAGES += \
    Aperture
endif

# Extra cmdline tools
PRODUCT_PACKAGES += \
    unrar \
    zstd

# Include LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/skyzen/overlay/dictionaries
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/skyzen/overlay/dictionaries
