using DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Windows.Input;

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
        public GiaoVien GetGiaoVien(string maTK)
        {
            GiaoVien giaoVien = null;

            using (SqlCommand sqlCommand = new SqlCommand("sp_GetGiaoVien", db.connection))
            {
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.Parameters.AddWithValue("@maTK", maTK);

                try
                {
                    db.connection.Open();
                    using (SqlDataReader reader = sqlCommand.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            giaoVien = new GiaoVien
                            {
                                MaGV = reader["MaGV"].ToString(),
                                HoTen = reader["HoTen"].ToString(),
                                NgaySinh = Convert.ToDateTime(reader["NgaySinh"]),
                                DiaChi = reader["DiaChi"].ToString(),
                                GioiTinh = Convert.ToBoolean(reader["GioiTinh"]),
                                MaTK = reader["MaTK"].ToString(),
                                MaMH = reader["MaMH"].ToString(),
                                TenLop = reader["TenLop"].ToString()
                            };
                        }
                    }
                }
                finally
                {
                    if (db.connection.State == ConnectionState.Open)
                    {
                        db.connection.Close();
                    }
                }
            }

            return giaoVien;
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

        public bool CheckDuplicateGiaoVien(GiaoVien giaoVien)
        {
            using (SqlCommand command = new SqlCommand("sp_CheckDuplicateGiaoVien", db.connection))
            {
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@MaGV", giaoVien.MaGV);
                command.Parameters.AddWithValue("@MaTK", giaoVien.MaTK);

                SqlParameter isDuplicateParam = new SqlParameter("@IsDuplicate", SqlDbType.Bit)
                {
                    Direction = ParameterDirection.Output
                };
                command.Parameters.Add(isDuplicateParam);

                db.connection.Open();
                command.ExecuteNonQuery();
                db.connection.Close();

                return (bool)isDuplicateParam.Value;
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
                command.Parameters.AddWithValue("@MaMH", giaoVien.MaMH);
                db.connection.Open();
                int rowsAffected = command.ExecuteNonQuery();
                db.connection.Close();

                return rowsAffected > 0;
            }
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

        public bool UpdateMatKhau(string maTK, string matKhauMoi)
        {
            using (SqlCommand command = new SqlCommand("sp_UpdateMatKhau", db.connection))
            {
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@MaTK", maTK);
                command.Parameters.AddWithValue("@MatKhauMoi", matKhauMoi);

                db.connection.Open();
                int rowsAffected = command.ExecuteNonQuery(); // Thực hiện cập nhật

                return rowsAffected > 0; // Trả về true nếu cập nhật thành công
            }
        }
    }
}
