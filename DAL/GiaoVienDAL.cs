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

    }
}
