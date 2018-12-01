namespace VCS
{
    /// <summary>
    /// Cart is responsible to hold allthe products which a User wants to purchase
    /// </summary>
    class Cart
    {
        string _cartId;
        System.Collections.Generic.List<string> _productIDList;
        System.Collections.Generic.Dictionary<string, int> _productQuantityMap;

        public string CartId { get => _cartId; set => _cartId = value; }
        public System.Collections.Generic.List<string> ProductIDList { get => _productIDList; set => _productIDList = value; }
        public System.Collections.Generic.Dictionary<string, int> ProductQuantityMap { get => _productQuantityMap; set => _productQuantityMap = value; }

        /// <summary>
        /// Used to add a product to the cart
        /// </summary>
        /// <param name="productID">Product ID Of the Product to be added</param>
        bool AddToCart(string productID)
        {
            if (ProductIDList.Contains(productID))
            {
                ProductQuantityMap[productID]++;
            }
            else
            {
                ProductIDList.Add(productID);
                ProductQuantityMap[productID] = 1;
            }
            return true;
        }

        /// <summary>
        /// Used to Remove Products from the Cart 
        /// </summary>
        /// <param name="productID">Product ID oF THE pRODUCT TO BE REMOVED</param>
        /// <returns></returns>
        bool RemoveFromCart(string productID)
        {
            if(ProductIDList.Contains(productID))
            {
                int quantity = ProductQuantityMap[productID];
                quantity--;
                if(quantity == 0)
                {
                    ProductIDList.Remove(productID);
                }
                else
                {
                    ProductQuantityMap[productID] = quantity;
                }
            }
            return true;
        }
        
    }
}
