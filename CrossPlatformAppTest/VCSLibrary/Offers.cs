namespace VCS
{
    /// <summary>
    /// Offers uploaded by the Vendors
    /// </summary>
    class Offers
    {
        int _offerId;
        string _offerType;
        System.DateTime _offerValidity;
        Vendor _vendor;
        Catalog _catalog;

        /// <summary>
        /// Get/Set OfferType
        /// </summary>
        public string OfferType { get => _offerType; set => _offerType = value; }

        /// <summary>
        /// Get /Set Catalog
        /// </summary>
        public Catalog Catalog { get => _catalog; set => _catalog = value; }
    }
}
