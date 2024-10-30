using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
namespace DAL
{
    public class DbConnect
    {

        private string stringConnection = "Data Source=DESKTOP-ODGG0I5;Initial Catalog=QLTruongTHPT;Integrated Security=True";
        public SqlConnection connection;
        public DbConnect()
        {
            connection = new SqlConnection(stringConnection);
        }


    }

}
