LOCAL_PATH := $(call my-dir)
ROOT_PATH := $(LOCAL_PATH)

# OpenSSL
openssl_subdirs := $(addprefix $(LOCAL_PATH)/openssl/,$(addsuffix /Android.mk, \
	crypto \
	ssl \
	))
include $(openssl_subdirs)

include $(CLEAR_VARS)
LOCAL_MODULE    := encryptor
include $(BUILD_SHARED_LIBRARY)
