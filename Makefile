# Project: SDLPoP

TARGET = SDLPop_PSP
HFILES = src/common.h src/config.h src/data.h src/proto.h src/types.h
OBJS = src/main.o src/data.o src/seg000.o src/seg001.o src/seg002.o src/seg003.o src/seg004.o src/seg005.o src/seg006.o src/seg007.o src/seg008.o src/seg009.o src/seqtbl.o src/replay.o src/options.o src/lighting.o src/screenshot.o src/menu.o src/midi.o src/opl3.o src/stb_vorbis.o

PSP_LARGE_MEMORY = 1

INCDIR = include
CFLAGS = -O -G0 -Wall
CXXFLAGS = $(CFLAGS) -fno-exceptions -fno-rtti 
ASFLAGS = $(CFLAGS)

LIBDIR = libs
LDFLAGS = -nostartfiles
LIBS = -lSDL2 -lSDL2_image -lpng -ljpeg -lGL -lGLU -lglut -lz -lpspvfpu -lpsphprm -lpspsdk -lpspctrl -lpspumd -lpsprtc \
       -lpsppower -lpspgum -lpspgu -lpspaudiolib -lpspaudio -lpsphttp -lpspssl -lpspwlan \
	   -lpspnet_adhocmatching -lpspnet_adhoc -lpspnet_adhocctl -lm -lpspvram

EXTRA_TARGETS = EBOOT.PBP
PSP_EBOOT_TITLE = SDLPop_PSP

PSPSDK=$(shell psp-config --pspsdk-path)
include $(PSPSDK)/lib/build.mak