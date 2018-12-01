namespace VCS
{
    /// <summary>
    /// CustomImage which restricts the size of the image on the basis of sizze of the image required 
    /// </summary>
    public abstract class CustomImage
    {
        /// <summary>
        /// Image to be stored inside a Tile
        /// </summary>
        protected Xamarin.Forms.Image _img;

        /// <summary>
        /// Ratio of the Widht to Height of Arespective Image type depending on the Screen on which it needs to be displayed
        /// </summary>
        private int _widthToHeightRatio;

        /// <summary>
        /// Get/Set Width To Height Ratio of the Image
        /// </summary>
        public int WidthToHeightRatio { get => _widthToHeightRatio; set => _widthToHeightRatio = value; }

        /// <summary>
        /// Used To Fetch Image from the Server ---- -Overriden in the Child Classes        /// </summary>
        /// <param name="url"> URL OF THE IMAGE</param>
        /// <returns></returns>
        public abstract string FetchImage(string url);
    }
}
