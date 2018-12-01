
namespace VCS
{
    /// <summary>
    /// This class defines the minimum and maximum size of an image as per the requirement of an Advertisement Image on HomeScreen
    /// </summary>
    class AdvertisementMapImage : CustomImage
    {
        public AdvertisementMapImage()
        {
            WidthToHeightRatio = 4;
        }
        public override string FetchImage(string imgURL)
        {
            throw new System.NotImplementedException();
        }
    }
}
