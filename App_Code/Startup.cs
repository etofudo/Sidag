using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(DaNew.Startup))]
namespace DaNew
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
