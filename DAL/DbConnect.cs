using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
namespace DAL
{
    public class DbConnect
    {
        private string stringConnection = "";
        public SqlConnection connection;

        public DbConnect()
        {
            connection = new SqlConnection(stringConnection);
        }


    }

    
}
