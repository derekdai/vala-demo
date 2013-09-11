from gi.repository import GObject
from gi.repository import Demo4

class Foo2(Demo4.Foo):
    def __init__(self):
        Demo4.Foo.__init__(self)

    def do_bar(self):
        print("Bla.bar()")

foo2 = Foo2()
foo2.bar()
