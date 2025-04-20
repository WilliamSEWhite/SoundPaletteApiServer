using Microsoft.AspNetCore.Mvc;
using SoundPaletteApiServer.Facade;
using SoundPaletteApiServer.Models;

namespace SoundPaletteApiServer.Controllers
{

    //this class acts as an entry point for all tag related services
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
        }//end GetTags

        /** user tags */
        [HttpGet("get-user-tags/{id}")]
        public async Task<IActionResult> GetUserTags(int id)
        {
            return Ok(await tagFacade.GetUserTags(id));
        }//end GetUserTags

        //update tags followed by user
        [HttpPost("update-user-tags/{id}")]
        public async Task<IActionResult> UpdateUserTags(int id, [FromBody] List<TagModel> userTags)
        {
            return Ok(await tagFacade.UpdateUserTags(id, userTags));
        }//end UpdateUserTags

        //return a list of all tags that contain search term
        [HttpGet("search-tags")]
        public async Task<IActionResult> SearchTags([FromQuery]string searchTerm)
        {
            return Ok(await tagFacade.SearchTags(searchTerm));
        }//end SearchTags
    }
}
