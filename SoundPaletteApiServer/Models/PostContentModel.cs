﻿using SoundPaletteApiServer.DataModels;

namespace SoundPaletteApiServer.Models
{
    public class PostContentModel
    {
        public string PostTextContent { get; set; }
        public string BackgroundColour { get; set; }
        public string FontColour { get; set; }

        public PostContentModel()
        {

        }
        public PostContentModel(string postTextContent, string backgroundColour, string fontColour)
        {
            PostTextContent = postTextContent;
            BackgroundColour = backgroundColour;
            FontColour = fontColour;
        }
        public PostContentModel(tPostContent content)
        {
            PostTextContent = content.PostTextContent;
            BackgroundColour = content.BackgroundColour;
            FontColour = content.FontColour;
        }
    }
}
