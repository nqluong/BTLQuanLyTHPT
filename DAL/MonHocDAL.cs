using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Text;

namespace DAL
{
    public class MonHocDAL
    {
        DbConnect db = new DbConnect();
        public DataTable LoadMonHoc(string maGV)
        {
            DataTable dt = new DataTable();
            using (SqlCommand sqlCommand = new SqlCommand("sp_GetMonHocByGiaoVien", db.connection))
            {
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.Parameters.AddWithValue("MaGV", maGV);
                db.connection.Open();
                using (SqlDataAdapter adapter = new SqlDataAdapter(sqlCommand))
                {
                    adapter.Fill(dt);
                }
                db.connection.Close();
            }
            return dt;
        }

        public DataTable LoadHocKy(string maGV)
        {
            DataTable dt = new DataTable();
            using (SqlCommand sqlCommand = new SqlCommand("sp_GetHocKy", db.connection))
            {
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.Parameters.AddWithValue("MaGV", maGV);
                db.connection.Open();
                using (SqlDataAdapter adapter = new SqlDataAdapter(sqlCommand))
                {
                    adapter.Fill(dt);
                }
                db.connection.Close();
            }
            return dt;
        }
        public DataTable LoadMonHocAll()
        {
            DataTable dt = new DataTable();
            using (SqlCommand sqlCommand = new SqlCommand("sp_GetMonHocAll", db.connection))
            {
                sqlCommand.CommandType = CommandType.StoredProcedure;
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
