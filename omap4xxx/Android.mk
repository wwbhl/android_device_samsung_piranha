ifeq ($(TARGET_BOARD_PLATFORM),omap4)

# only use the generic omap4 modules if no variant is declared
ifeq ($(strip $(TARGET_BOARD_PLATFORM_VARIANT)),)

LOCAL_PATH:= $(call my-dir)
HARDWARE_TI_OMAP4_BASE:= $(LOCAL_PATH)
OMAP4_DEBUG_MEMLEAK:= false

BUILD_HEAPTRACKED_SHARED_LIBRARY:=$(BUILD_SHARED_LIBRARY)
BUILD_HEAPTRACKED_EXECUTABLE:= $(BUILD_EXECUTABLE)

include $(call first-makefiles-under,$(LOCAL_PATH))

endif # ifeq ($(strip $(TARGET_BOARD_PLATFORM_VARIANT)),)
endif # ifeq ($(TARGET_BOARD_PLATFORM),omap4)
