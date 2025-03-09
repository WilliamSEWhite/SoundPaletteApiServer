using Microsoft.AspNetCore.Mvc;
using SoundPaletteApiServer.Facade;
using SoundPaletteApiServer.Models;

namespace SoundPaletteApiServer.Controllers
{
    public class TagController : BaseApiController
    {
        private readonly TagFacade tagFacade;

        public TagController(TagFacade _tagFacade)
        {
            tagFacade = _tagFacade;
        }

        /** global tag list */
        [HttpGet("get-tags")]
        public async Task<IActionResult> GetTags()
        {
            return Ok(await tagFacade.GetTags());
        }

        /** user tags */
        [HttpGet("get-user-tags/{id}")]
        public async Task<IActionResult> GetUserTags(int id)
        {
            return Ok(await tagFacade.GetUserTags(id));
        }

        [HttpPost("update-user-tags/{id}")]
        public async Task<IActionResult> UpdateUserTags(int id, [FromBody] List<TagModel> userTags)
        {
            return Ok(await tagFacade.UpdateUserTags(id, userTags));
        }
    }
}
