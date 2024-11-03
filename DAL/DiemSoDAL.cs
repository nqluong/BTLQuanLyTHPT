using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace DAL
{
    public class DiemSoDAL
    {
        DbConnect db = new DbConnect();

        public DataTable LoadDanhSachDiem(string maGV)
        {
            DataTable dt = new DataTable();
            using (SqlCommand sqlCommand = new SqlCommand("sp_GetDiemByGiaoVien", db.connection))
            {
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.Parameters.AddWithValue("@MaGV", maGV);

                db.connection.Open();
                using (SqlDataAdapter adapter = new SqlDataAdapter(sqlCommand))
                {
                    adapter.Fill(dt);
                }
                db.connection.Close();
            }
            return dt;
        }

        public DataTable GetHocKy(string maNamHoc)
        {
            DataTable dt = new DataTable();
            using (SqlCommand sqlCommand = new SqlCommand("sp_HocKyByDiem", db.connection))
            {
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.Parameters.AddWithValue("@NamHoc", maNamHoc);

                db.connection.Open();
                using (SqlDataAdapter adapter = new SqlDataAdapter(sqlCommand))
                {
                    adapter.Fill(dt);
                }
                db.connection.Close();
            }
            return dt;
        }

        public DataTable GetNamHoc()
        {
            DataTable dt = new DataTable();
            using (SqlCommand sqlCommand = new SqlCommand("sp_NamHocByDiem", db.connection))
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

        public DataTable UpdateDiemSo(string MaDiem, float DiemM, float Diem15p, float Diem45p, float DiemGK, float DiemCK)
        {
            DataTable dt = new DataTable();
            using (SqlCommand sqlCommand = new SqlCommand("sp_UpdateDiem", db.connection))
            {
                sqlCommand.CommandType = CommandType.StoredProcedure;

                sqlCommand.Parameters.AddWithValue("@md", MaDiem);
                sqlCommand.Parameters.AddWithValue("@DiemM", DiemM);
                sqlCommand.Parameters.AddWithValue("@Diem15p", Diem15p);
                sqlCommand.Parameters.AddWithValue("@Diem45p", Diem45p);
                sqlCommand.Parameters.AddWithValue("@DiemGK", DiemGK);
                sqlCommand.Parameters.AddWithValue("@DiemCK", DiemCK);

                db.connection.Open();
                using (SqlDataAdapter adapter = new SqlDataAdapter(sqlCommand))
                {
                    adapter.Fill(dt);
                }
                db.connection.Close();
            }
            return dt;
        }

        public DataTable SearchDiem( string maLop, string maMH, string maGV, string Namhoc, string Mahk)
        {
            DataTable dt = new DataTable();
            using (SqlCommand sqlCommand = new SqlCommand("sp_SearchDiem", db.connection))
            {
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.Parameters.AddWithValue("@MaMH1", maMH);
                sqlCommand.Parameters.AddWithValue("@MaLop1", maLop);
                sqlCommand.Parameters.AddWithValue("@MaGV", maGV);
                sqlCommand.Parameters.AddWithValue("@NamHoc", Namhoc);
                sqlCommand.Parameters.AddWithValue("@MaHK", Mahk);

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
