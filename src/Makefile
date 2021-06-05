# Project: SDLPoP

CC = psp-gcc
RM = rm -f

TARGET = SDLPop_PSP

HFILES = common.h config.h data.h proto.h types.h
OBJS = main.o data.o seg000.o seg001.o seg002.o seg003.o seg004.o seg005.o seg006.o seg007.o seg008.o seg009.o seqtbl.o replay.o options.o lighting.o screenshot.o menu.o midi.o opl3.o stb_vorbis.o
BIN = ../prince


CPPFLAGS += -Wall -D_GNU_SOURCE=1
CFLAGS += -std=gnu99 -O2 -G0

LIBS := -lSDL2 -lSDL2_image -lpng -ljpeg -lGL -lGLU -lglut -lz -lpspvfpu -lpsphprm -lpspsdk -lpspctrl -lpspumd -lpsprtc \
       -lpsppower -lpspgum -lpspgu -lpspaudiolib -lpspaudio -lpsphttp -lpspssl -lpspwlan \
	   -lpspnet_adhocmatching -lpspnet_adhoc -lpspnet_adhocctl -lm -lpspvram


EXTRA_TARGETS = EBOOT.PBP
PSP_EBOOT_TITLE = SDLPop_PSP

PSPSDK=$(shell psp-config --pspsdk-path)
include $(PSPSDK)/lib/build.mak

clean:
	$(RM) $(OBJS) $(BIN)

install:
	./install.sh

uninstall:
	./uninstall.sh

$(BIN): $(OBJ)
	$(CC) $(LDFLAGS) $(OBJ) -o $@ $(LIBS) -lm

%.o: %.c $(HFILES)
	$(CC) $(CPPFLAGS) $(CFLAGS) $(LDFLAGS) -c $<

.PHONY: all clean

