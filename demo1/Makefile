VALAC_FLAGS = --target-glib=2.36

all: demo1

demo1: demo1.vala
	valac $(VALAC_FLAGS) -o $@ $<

clean:
	rm -rf demo1
