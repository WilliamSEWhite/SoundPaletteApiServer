using SoundPaletteApiServer.Data;

namespace SoundPaletteApiServer.DbHelpers
{
    public class NotificationDbHelper : DbHelperBase
    {
        private readonly IConfiguration _configuration;

        public NotificationDbHelper(SPContext context, IConfiguration configuration)
            : base(context)
        {
            _configuration = configuration;
        }
    }
}
