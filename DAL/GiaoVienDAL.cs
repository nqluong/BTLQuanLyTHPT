using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace DAL
{
    
    public class GiaoVienDAL
    {
        DbConnect db = new DbConnect();
    

        //Code mau
        public DataTable LoadDanhSachGiaoVien()
        {

            DataTable table_GiaoVien = new DataTable();
            SqlCommand sqlCommand = new SqlCommand();
            sqlCommand.CommandText = "";
            sqlCommand.Connection = db.connection;

            SqlDataAdapter adapter = new SqlDataAdapter();
            adapter.SelectCommand = sqlCommand;
            adapter.Fill(table_GiaoVien);

            return table_GiaoVien;

        }

    }
}
