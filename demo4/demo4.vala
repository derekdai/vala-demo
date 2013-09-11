[CCode (gir_namespace = "Demo4", gir_version = "1.0")]
namespace Demo4
{
    public class Foo : GLib.Object
    {
        public virtual void bar()
        {
            message("demo4.Foo.bar()");
        }
    }
}
