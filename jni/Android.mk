LOCAL_PATH := $(call my-dir)

CORE_DIR := $(LOCAL_PATH)/..

include $(CLEAR_VARS)
LOCAL_MODULE    := retro
LOCAL_SRC_FILES := \
	$(CORE_DIR)/src/flashem_libretro.c \
	$(CORE_DIR)/src/vflash.c \
	$(CORE_DIR)/src/hw.c \
	$(CORE_DIR)/src/zevio_dsp.c \
	$(CORE_DIR)/src/zsp400.c \
	$(CORE_DIR)/src/midi.c \
	$(CORE_DIR)/src/cdda_dma.c \
	$(CORE_DIR)/src/arm9.c \
	$(CORE_DIR)/src/cp15.c \
	$(CORE_DIR)/src/cdrom.c \
	$(CORE_DIR)/src/cdsp.c \
	$(CORE_DIR)/src/ge.c \
	$(CORE_DIR)/src/audio.c \
	$(CORE_DIR)/src/disasm.c
LOCAL_C_INCLUDES := $(CORE_DIR)/src
LOCAL_CFLAGS    := -O2 -DNDEBUG -std=gnu11 -DFLASHEM_NO_SDL
LOCAL_LDFLAGS   := -Wl,-version-script=$(CORE_DIR)/link.T -Wl,-Bsymbolic
LOCAL_LDLIBS    := -lm
include $(BUILD_SHARED_LIBRARY)
