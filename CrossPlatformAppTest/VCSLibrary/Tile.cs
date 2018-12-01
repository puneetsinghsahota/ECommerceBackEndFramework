namespace VCS
{
    /// <summary>
    /// Tile is used to store the data being viewed on the UI and It is even used when a filter is applied to a Page
    /// Tile is the building block of a page inside our application
    /// </summary>
    
    abstract class Tile
    {
        /// <summary>
        /// URL of the image provided
        /// </summary>
        string _imageURL;

        /// <summary>
        /// Image fetched by the URl
        /// </summary>
        CustomImage _image;

        /// <summary>
        /// Get/Set Image URL
        /// </summary>
        public string ImageURL { get => _imageURL; set => _imageURL = value; }
        public CustomImage Image { get => _image; set => _image = value; }

       

    }
}
