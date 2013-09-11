VALAC_FLAGS = --target-glib=2.36 -X -fPIC -X -shared
SRCS = demo4.vala
OBJS = libdemo4.so
TYPELIB = Demo4-0.1.typelib
GIR = Demo4-0.1.gir

all: $(OBJS) $(TYPELIB)

$(OBJS): $(SRCS)
	valac  -o $@ $< --gir=$(GIR) --library=demo4 $(VALAC_FLAGS)

$(TYPELIB): $(OBJS) $(GIR) $(SRCS)
	g-ir-compiler -o $@ --shared-library=$(OBJS) $(GIR)

clean:
	rm -rf $(OBJS) $(TYPELIB) $(GIR) *.vapi

install: $(OBJS) $(TYPELIB)
	sudo cp $(OBJS) /usr/lib/
	sudo cp $(TYPELIB) /usr/lib/girepository-1.0/

uninstall:
	sudo rm -rf /usr/lib/$(OBJS) /usr/lib/girepository-1.0/$(TYPELIB)
