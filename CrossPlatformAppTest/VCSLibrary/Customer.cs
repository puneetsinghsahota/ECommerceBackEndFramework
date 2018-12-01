using System;
using System.Collections.Generic;
using System.Text;

namespace VCS
{
    /// <summary>
    /// Information regarding the User is stored inside this Class
    /// </summary>
    class Customer
    {
        string _customerID;
        string _customerFirstName;
        string _customerLastName;
        string _customerPhone;
        string _custEmail;
        Address _custAddress;

        public string CustomerID { get => _customerID; set => _customerID = value; }
        public string CustomerFirstName { get => _customerFirstName; set => _customerFirstName = value; }
        public string CustomerLastName { get => _customerLastName; set => _customerLastName = value; }
        public string CustomerPhone { get => _customerPhone; set => _customerPhone = value; }
        public string CustEmail { get => _custEmail; set => _custEmail = value; }
        public Address CustAddress { get => _custAddress; set => _custAddress = value; }
    }
}
