using Microsoft.AspNetCore.Mvc;
using SoundPaletteApiServer.Facade;

namespace SoundPaletteApiServer.Controllers
{
    public class TagController : BaseApiController
    {
        private readonly TagFacade tagFacade;

        public TagController(TagFacade _tagFacade)
        {
            tagFacade = _tagFacade;
        }

        [HttpGet("get-tags")]
        public async Task<IActionResult> GetTags()
        {
            return Ok(await tagFacade.GetTags());
        }
    }
}
