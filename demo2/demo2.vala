using Gtk;

class HelloWorld
{
    public static int main(string[] args)
    {
        Gtk.init(ref args);

        Widget win = new Gtk.Window(Gtk.WindowType.TOPLEVEL);
        win.destroy.connect(Gtk.main_quit);
        (win as Gtk.Window).set_title("Hello Gtk+-3.0");
        win.show();
        
        Gtk.main();

        return 0;
    }
}
