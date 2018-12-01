namespace VCS
{
    /// <summary>
        /// This Class is used to Store Information about a particular Vendor
    /// </summary>
    class Vendor
    {
      
        private int _vendorId;
        private string _vendorName;
        private string _vendorContactNo;
        private string _vendorDescription;
        private string _vendorEmail;
        private string _vendorAddress;
        

        /// <summary>
        /// Get/Set VendorId
        /// </summary>
        public int VendorId { get => _vendorId; set => _vendorId = value; }

        /// <summary>
        /// Get/Set VendorName
        /// </summary>
        public string VendorName { get => _vendorName; set => _vendorName = value; }

        /// <summary>
        /// Get/Set VendorContactNo
        /// </summary>
        public string VendorContactNo { get => _vendorContactNo; set => _vendorContactNo = value; }

        /// <summary>
        /// Get/Set VendorDescription
        /// </summary>
        public string VendorDescription { get => _vendorDescription; set => _vendorDescription = value; }

        /// <summary>
        /// Get/Set VendorEmail
        /// </summary>
        public string VendorEmail { get => _vendorEmail; set => _vendorEmail = value; }

        /// <summary>
        /// Get/Set VendorAddress
        /// </summary>
        public string VendorAddress { get => _vendorAddress; set => _vendorAddress = value; }
        
    }
}