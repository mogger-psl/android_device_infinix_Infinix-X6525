#
# Copyright (C) 2024 The crDroid Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Heredar de la configuración común de crDroid
$(call inherit-product, vendor/crdroid/config/common_full_phone.mk)

# Heredar de la configuración específica de tu dispositivo
$(call inherit-product, device/infinix/X6525/device.mk)

# Datos que aparecerán en los ajustes
PRODUCT_NAME := crdroid_X6525
PRODUCT_DEVICE := X6525
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix Smart 8
PRODUCT_MANUFACTURER := Infinix

# Versión de crDroid (Android 13 -> crDroid 9.x)
# Si tu rama ya define CR_VERSION en common.mk, puedes eliminar estas líneas.
CR_VERSION := 9.11
CR_VERSION_PROP := 9.11
