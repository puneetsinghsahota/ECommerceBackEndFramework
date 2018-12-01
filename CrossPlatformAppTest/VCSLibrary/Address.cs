namespace VCS
{
    /// <summary>
    /// Used to store address of a Client
    /// </summary>
    class Address
    {
        private string _postCode;
        private string _streetName;
        private string _houseNumber;
        private string _city;
        private string _country;
        private string _county;

        /// <summary>
        /// Get/Set StreetName
        /// </summary>
        public string StreetName { get => _streetName; set => _streetName = value; }

        /// <summary>
        /// Get/Set House Number
        /// </summary>
        public string HouseNumber { get => _houseNumber; set => _houseNumber = value; }

        /// <summary>
        /// Get/Set City
        /// </summary>
        public string City { get => _city; set => _city = value; }

        /// <summary>
        /// Get/Set Country
        /// </summary>
        public string Country { get => _country; set => _country = value; }

        /// <summary>
        /// Get/Set County
        /// </summary>
        public string County { get => _county; set => _county = value; }

        /// <summary>
        /// Get/Set PostCode
        /// </summary>
        public string PostCode { get => _postCode; set => _postCode = value; }
    }

}
