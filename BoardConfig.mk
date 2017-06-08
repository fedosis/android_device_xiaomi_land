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

# Inherit common & cyanogen board fragments
include $(BOARD_PATH)/common.mk

# Inherit QCOM board fragments
include $(BOARD_PATH)/qcom.mk

# Inherit the proprietary files
-include vendor/xiaomi/land/BoardConfigVendor.mk
