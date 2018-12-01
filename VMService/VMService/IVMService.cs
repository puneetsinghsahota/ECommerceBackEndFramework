using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace VMService
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IService1" in both code and config file together.
    [ServiceContract]
    public interface IVMService
    {
        /// <summary>
        /// Sets Name of the Database to be connected
        /// </summary>
        /// <param name="dbName">Database name in String which needs to be connected to provide Desired Functionality</param>
        [System.ServiceModel.OperationContract]
        void SetDataBaseName(string dbName);

        /// <summary>
        /// Sets the Server Name
        /// </summary>
        /// <param name="serverName">Sets the ServerName</param>
        [System.ServiceModel.OperationContract]
        void SetServerName(string serverName);

        /// <summary>
        /// Connects to the Server - Set ServerName before LoggingIn
        /// </summary>
        /// <returns>True if Connected Succesfully</returns>
        [System.ServiceModel.OperationContract]
        bool Connect();
    }

  
}
