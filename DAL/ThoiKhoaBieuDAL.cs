using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace DAL
{
    public class ThoiKhoaBieuDAL
    {
        DbConnect db = new DbConnect();

        public DataTable LoadThoiKhoaBieu()
        {
            DataTable dt = new DataTable();
            using (SqlCommand sqlCommand = new SqlCommand())
            {
                sqlCommand.CommandText = "SELECT * FROM ThoiKhoaBieu";
                sqlCommand.Connection = db.connection;
                db.connection.Open();
                using (SqlDataAdapter adapter = new SqlDataAdapter(sqlCommand))
                {
                    adapter.Fill(dt);
                }
                db.connection.Close();
            }
            return dt;
        }

    }
}
