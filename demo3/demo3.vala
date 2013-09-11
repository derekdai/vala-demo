using Gst;

class HelloWorld
{
    public static int main(string[] args)
    {
        Gst.init(ref args);

        MainLoop loop = new MainLoop();

        Element e = Gst.ElementFactory.make("playbin2", "playbin");
        e.set("uri", "file://" + Environment.get_current_dir() + "/demo3.mp4");
        e.set_state(Gst.State.PLAYING);

        Bus b = e.get_bus();
        b.add_signal_watch();
        b.message.connect((b, m) => {
            if(Gst.MessageType.EOS == m.type) {
                e.set_state(Gst.State.NULL);
                loop.quit();
            }
        });

        loop.run();

        return 0;
    }
}
