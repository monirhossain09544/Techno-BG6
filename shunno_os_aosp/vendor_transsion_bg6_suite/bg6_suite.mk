# TECNO BG6 Official App Suite Integration (Deletes Stock Dialer & Contacts, Disables Stock Files Launcher)
PRODUCT_PACKAGES += \
    SmartCaller \
    TranssionFileManager \
    TranssionNote \
    KernelGnssSettings

PRODUCT_COPY_FILES += \
    vendor/transsion/bg6_suite/launcher_documentsui_icon_disable.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/launcher_documentsui_icon_disable.xml \
    vendor/transsion/bg6_suite/com.sh.smart.caller.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/com.sh.smart.caller.xml
