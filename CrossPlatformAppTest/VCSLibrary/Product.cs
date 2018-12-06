namespace VCS
{
    /// <summary>
    /// Used to keep Details of A Particular Product
    /// </summary>
    class Product
    {
        int _productID;
        string _productName;
        string _productCategory;
        System.Collections.Generic.List<Tag> _productTags;
        string _productDescription;
        string _color;
        float _productPrice;
        int _productQuantity;

        /// <summary>
        /// Stores details about the Vendor of this Product
        /// </summary>
        Vendor _vendor;

        /// <summary>
        /// Get/Set Product ID
        /// </summary>
        public int ProductID { get => _productID; set => _productID = value; }

        /// <summary>
        /// Get/Set ProductName
        /// </summary>
        public string ProductName { get => _productName; set => _productName = value; }

        /// <summary>
        /// Get/Set Product Category
        /// </summary>
        public string ProductCategory { get => _productCategory; set => _productCategory = value; }

        /// <summary>
        /// Get/Set Product Description
        /// </summary>
        public string ProductDescription { get => _productDescription; set => _productDescription = value; }

        

        
        /// <summary>
        /// Get/Set Product Price
        /// </summary>
        public float ProductPrice { get => _productPrice; set => _productPrice = value; }

        /// <summary>
        /// Get/Set Product Quantity
        /// </summary>
        public int ProductQuantity { get => _productQuantity; set => _productQuantity = value; }

        /// <summary>
        /// Get/Set Product Tags
        /// </summary>
        public System.Collections.Generic.List<Tag> ProductTags { get => _productTags; set => _productTags = value; }

        /// <summary>
        /// Get/Set Color Id
        /// </summary>
        public string Color { get => _color; set => _color = value; }
    }
}
