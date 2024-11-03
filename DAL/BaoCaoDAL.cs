using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using DTO;

namespace DAL
{
    public class BaoCaoDAL
    {
        DbConnect db = new DbConnect();

        public List<BaoCao> LoadBaoCao(string magv)
        {
            List<BaoCao> baoCaos = new List<BaoCao>();
            using (SqlCommand sqlCommand = new SqlCommand("ThongKeXepLoaiTheoGV", db.connection))
            {
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.Parameters.AddWithValue("@MaGV", magv); 

                db.connection.Open();
                using (SqlDataReader reader = sqlCommand.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        BaoCao baoCao = new BaoCao
                        {
                            GVCN = reader["HoTen"].ToString(),
                            TenLop = reader["TenLop"].ToString(),
                            NamHoc = reader["NamHoc"].ToString(),
                            TenHK = reader["TenHK"].ToString(), 
                            SoluongHSGioi = reader.IsDBNull(reader.GetOrdinal("SoLuongHSGioi")) ? 0 : Convert.ToInt32(reader["SoLuongHSGioi"]),
                            SoluongHSKha = reader.IsDBNull(reader.GetOrdinal("SoLuongHSKha")) ? 0 : Convert.ToInt32(reader["SoLuongHSKha"]),
                            SoluongHSTB = reader.IsDBNull(reader.GetOrdinal("SoLuongHSTB")) ? 0 : Convert.ToInt32(reader["SoLuongHSTB"]),
                            SoluongHSYeu = reader.IsDBNull(reader.GetOrdinal("SoLuongHSYeu")) ? 0 : Convert.ToInt32(reader["SoLuongHSYeu"])
                        };
                        baoCaos.Add(baoCao);
                    }
                }
                db.connection.Close();
            }
            return baoCaos;
        }
        public DataTable LoadMonHoc()
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
        public List<BaoCao> LoadBaoCao1(string mamh,string magv)
        {
            List<BaoCao> baoCaos = new List<BaoCao>();
            using (SqlCommand sqlCommand = new SqlCommand("ThongKeXepLoaiTheoMonHocVaGiaoVien", db.connection))
            {
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.Parameters.AddWithValue("@MaMH", mamh);
                sqlCommand.Parameters.AddWithValue("@MaGV", magv);
                db.connection.Open();
                using (SqlDataReader reader = sqlCommand.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        BaoCao baoCao = new BaoCao
                        {
                            GVCN = reader["HoTen"].ToString(),
                            TenLop = reader["TenLop"].ToString(),
                            MonHoc= reader["TenMH"].ToString(),
                            NamHoc = reader["NamHoc"].ToString(),
                            TenHK = reader["TenHK"].ToString(),
                            SoluongHSGioi = reader.IsDBNull(reader.GetOrdinal("SoLuongHSGioi")) ? 0 : Convert.ToInt32(reader["SoLuongHSGioi"]),
                            SoluongHSKha = reader.IsDBNull(reader.GetOrdinal("SoLuongHSKha")) ? 0 : Convert.ToInt32(reader["SoLuongHSKha"]),
                            SoluongHSTB = reader.IsDBNull(reader.GetOrdinal("SoLuongHSTB")) ? 0 : Convert.ToInt32(reader["SoLuongHSTB"]),
                            SoluongHSYeu = reader.IsDBNull(reader.GetOrdinal("SoLuongHSYeu")) ? 0 : Convert.ToInt32(reader["SoLuongHSYeu"])
                        };
                        baoCaos.Add(baoCao);
                    }
                }
                db.connection.Close();
            }
            return baoCaos;
        }

    }
}
