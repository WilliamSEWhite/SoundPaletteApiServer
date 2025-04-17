﻿using System.ComponentModel.DataAnnotations;

namespace SoundPaletteApiServer.DataModels
{
    public class tPostContent
    {
        [Key]
        public int PostContentId { get; set; }
        public int PostId { get; set; }
        public virtual tPost Post { get; } = null!;
        public string PostTextContent { get; set; }
        public string S3Token { get; set; }
        public string BackgroundColour { get; set; }
        public string FontColour { get; set; }
        public tPostContent(int postId, tPost post, string postTextContent, string s3Token, string backgroundColour, string fontColour)
        {
            PostId = postId;
            Post = post;
            PostTextContent = postTextContent;
            S3Token = s3Token;
            BackgroundColour = backgroundColour;
            FontColour = fontColour;
        }

        public tPostContent() { }
    }
}
