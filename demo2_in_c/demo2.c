#include <gtk/gtk.h>

int main(int argc, char *args[])
{
    gtk_init(&argc, &args);

    GtkWidget *win = gtk_window_new(GTK_WINDOW_TOPLEVEL);
    g_signal_connect(win, "destroy", gtk_main_quit, NULL);
    gtk_window_set_title(GTK_WINDOW(win), "Hello Gtk+-3.0");
    gtk_widget_show(win);

    gtk_main();

    return 0;
}
