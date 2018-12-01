using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

namespace db
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IService1" in both code and config file together.
    [ServiceContract]
    public interface IDBService
    {

        [OperationContract]
        void SetDataBaseName(string dbName);
        
        [OperationContract]
        void SetConnectionString(string connectionString);

        [OperationContract]
        bool Connect();
       
    }


    
}
