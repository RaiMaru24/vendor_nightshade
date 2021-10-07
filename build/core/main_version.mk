BUILD_NUMBER_CUSTOM := $(shell date -u +%H%M)

BUILD_SIGNATURE_KEYS := release-keys

BUILD_FINGERPRINT := $(PRODUCT_BRAND)/$(TARGET_DEVICE)/$(TARGET_DEVICE):$(PLATFORM_VERSION)/$(BUILD_ID)/$(BUILD_NUMBER_CUSTOM):$(TARGET_BUILD_VARIANT)/$(BUILD_SIGNATURE_KEYS)
ADDITIONAL_BUILD_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

# NightShadeOS System Version
ADDITIONAL_BUILD_PROPERTIES += \
  ro.nightshade.version=$(NIGHTSHADE_DISPLAY_VERSION) \
  ro.nightshade.build.status=$(NIGHTSHADE_BUILD_TYPE) \
  ro.modversion=$(NIGHTSHADE_MOD_VERSION) \
  ro.nightshade.build.date=$(BUILD_DATE) \
  ro.nightshade.buildtype=$(NIGHTSHADE_BUILD_TYPE) \
  ro.nightshade.fingerprint=$(NIGHTSHADE_FINGERPRINT) \
  ro.nightshade.device=$(NIGHTSHADE_BUILD) \
  org.nightshade.version=$(NIGHTSHADEVERSION)
