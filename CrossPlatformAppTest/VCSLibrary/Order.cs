namespace VCS
{
    /// <summary>
    /// Used to store Order Details of a Particular Order
    /// </summary>
    class Order
    {
        private int _orderId;
        private Customer _customer;
        private Cart _cart;
        private Vendor _vendor;
        private float _billAmount;

        /// <summary>
        ///  Get/Set OrderID
        /// </summary>
        public int OrderId { get => _orderId; set => _orderId = value; }

        /// <summary>
        ///  Get/Set Bill Amount
        /// </summary>
        public float BillAmount { get => _billAmount; set => _billAmount = value; }
        

        /// <summary>
        ///  Used to Create Order 
        ///  Takes in 2 Parameters :-
        ///     - @param - VCS.Cart cart - The cart ordered by the Customer
        ///     - @param - VCS.Customer customer - Customer Details 
        ///     
        /// Returns an Order Object
        /// </summary>
        public static Order CreateOrder(Cart cart, Customer customer, Vendor vendor)
        {
            Order order = new Order();
            order._vendor = vendor;
            order._cart = cart;
            order._customer = customer;
            return order;
        }
    }
}
