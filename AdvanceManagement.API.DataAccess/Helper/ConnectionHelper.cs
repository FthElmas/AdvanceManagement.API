using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.DataAccess.Helper
{
    public class ConnectionHelper
    {
        private readonly string connectionString = "server = .; Database = AdvanceManagementDB; Trusted_Connection=True;MultipleActiveResultSets=True;TrustServerCertificate=True";

        public ConnectionHelper()
        {
        }

        public IDbConnection CreateConnection()
        {
            var conn = new SqlConnection(connectionString);
            conn.Open();
            return conn;
        }

        public async Task<IDbConnection> CreateConnectionAsync()
        {
            var conn = new SqlConnection(connectionString);
            await conn.OpenAsync();
            return conn;
        }

        public void CloseConnection(IDbConnection connection)
        {
            if (connection != null && connection.State != ConnectionState.Closed)
            {
                connection.Close();
            }
        }
    }
}
