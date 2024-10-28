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
            sqlCommand.CommandText = "select *  from Diem join MonHoc on Diem.MaMH = MonHoc.MaMH join HocSinh on Diem.MaHS = HocSinh.MaHS where MaGV =@MaGV";
            sqlCommand.Connection = db.connection;
            sqlCommand.Parameters.AddWithValue("@MaGV", MaGV);

            SqlDataAdapter adapter = new SqlDataAdapter();
            adapter.SelectCommand = sqlCommand;
            adapter.Fill(table_DiemSo);

            return table_DiemSo;
        }

        public int UpdateDiemSo(string MaDiem, string maMH, string maHS, float DiemM, float Diem15p, float Diem45p, float DiemGK, float DiemCK)
        {
            SqlCommand sqlCommand = new SqlCommand();
            sqlCommand.CommandText = "update Diem set MaMH=@maMH, MaHS = @maHS, DiemMieng = @DiemM, Diem15p = @Diem15p, Diem45p= @Diem45p, DiemGiuaKy = @DiemGK, DiemCuoiKy = @DiemCK where MaDiem = @md";
            sqlCommand.Connection = db.connection;
            sqlCommand.Parameters.AddWithValue("@md", MaDiem);
            sqlCommand.Parameters.AddWithValue("@maMH", maMH);
            sqlCommand.Parameters.AddWithValue("@maHS", maHS);
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
    }
}
