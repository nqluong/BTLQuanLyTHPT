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

        // comment
        public DataTable GetTableTimKiem(string maLH, string maMH, string maGv)
        {
            return DiemSoDAL.SearchDiem(maLH, maMH, maGv);
        }

        //public int DeleteDiemSo(string id)
        //{
        //    return DiemSoDAL.DeleteDiemSo(id);
        //}
        public DataTable GetMonHoc()
        {
            return DiemSoDAL.LoadMonHoc();
        }
        public DataTable GetLopHoc()
        {
            return DiemSoDAL.LoadLopHoc();
        }

        public int UpdateDiemSo(string MaDiem, float DiemM, float Diem15p, float Diem45p, float DiemGK, float DiemCK)
        {
            return DiemSoDAL.UpdateDiemSo(MaDiem, DiemM, Diem15p, Diem45p, DiemGK, DiemCK);
        }
    }
}
