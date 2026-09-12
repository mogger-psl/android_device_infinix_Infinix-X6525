#
# Copyright (C) 2025 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/infinix/X6525

# Heredar de crDroid
$(call inherit-product, vendor/crdroid/config/common.mk)

# Heredar del vendor tree (cuando lo tengas listo)
# $(call inherit-product, vendor/infinix/X6525/X6525-vendor.mk)

# API level
PRODUCT_SHIPPING_API_LEVEL := 33
PRODUCT_TARGET_VNDK_VERSION := 33

# A/B OTA
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service \
    bootctrl.ums9230

PRODUCT_STATIC_BOOT_CONTROL_HAL := \
    bootctrl.ums9230 \
    libgptutils \
    libz \
    libcutils

# OTA packages
PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload

# Paquetes esenciales
PRODUCT_PACKAGES += \
    Camera2 \
    Snap

# Propiedades del sistema
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=320 \
    ro.hardware.keystore=sprd \
    ro.hardware.gatekeeper=sprd

# Audio
PRODUCT_PACKAGES += \
    audio.primary.ums9230 \
    audio.a2dp.default

# Cámara
PRODUCT_PACKAGES += \
    libcamera2ndk_vendor

# Gráficos
PRODUCT_PACKAGES += \
    libGLES_android
