#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := $(LOCAL_PATH)
PRODUCT_PATH := device/xiaomi/land/product

# Overlay
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Include common product fragments
include $(PRODUCT_PATH)/common/ant.mk
include $(PRODUCT_PATH)/common/audio.mk
include $(PRODUCT_PATH)/common/bluetooth.mk
include $(PRODUCT_PATH)/common/bluetooth-le.mk
include $(PRODUCT_PATH)/common/consumerir.mk
include $(PRODUCT_PATH)/common/fingerprint.mk
include $(PRODUCT_PATH)/common/fm.mk
include $(PRODUCT_PATH)/common/gello.mk
include $(PRODUCT_PATH)/common/gps.mk
include $(PRODUCT_PATH)/common/lights.mk
include $(PRODUCT_PATH)/common/media.mk
include $(PRODUCT_PATH)/common/misc.mk
include $(PRODUCT_PATH)/common/snap.mk
include $(PRODUCT_PATH)/common/wifi.mk

# Include QCOM product fragments
include $(PRODUCT_PATH)/qcom/audio.mk
include $(PRODUCT_PATH)/qcom/cne.mk
include $(PRODUCT_PATH)/qcom/display.mk
include $(PRODUCT_PATH)/qcom/fm.mk
include $(PRODUCT_PATH)/qcom/gps.mk
include $(PRODUCT_PATH)/qcom/init.mk
include $(PRODUCT_PATH)/qcom/media.mk
include $(PRODUCT_PATH)/qcom/net.mk
include $(PRODUCT_PATH)/qcom/power.mk
include $(PRODUCT_PATH)/qcom/radio.mk
include $(PRODUCT_PATH)/qcom/sensors.mk
include $(PRODUCT_PATH)/qcom/usb.mk
include $(PRODUCT_PATH)/qcom/wifi.mk

# Include Cyanogen product fragments
include $(PRODUCT_PATH)/cyanogen/livedisplay.mk

# Include device-specific product fragments
include $(LOCAL_PATH)/product/*.mk

# Inherit proprietary files
$(call inherit-product-if-exists, vendor/xiaomi/land/land-vendor.mk)
