# Inherit mobile full common SkyzenOS stuff
$(call inherit-product, vendor/skyzen/config/common_mobile_full.mk)

# Inherit tablet common SkyzenOS stuff
$(call inherit-product, vendor/skyzen/config/tablet.mk)

$(call inherit-product, vendor/skyzen/config/telephony.mk)
