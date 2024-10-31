using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
namespace DAL
{
    public class DbConnect
    {


        //Duong dan sql
        private string stringConnection = "Data Source=LAPTOP-LUONG\\SQLEXPRESS;Initial Catalog=QLTruongTHPT;Integrated Security=True";
        public SqlConnection connection;
        public DbConnect()
        {
            connection = new SqlConnection(stringConnection);
        }


    }

}
