using System;


namespace db
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "DBAdapter" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select DBService.svc or DBService.svc.cs at the Solution Explorer and start debugging.
    public class DBServiceClass : IDBService
    {
        private static MySql.Data.MySqlClient.MySqlConnection _conn;
        private static string _connectionString;

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

        public void SetConnectionString(string connectionString)
        {
            _connectionString = connectionString;
        }

        public void SetDataBaseName(string dbName)
        {
            _databaseName = dbName;
        }

       
    }
}
