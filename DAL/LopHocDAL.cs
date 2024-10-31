using System;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class LopHocDAL
    {
        DbConnect db = new DbConnect();

        public DataTable LoadDSLop(string magv)
        {
            DataTable dt = new DataTable();
            using (SqlCommand sqlCommand = new SqlCommand("GetLopHoc", db.connection))
            {
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.Parameters.AddWithValue("@magv", (object)magv ?? DBNull.Value);
                db.connection.Open();
                using (SqlDataAdapter adapter = new SqlDataAdapter(sqlCommand))
                {
                    adapter.Fill(dt);
                }
                db.connection.Close();
            }
            return dt;
        }
        public DataTable LoadLopHoc()
        {
            DataTable dt = new DataTable();
            using (SqlCommand sqlCommand = new SqlCommand("sp_GetLopHoc", db.connection))
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
        public DataTable SearchLop(string tenGiaoVien, string maLop, string khoi, string magv)
        {
            DataTable dt = new DataTable();
            using (SqlCommand sqlCommand = new SqlCommand("sp_SearchLop", db.connection))
            {
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.Parameters.AddWithValue("@TenGiaoVien", (object)tenGiaoVien ?? DBNull.Value);
                sqlCommand.Parameters.AddWithValue("@MaLop", (object)maLop ?? DBNull.Value);
                sqlCommand.Parameters.AddWithValue("@Khoi", (object)khoi ?? DBNull.Value);
                sqlCommand.Parameters.AddWithValue("@Magv", (object)magv ?? DBNull.Value);
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