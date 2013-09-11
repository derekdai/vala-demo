VALAC_FLAGS = --target-glib=2.36 --pkg=gtk+-3.0
SRCS = demo2.vala
OBJS = demo2

all: $(OBJS)

$(OBJS): $(SRCS)
	valac $(VALAC_FLAGS) -o $@ $<

clean:
	rm -rf $(OBJS)
