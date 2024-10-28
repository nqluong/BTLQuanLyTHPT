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
            using (SqlCommand sqlCommand = new SqlCommand("sp_GetThoiKhoaBieu", db.connection))
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
        public DataTable LoadMonHoc()
        {
            DataTable dt = new DataTable();
            using (SqlCommand sqlCommand = new SqlCommand("sp_GetMonHoc", db.connection))
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

        public DataTable SearchThoiKhoaBieu(string thu, int? tietHoc, string tenGiaoVien, string maLop, string maMH, DateTime? ngayDay)
        {
            DataTable dt = new DataTable();
            using (SqlCommand sqlCommand = new SqlCommand("sp_SearchThoiKhoaBieu", db.connection))
            {
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.Parameters.AddWithValue("@Thu", (object)thu ?? DBNull.Value);
                sqlCommand.Parameters.AddWithValue("@TietHoc", (object)tietHoc ?? DBNull.Value);
                sqlCommand.Parameters.AddWithValue("@TenGiaoVien", (object)tenGiaoVien ?? DBNull.Value);
                sqlCommand.Parameters.AddWithValue("@MaLop", (object)maLop ?? DBNull.Value);
                sqlCommand.Parameters.AddWithValue("@MaMH", (object)maMH ?? DBNull.Value);
                sqlCommand.Parameters.AddWithValue("@NgayDay", (object)ngayDay ?? DBNull.Value);

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
