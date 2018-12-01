namespace VCS
{
    /// <summary>
    /// Used to store an Image For ShopMap Page
    /// </summary>
    class ShopMapImage : CustomImage
    {
        ShopMapImage()
        {
            WidthToHeightRatio = 4;
        }
        public override string FetchImage(string imgURL)
        {
            throw new System.NotImplementedException();
        }
    }
}
