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

        //public int DeleteDiemSo(string id)
        //{
        //    return DiemSoDAL.DeleteDiemSo(id);
        //}

        public int UpdateDiemSo(string MaDiem, string maMH, string maHS, float DiemM, float Diem15p, float Diem45p, float DiemGK, float DiemCK)
        {
            return DiemSoDAL.UpdateDiemSo(MaDiem, maMH, maHS, DiemM, Diem15p, Diem45p, DiemGK, DiemCK);
        }
    }
}
