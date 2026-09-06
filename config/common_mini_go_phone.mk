# Set SkyzenOS specific identifier for Android Go enabled products
PRODUCT_TYPE := go

# Inherit mini common SkyzenOS stuff
$(call inherit-product, vendor/skyzen/config/common_mini_phone.mk)
