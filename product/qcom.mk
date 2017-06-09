##QCOM
# Audio
PRODUCT_PACKAGES += \
    audio.primary.$(TARGET_BOARD_PLATFORM) \
    audiod \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing

# CNE
PRODUCT_PROPERTY_OVERRIDES += \
    persist.cne.feature=1

# Display
PRODUCT_PACKAGES += \
    copybit.$(TARGET_BOARD_PLATFORM) \
    gralloc.$(TARGET_BOARD_PLATFORM) \
    hwcomposer.$(TARGET_BOARD_PLATFORM) \
    libtinyxml \
    memtrack.$(TARGET_BOARD_PLATFORM)

# FM
PRODUCT_PACKAGES += \
    FM2 \
    libqcomfm_jni \
    qcom.fmradio

# GPS
PRODUCT_PACKAGES += \
    gps.default \
    libcurl

# Init scripts
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.rc \
    init.recovery.qcom.rc \
    ueventd.qcom.rc

# Media
PRODUCT_PACKAGES += \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw

# NET
# IPv6
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes

# QMI
PRODUCT_PACKAGES += \
    libjson

# Power HAL
PRODUCT_PACKAGES += \
    power.$(TARGET_BOARD_PLATFORM)

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    persist.camera.cpp.duplication=false \
    persist.camera.HAL3.enabled=1

# ZRAM
PRODUCT_PROPERTY_OVERRIDES += \
    camera.hal1.packagelist=com.skype.raider,com.google.android.talk \
    media.camera.ts.monotonic=0 \
    persist.camera.gyro.android=1 \
    persist.camera.is_type=1

# QCOM_Display
# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    debug.gralloc.enable_fb_ubwc=1 \
    debug.enable.sglscale=1 \
    debug.mdpcomp.logs=0 \
    dev.pm.dyn_samplingrate=1 \
    persist.demo.hdmirotationlock=false \
    persist.hwc.enable_vds=1 \
    persist.hwc.mdpcomp.enable=true

# QCOM_FM
# Init
PRODUCT_PACKAGES += \
    init.qcom.fm.sh

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.fm.transmitter=false

# QCOM_GPS
PRODUCT_BOOT_JARS += \
    com.qti.location.sdk

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    persist.gps.qc_nlp_in_use=1 \
    persist.loc.nlp_name=com.qualcomm.location \
    ro.gps.agps_provider=1

# QCOM_PERF
# Init scripts
PRODUCT_PACKAGES += \
    init.qcom.power.rc

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.am.reschedule_service=true \
    ro.core_ctl_min_cpu=2 \
    ro.core_ctl_max_cpu=4 \
    ro.vendor.at_library=libqti-at.so \
    ro.vendor.extension_library=libqti-perfd-client.so \
    ro.vendor.gt_library=libqti-gt.so

# RADIO
# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

PRODUCT_PROPERTY_OVERRIDES += \
    DEVICE_PROVISIONED=1 \
    persist.data.iwlan.enable=false \
    persist.data.mode=concurrent \
    persist.data.netmgrd.qos.enable=true \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1 \
    persist.radio.DROPSETENABLE=1 \
    persist.radio.apm_sim_not_pwdn=1 \
    persist.radio.custom_ecc=1 \
    persist.radio.force_on_dc=true \
    persist.radio.ignore_dom_time=5 \
    persist.radio.mt_sms_ack=20 \
    persist.data.qmi.adb_logmask=0 \
    persist.radio.multisim.config=dsds \
    persist.radio.rat_on=combine \
    persist.radio.sib16_support=1 \
    ril.subscription.types=NV,RUIM \
    rild.libpath=/vendor/lib64/libril-qc-qmi-1.so \
    ro.ct.device.model=XMP-2016030 \
    ro.telephony.call_ring.multiple=false \
    ro.telephony.default_network=20 \
    ro.use_data_netmgrd=true \
    service.qti.ims.enabled=1 \
    telephony.lteOnCdmaDevice=1

PRODUCT_PACKAGES += \
    libcnefeatureconfig \
    librmnetctl

# Sensors
PRODUCT_PACKAGES += \
    sensors.$(TARGET_BOARD_PLATFORM)

# Init scripts
PRODUCT_PACKAGES += \
    init.qcom.usb.rc

# Wi-Fi
PRODUCT_PACKAGES += \
    libQWiFiSoftApCfg

