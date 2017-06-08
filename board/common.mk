# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Bootloader
TARGET_NO_BOOTLOADER := true

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true

# Clang
USE_CLANG_PLATFORM_BUILD := true

# CPUsets
ENABLE_CPUSETS := true

# Dexopt
ifeq ($(HOST_OS),linux)
    WITH_DEXPREOPT := true
    WITH_DEXPREOPT_BOOT_IMG_ONLY := true
endif

# Malloc
MALLOC_IMPL := dlmalloc

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true

# GPS
USE_DEVICE_SPECIFIC_GPS := true

# SELinux
BOARD_SEPOLICY_DIRS += \
    $(DEVICE_PATH)/sepolicy

# CM Hardware
BOARD_USES_CYANOGEN_HARDWARE := true
BOARD_HARDWARE_CLASS += \
    hardware/cyanogen/cmhw
