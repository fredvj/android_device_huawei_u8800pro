# Copyright (C) 2011 The Android Open Source Project
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

$(call inherit-product-if-exists, vendor/huawei/u8800pro/u8800pro-vendor.mk)
$(call inherit-product, device/huawei/msm7x30-common/common.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/u8800pro/overlay


# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# init
PRODUCT_COPY_FILES += \
    device/huawei/u8800pro/root/init.qcom.sh:root/init.qcom.sh

# fix fps
PRODUCT_COPY_FILES += \
    device/huawei/u8800pro/prebuilt/20uncapfps:system/etc/init.d/20uncapfps

# Wi-Fi Modules
PRODUCT_COPY_FILES += \
    device/huawei/u8800pro/prebuilt/bcm4329.ko:system/lib/modules/bcm4329.ko

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := huawei_u8800pro
PRODUCT_DEVICE := u8800pro
PRODUCT_BRAND := Huawei
PRODUCT_MANUFACTURER := Huawei
PRODUCT_MODEL := U8800Pro
