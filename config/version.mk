# Copyright (C) 2023 NightShadeOS
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

ANDROID_VERSION := 13.0
NIGHTSHADEVERSION := 1.0

NIGHTSHADE_BUILD_TYPE ?= UNOFFICIAL
NIGHTSHADE_DATE_YEAR := $(shell date -u +%Y)
NIGHTSHADE_DATE_MONTH := $(shell date -u +%m)
NIGHTSHADE_DATE_DAY := $(shell date -u +%d)
NIGHTSHADE_DATE_HOUR := $(shell date -u +%H)
NIGHTSHADE_DATE_MINUTE := $(shell date -u +%M)
NIGHTSHADE_BUILD_DATE := $(NIGHTSHADE_DATE_YEAR)$(NIGHTSHADE_DATE_MONTH)$(NIGHTSHADE_DATE_DAY)-$(NIGHTSHADE_DATE_HOUR)$(NIGHTSHADE_DATE_MINUTE)
TARGET_PRODUCT_SHORT := $(subst nightshade_,,$(NIGHTSHADE_BUILD))

# OFFICIAL_DEVICES
ifeq ($(NIGHTSHADE_BUILD_TYPE), OFFICIAL)
  LIST = $(shell cat vendor/nightshade/nightshade.devices)
    ifeq ($(filter $(NIGHTSHADE_BUILD), $(LIST)), $(NIGHTSHADE_BUILD))
      IS_OFFICIAL=true
      NIGHTSHADE_BUILD_TYPE := OFFICIAL
    endif
    ifneq ($(IS_OFFICIAL), true)
      NIGHTSHADE_BUILD_TYPE := UNOFFICIAL
      $(error Device is not official "$(NIGHTSHADE_BUILD)")
    endif
endif

NIGHTSHADE_VERSION := $(NIGHTSHADEVERSION)-$(NIGHTSHADE_BUILD)-$(NIGHTSHADE_BUILD_DATE)-$(NIGHTSHADE_BUILD_TYPE)

NIGHTSHADE_MOD_VERSION :=$(ANDROID_VERSION)-$(NIGHTSHADEVERSION)

NIGHTSHADE_DISPLAY_VERSION := NIGHTSHADEOS-$(NIGHTSHADEVERSION)-$(NIGHTSHADE_BUILD_TYPE)

NIGHTSHADE_DISPLAY_BUILDTYPE := $(NIGHTSHADE_BUILD_TYPE)

NIGHTSHADE_FINGERPRINT := NightShadeOS/$(NIGHTSHADE_MOD_VERSION)/$(TARGET_PRODUCT_SHORT)/$(NIGHTSHADE_BUILD_DATE)

NIGHTSHADE_PLATFORM_RELEASE_OR_CODENAME := 13

# NightShadeos System Version
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
  ro.nightshade.version=$(NIGHTSHADE_DISPLAY_VERSION) \
  ro.nightshade.build.status=$(NIGHTSHADE_BUILD_TYPE) \
  ro.modversion=$(NIGHTSHADE_MOD_VERSION) \
  ro.nightshade.build.date=$(NIGHTSHADE_BUILD_DATE) \
  ro.nightshade.buildtype=$(NIGHTSHADE_BUILD_TYPE) \
  ro.nightshade.fingerprint=$(NIGHTSHADE_FINGERPRINT) \
  ro.nightshade.device=$(NIGHTSHADE_BUILD) \
  ro.nightshade.platform_release_or_codename=$(NIGHTSHADE_PLATFORM_RELEASE_OR_CODENAME) \
  org.nightshade.version=$(NIGHTSHADEVERSION)
