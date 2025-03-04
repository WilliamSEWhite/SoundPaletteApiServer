
using Microsoft.Extensions.Configuration;
using SoundPaletteApiServer.Data;
using SoundPaletteApiServer.DataModels;
using SoundPaletteApiServer.Models;

namespace SoundPaletteApiServer.DbHelpers
{
    public class PostDbHelper : DbHelperBase
    {
        private readonly IConfiguration _configuration;

        public PostDbHelper(SPContext context, IConfiguration configuration) : base(context)
        {
            _configuration = configuration;

        }

        public async Task CreatePost(NewPostModel newPost)
        {
            var postToAdd = new tPost()
            {
                UserId = newPost.UserId,
                PostTypeId = newPost.PostTypeId,
                Caption = newPost.Caption,
                IsPremium = newPost.IsPremium,
                IsMature = newPost.IsMature,
                IsDeleted = false,
                tPostTags = newPost.PostTags.Select(o => new tPostTag(0, o.TagId)).ToList(),
                tPostContent = CreatePostContent(newPost),
                CreatedDate = newPost.CreatedDate,
                PublishDate = newPost.PublishDate
            };
            Context.tPosts.Add(postToAdd);
            await Context.SaveChangesAsync();
        }

        private tPostContent CreatePostContent(NewPostModel newPost)
        {
            tPostContent content = new tPostContent();
            switch (newPost.PostTypeId)
            {
                case 1:
                    content.PostTextContent = newPost.PostTextContent;
                        break;
            }
            return content;
        }

        public async Task DeletePost(int postId, int userId)
        {
            var postToDelete = Context.tPosts.Where(o => o.PostId == postId).FirstOrDefault();
            if(postToDelete != null && userId == postToDelete.UserId)
            {
                postToDelete.IsDeleted = true;
                await Context.SaveChangesAsync();
            }
        }

    }
}
