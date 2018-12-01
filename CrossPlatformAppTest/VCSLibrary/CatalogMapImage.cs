using System;
using System.Collections.Generic;
using System.Text;
using Xamarin.Forms;

namespace VCS
{
    /// <summary>
    /// 
    /// </summary>
    class CatalogMapImage : CustomImage
    {
        CatalogMapImage()
        {
            WidthToHeightRatio = 4;
        }
        public override string FetchImage(string imgURL)
        {
            throw new NotImplementedException();
        }
    }
}
