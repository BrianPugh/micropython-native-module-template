ARCH ?= x64
MOD = pythontemplate
SRC := $(shell find src -name "*.c" -o -name "*.py")

# To include additional directories add it to CFLAGS. E.g:
# CFLAGS += -Isrc/foo

include $(MPY_DIR)/py/dynruntime.mk
