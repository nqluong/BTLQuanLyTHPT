using System;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class ThoiKhoaBieuDAL
    {
        DbConnect db = new DbConnect();

        public DataTable LoadThoiKhoaBieu(string maGV)
        {
            DataTable dt = new DataTable();
            using (SqlCommand sqlCommand = new SqlCommand("sp_GetThoiKhoaBieu", db.connection))
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

        public DataTable SearchThoiKhoaBieu(string MaGV, string thu, int? tietHoc, string maLop, string khoiLop, string maHK, DateTime? ngayDay)
        {
            DataTable dt = new DataTable();
            using (SqlCommand sqlCommand = new SqlCommand("sp_SearchThoiKhoaBieu", db.connection))
            {
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.Parameters.AddWithValue("@MaGV", MaGV);
                sqlCommand.Parameters.AddWithValue("@Thu", (object)thu ?? DBNull.Value);
                sqlCommand.Parameters.AddWithValue("@TietHoc", (object)tietHoc ?? DBNull.Value);
                sqlCommand.Parameters.AddWithValue("@MaLop", (object)maLop ?? DBNull.Value);
                sqlCommand.Parameters.AddWithValue("@KhoiLop", (object)khoiLop ?? DBNull.Value);
                sqlCommand.Parameters.AddWithValue("@MaHK", (object)maHK ?? DBNull.Value);
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
        public bool UpdateLichHoc(string maTkb, string maMH, string maGV)
        {
            using (SqlCommand cmd = new SqlCommand("sp_UpdateLichHoc", db.connection))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@MaTkb", maTkb);
                cmd.Parameters.AddWithValue("@MaMH", maMH);
                cmd.Parameters.AddWithValue("@MaGV", maGV);

                try
                {
                    if (db.connection.State == ConnectionState.Closed)
                    {
                        db.connection.Open();
                    }

                    int rowsAffected = cmd.ExecuteNonQuery();
                    return rowsAffected > 0;
                }
                catch (Exception ex)
                {
                    throw new Exception("Lỗi khi cập nhật lịch học", ex);
                }
                finally
                {
                    if (db.connection.State == ConnectionState.Open)
                    {
                        db.connection.Close();
                    }
                }
            }
        }
    }
}
