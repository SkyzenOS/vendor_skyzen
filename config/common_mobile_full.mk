# Inherit common SkyzenOS stuff
$(call inherit-product, vendor/skyzen/config/common_mobile.mk)

PRODUCT_SIZE := full

# Include {GoogleSansFlex,Lato,Rubik} fonts
$(call inherit-product-if-exists, external/google-fonts/google-sans-flex/fonts.mk)
$(call inherit-product-if-exists, external/google-fonts/lato/fonts.mk)
$(call inherit-product-if-exists, external/google-fonts/rubik/fonts.mk)

ifneq ($(PRODUCT_NO_CAMERA),true)
PRODUCT_PACKAGES += \
    Aperture
endif

# Extra cmdline tools
PRODUCT_PACKAGES += \
    unrar \
    zstd
