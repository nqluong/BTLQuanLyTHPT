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

        public DataTable LoadDanhSachDiem(string MaGV)
        {
            DataTable table_DiemSo = new DataTable();
            SqlCommand sqlCommand = new SqlCommand();
            sqlCommand.CommandText = "select HocSinh.MaHS, HocSinh.HoTen, Diem.MaDiem, DiemMieng, Diem15p, Diem45p, DiemGiuaKy, DiemCuoiKy, DiemTB, TenMH, TenLop " +
                             "from Diem join MonHoc on Diem.MaMH = MonHoc.MaMH " +
                             "join GiaoVien on GiaoVien.MaMH = MonHoc.MaMH " + 
                             "join HocSinh on Diem.MaHS = HocSinh.MaHS " +
                             "join LopHoc on HocSinh.MaLop = LopHoc.MaLop " +
                             "where GiaoVien.MaGV = @MaGV";
            sqlCommand.Connection = db.connection;
            sqlCommand.Parameters.AddWithValue("@MaGV", MaGV);

            SqlDataAdapter adapter = new SqlDataAdapter();
            adapter.SelectCommand = sqlCommand;
            adapter.Fill(table_DiemSo);

            return table_DiemSo;
        }

        public DataTable LoadMonHoc(string MaGV)
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

        public int UpdateDiemSo(string MaDiem, float DiemM, float Diem15p, float Diem45p, float DiemGK, float DiemCK)
        {
            SqlCommand sqlCommand = new SqlCommand();
            sqlCommand.CommandText = "update Diem set DiemMieng = @DiemM, Diem15p = @Diem15p, Diem45p= @Diem45p, DiemGiuaKy = @DiemGK, DiemCuoiKy = @DiemCK where MaDiem = @md";
            sqlCommand.Connection = db.connection;
            sqlCommand.Parameters.AddWithValue("@md", MaDiem);
            sqlCommand.Parameters.AddWithValue("@DiemM", DiemM);
            sqlCommand.Parameters.AddWithValue("@Diem15p", Diem15p);
            sqlCommand.Parameters.AddWithValue("@Diem45p", Diem45p);
            sqlCommand.Parameters.AddWithValue("@DiemGK", DiemGK);
            sqlCommand.Parameters.AddWithValue("@DiemCK", DiemCK);
            db.connection.Open();
            int result = sqlCommand.ExecuteNonQuery();
            db.connection.Close();
            return result;
        }

        public DataTable SearchDiem( string maLop, string maMH, string maGV)
        {
            DataTable dt = new DataTable();
            using (SqlCommand sqlCommand = new SqlCommand("sp_SearchDiem", db.connection))
            {
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.Parameters.AddWithValue("@MaMH1", maMH);
                sqlCommand.Parameters.AddWithValue("@MaLop1", maLop);
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
    }
}
