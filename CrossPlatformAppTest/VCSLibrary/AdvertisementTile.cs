using System;
using System.Collections.Generic;
using System.Text;

namespace VCS
{
    /// <summary>
    /// Advertisemnt Tile which is used to show Advertisements and Offers on the Home Screen 
    /// Might be a video or an Image
    /// /// </summary>
    class AdvertisementTile : Tile
    {
        string _offerID;
        string _videoURL;
        AdvertisementTile()
        {
            bool isVideoTile = true;
            //TODO::TOBE FETCHED FROM DATABASE
            if (isVideoTile)
            {
                _videoURL = "";
            }
            else
            {
                Image = new AdvertisementMapImage();
            }
        }
    }
}
