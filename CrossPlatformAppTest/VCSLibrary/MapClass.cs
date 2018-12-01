namespace VCS
{
    /// <summary>
    /// An abstract class to make maps for multiple UI Pages 
    /// </summary>
    public abstract class MapClass
    {
        /// <summary>
        /// URLMap is a map of Tile ID to the URL of Respective Image inside it 
        /// </summary>
        private System.Collections.Generic.Dictionary<int, string> _tileImageURLMap;

        /// <summary>
        /// Tile Map is a map of Tile ID to an Actual Tile
        /// </summary>
        private System.Collections.Generic.Dictionary<int, Tile> _tileMap;
        
        /// <summary>
        /// Get Image URL OF the primary image of the Tile
        /// </summary>
        /// <param name="tileID"></param>
        /// <returns></returns>
        public string GetImageURL(int tileID)
        {
            string URL = "";
            return URL;
        }
        /// <summary>
        /// Overriden in Child Classes
        /// </summary>
        public abstract void GenerateMap();

    }
}
