using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace VMService
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in both code and config file together.
    public class VMServiceClass : IVMService
    {
        private static MySql.Data.MySqlClient.MySqlConnection _conn;
        private static string _connectionString;
        private const string password = "";
        private string _databaseName;

        public bool Connect()
        {
            bool success = false;
            try
            {
                using (_conn = new MySql.Data.MySqlClient.MySqlConnection(_connectionString))
                {
                    _conn.Open();
                    success = true;
                }
            }
            catch (MySql.Data.MySqlClient.MySqlException ex)
            {
                string exceptionMessage = ex.Message;
                success = false;
            }
            return success;
        }

        public void SetServerName(string connectionString)
        {
            _connectionString = connectionString;
        }

        public void SetDataBaseName(string dbName)
        {
            _databaseName = dbName;
        }
    }
}
