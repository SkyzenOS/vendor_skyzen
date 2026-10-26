PRODUCT_VERSION_MAJOR = 1
PRODUCT_VERSION_MINOR = 0

# Build flags
SKYZEN_BUILD_DATE := $(shell date -u +%y%m%d)
SKYZEN_BUILDTYPE ?= UNOFFICIAL
SKYZEN_MAINTAINER ?= BuildBot

# Internal version, also used as the OTA zip filename.
SKYZEN_VERSION := SkyzenOS-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(SKYZEN_BUILD_DATE)-$(SKYZEN_BUILDTYPE)-$(SKYZEN_BUILD)

# Display version
SKYZEN_DISPLAY_VERSION := v$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)

# SkyzenOS version properties
PRODUCT_SYSTEM_PROPERTIES += \
    ro.skyzen.version=$(SKYZEN_VERSION) \
    ro.skyzen.display.version=$(SKYZEN_DISPLAY_VERSION) \
    ro.skyzen.build.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR) \
    ro.skyzen.releasetype=$(SKYZEN_BUILDTYPE) \
    ro.skyzen.maintainer=$(SKYZEN_MAINTAINER)
