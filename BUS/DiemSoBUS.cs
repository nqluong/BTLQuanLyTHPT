using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace BUS
{
    public class DiemSoBUS
    {
        DiemSoDAL DiemSoDAL = new DiemSoDAL();

        public DataTable GetTableDiemSo(string MaGV)
        {
            return DiemSoDAL.LoadDanhSachDiem(MaGV);
        }

        public DataTable GetHocKy(string maNamHoc)
        {
            return DiemSoDAL.GetHocKy(maNamHoc);
        }

        public DataTable GetNamHoc()
        {
            return DiemSoDAL.GetNamHoc();
        }

        // comment
        public DataTable GetTableTimKiem(string maLH, string maMH, string maGv, string namhoc, string maHK)
        {
            return DiemSoDAL.SearchDiem(maLH, maMH, maGv, namhoc, maHK);
        }

        public DataTable UpdateDiemSo(string MaDiem, float DiemM, float Diem15p, float Diem45p, float DiemGK, float DiemCK)
        {
            return DiemSoDAL.UpdateDiemSo(MaDiem, DiemM, Diem15p, Diem45p, DiemGK, DiemCK);
        }
    }
}
