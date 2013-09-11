VALAC_FLAGS = --target-glib=2.36 --pkg=gstreamer-0.10
SRCS = demo3.vala
OBJS = demo3

all: $(OBJS)

$(OBJS): $(SRCS)
	valac $(VALAC_FLAGS) -o $@ $<

clean:
	rm -rf $(OBJS)
