#
# Copyright (C) 2017 The LineageOS Project
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

DEVICE_PATH := device/xiaomi/land
BOARD_PATH := device/xiaomi/land/board

# Land Device
include $(DEVICE_PATH)/land.mk

# Inherit common board fragments
include $(BOARD_PATH)/common/bluetooth.mk
include $(BOARD_PATH)/common/bootloader.mk
include $(BOARD_PATH)/common/camera.mk
include $(BOARD_PATH)/common/clang.mk
include $(BOARD_PATH)/common/cpusets.mk
include $(BOARD_PATH)/common/dexopt.mk
include $(BOARD_PATH)/common/dlmalloc.mk
include $(BOARD_PATH)/common/filesystem.mk
include $(BOARD_PATH)/common/gps.mk
include $(BOARD_PATH)/common/sepolicy.mk

# Inherit QCOM board fragments
include $(BOARD_PATH)/qcom/bluetooth.mk
include $(BOARD_PATH)/qcom/bootloader.mk
include $(BOARD_PATH)/qcom/cne.mk
include $(BOARD_PATH)/qcom/display.mk
include $(BOARD_PATH)/qcom/encryption.mk
include $(BOARD_PATH)/qcom/fm.mk
include $(BOARD_PATH)/qcom/gps.mk
include $(BOARD_PATH)/qcom/per-mgr.mk
include $(BOARD_PATH)/qcom/platform.mk
include $(BOARD_PATH)/qcom/power.mk
include $(BOARD_PATH)/qcom/recovery.mk
include $(BOARD_PATH)/qcom/ril.mk
include $(BOARD_PATH)/qcom/sepolicy.mk
include $(BOARD_PATH)/qcom/time.mk

# Inherit Cyanogen board fragments
include $(BOARD_PATH)/cyanogen/hardware.mk

# Inherit the proprietary files
-include vendor/xiaomi/land/BoardConfigVendor.mk
