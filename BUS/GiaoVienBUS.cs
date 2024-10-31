using DAL;
using DTO;
using System;
using System.Data;

namespace BUS
{


    public class GiaoVienBUS
    {
        GiaoVienDAL giaoVienDAL = new GiaoVienDAL();

        public GiaoVien GetGiaoVienByMaTK(string maTK)
        {
            return giaoVienDAL.GetGiaoVienByMaTK(maTK);
        }

        public DataTable GetGiaoVienByMonHocAndTime(string maMon, int tiet, string thu)
        {
            return giaoVienDAL.GetGiaoVienByMonHocAndTime(maMon, tiet, thu);
        }
    }
}
