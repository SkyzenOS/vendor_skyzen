# Inherit mobile mini common SkyzenOS stuff
$(call inherit-product, vendor/skyzen/config/common_mobile_mini.mk)

# Inherit tablet common Skyzen stuff
$(call inherit-product, vendor/skyzen/config/tablet.mk)

$(call inherit-product, vendor/skyzen/config/telephony.mk)
