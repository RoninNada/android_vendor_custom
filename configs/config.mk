# Copyright (C) 2017-2018 crDroid Android Project
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
LOCAL_PATH := $(call my-dir)

# Required packages
PRODUCT_PACKAGES += \
    Turbo \
    Gallery2 \
    OmniJaws \
    OmniStyle \
    F-Droid \
    permissions_org.fdroid.fdroid.privileged.xml \
    F-DroidPrivilegedExtension \
    crDroidFonts \
    LockClock

# DU Utils Library
PRODUCT_BOOT_JARS += \
   org.dirtyunicorns.utils

PRODUCT_PACKAGES += \
   org.dirtyunicorns.utils

#Copy extra files
PRODUCT_COPY_FILES += \
    vendor/custom/prebuilt/etc/additional_fdroid_repos.xml:system/etc/org.fdroid.fdroid/additional_repos.xml \
    vendor/custom/prebuilt/etc/additional_fdroid_repos.xml:system/etc/org.fdroid.basic/additional_repos.xml

PRODUCT_COPY_FILES += \
    vendor/custom/prebuilt/addon.d/80-fdroid.sh:system/addon.d/80-fdroid.sh

DEVICE_PACKAGE_OVERLAYS += vendor/custom/overlay/common
