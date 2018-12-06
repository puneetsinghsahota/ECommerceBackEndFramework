namespace VCS
{
    /// <summary>
    /// Offers uploaded by the Vendors
    /// </summary>
    class Offers
    {
        int _offerId;
        string _offerReference;
        string _offerType;
        System.DateTime _offerValidity;
        Vendor _vendor;
        Catalog _catalog;

        /// <summary>
        /// Get/Set OfferType
        /// </summary>
        public string OfferReference { get => _offerReference; set => _offerReference = value; }

        /// <summary>
        /// Get /Set Catalog
        /// </summary>
        public Catalog Catalog { get => _catalog; set => _catalog = value; }
        /// <summary>
        /// Get /Set Offer Type
        /// </summary>
        public string OfferType { get => _offerType; set => _offerType = value; }
    }
}
