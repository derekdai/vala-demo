PKGS = gtk+-3.0
CFLAGS = $(shell pkg-config --cflags $(PKGS))
LIBS = $(shell pkg-config --libs $(PKGS))
SRCS = demo2.c
OBJS = demo2

all: $(OBJS)

$(OBJS): $(SRCS)
	$(CC) -o $@ $< $(shell pkg-config --cflags --libs $(PKGS)) 

clean:
	rm -rf $(OBJS)
