using Microsoft.AspNetCore.Mvc;
using SoundPaletteApiServer.Data;
using SoundPaletteApiServer.Models;

namespace SoundPaletteApiServer.DbHelpers
{
    public abstract class DbHelperBase
    {
        protected SPContext Context { get; }

        public DbHelperBase(SPContext context)
        {
            Context = context;
        }
    }
}
