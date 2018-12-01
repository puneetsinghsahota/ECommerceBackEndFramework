namespace VCS
{
    /// <summary>
    /// This class stores an instance of the Invoice Generated as part of the Order
    /// </summary>
    class Invoice
    {
        int _invoiceId = 0;
        BillingInfo _billingInfo;
        Address _deliveryAddress;
        Order _order;

        public int InvoiceId { get => _invoiceId; set => _invoiceId = value; }


        /// <summary>
        /// A static method which generates an Invoice for a particular order
        /// </summary>
        /// <param name="billingInfo"></param>
        /// <param name="order"></param>
        /// <param name="deliveryAddress"></param>
        /// <returns></returns>
        static Invoice GenerateInvoice(BillingInfo billingInfo,Order order,Address deliveryAddress)

        {
            Invoice invoice = new Invoice();
            invoice._order = order;
            invoice._billingInfo = billingInfo;
            invoice._deliveryAddress = deliveryAddress;
            return invoice;
        }

        /// <summary>
        /// Registers and Confirms the Order
        /// </summary>
        /// <returns>Invoice ID</returns>
        int RegisterInvoice()
        {
            return _invoiceId;
        }


        /// <summary>
        /// Sends Invoice TO THE Customer over E-Mail
        /// Returns true if succesfull
        /// </summary>
        bool SendInvoice()
        {
            //TODO::Call the sending routine after generating A pdf
            return true;
        }

        
    }
}
