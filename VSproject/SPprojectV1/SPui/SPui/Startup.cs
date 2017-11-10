using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(SPui.Startup))]
namespace SPui
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
