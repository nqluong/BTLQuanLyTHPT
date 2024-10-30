using DTO;
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

        public GiaoVien GetGiaoVienByMaTK(string maTk)
        {
            GiaoVien giaoVien = null;
            using (SqlCommand sqlCommand = new SqlCommand("sp_GetGiaoVienByMaTK", db.connection))
            {
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.Parameters.AddWithValue("@maTK", maTk);

                db.connection.Open();

                using (SqlDataReader reader = sqlCommand.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        giaoVien = new GiaoVien
                        {
                            MaGV = reader["MaGV"].ToString(),
                            HoTen = reader["HoTen"].ToString(),
                            NgaySinh = DateTime.Parse(reader["NgaySinh"].ToString()),
                            DiaChi = reader["DiaChi"].ToString(),
                            GioiTinh = (bool)reader["GioiTinh"],
                            MaTK = reader["MaTK"].ToString()
                        };
                    }
                }
                

            }
            db.connection.Close();
            return giaoVien;
        }
        public DataTable GetGiaoVien()
        {
            DataTable dataTable = new DataTable();
            using (SqlCommand sqlCommand = new SqlCommand("sp_GetGiaoVien", db.connection))
            {
                sqlCommand.CommandType = CommandType.StoredProcedure;
                db.connection.Open();
                using (SqlDataReader reader = sqlCommand.ExecuteReader())
                {
                    dataTable.Load(reader);
                }
                db.connection.Close();
            }
            return dataTable;
        }

        public bool DeleteGiaoVien(string maGV)
        {
            using (SqlCommand sqlCommand = new SqlCommand("sp_DeleteGiaoVien", db.connection))
            {
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.Parameters.AddWithValue("@maGV", maGV);
                db.connection.Open();
                int result = sqlCommand.ExecuteNonQuery();
                db.connection.Close();
                return result > 0; // Trả về true nếu xóa thành công
            }
        }

        public bool AddGiaoVien(GiaoVien giaoVien)
        {
            using (SqlCommand sqlCommand = new SqlCommand("sp_AddGiaoVien", db.connection))
            {
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.Parameters.AddWithValue("@MaGV", giaoVien.MaGV);
                sqlCommand.Parameters.AddWithValue("@HoTen", giaoVien.HoTen);
                sqlCommand.Parameters.AddWithValue("@NgaySinh", giaoVien.NgaySinh);
                sqlCommand.Parameters.AddWithValue("@DiaChi", giaoVien.DiaChi);
                sqlCommand.Parameters.AddWithValue("@GioiTinh", giaoVien.GioiTinh);
                /*sqlCommand.Parameters.AddWithValue("@MaTK", giaoVien.MaTK); Thêm tài khoản rồi mới thêm mã tk*/
                db.connection.Open();
                int result = sqlCommand.ExecuteNonQuery();
                db.connection.Close();
                return result > 0; // Trả về true nếu thêm thành công
            }
        }
        public bool CheckDuplicateGiaoVien(GiaoVien giaoVien)
        {
            using (SqlCommand command = new SqlCommand("sp_CheckDuplicateGiaoVien", db.connection))
            {
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@MaGV", giaoVien.MaGV);
                command.Parameters.AddWithValue("@HoTen", giaoVien.HoTen);
                command.Parameters.AddWithValue("@NgaySinh", giaoVien.NgaySinh);
                command.Parameters.AddWithValue("@DiaChi", giaoVien.DiaChi);
                command.Parameters.AddWithValue("@GioiTinh", giaoVien.GioiTinh);
                command.Parameters.AddWithValue("@MaTK", giaoVien.MaTK);
                db.connection.Open();
                int count = (int)command.ExecuteScalar();
                db.connection.Close();
                return count > 0;
            }
        }

        public bool UpdateGiaoVien(GiaoVien giaoVien)
        {
            using (SqlCommand command = new SqlCommand("sp_UpdateGiaoVien", db.connection))
            {
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@MaGV", giaoVien.MaGV);
                command.Parameters.AddWithValue("@HoTen", giaoVien.HoTen);
                command.Parameters.AddWithValue("@NgaySinh", giaoVien.NgaySinh);
                command.Parameters.AddWithValue("@DiaChi", giaoVien.DiaChi);
                command.Parameters.AddWithValue("@GioiTinh", giaoVien.GioiTinh);
                command.Parameters.AddWithValue("@MaTK", giaoVien.MaTK);
                db.connection.Open();
                int rowsAffected = command.ExecuteNonQuery();
                db.connection.Close();
                return rowsAffected > 0;
            }
        }
    }
}
