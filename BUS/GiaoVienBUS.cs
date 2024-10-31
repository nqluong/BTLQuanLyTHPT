using DAL;
using DTO;
using System;
using System.Collections.Generic;
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
        public GiaoVien GetGiaoVien(string maTK)
        {
            return giaoVienDAL.GetGiaoVien(maTK);
        }
        public bool DeleteGiaoVien(string maGV)
        {
            return giaoVienDAL.DeleteGiaoVien(maGV);
        }
        public bool UpdateGiaoVien(GiaoVien giaoVien)
        {
            if (giaoVienDAL.CheckDuplicateGiaoVien(giaoVien))
            {
                throw new Exception("Dữ liệu giáo viên bị trùng lặp với giáo viên khác.");
            }
            return giaoVienDAL.UpdateGiaoVien(giaoVien);
        }
        public DataTable GetMonHoc()
        {
            return giaoVienDAL.LoadMonHoc();
        }

        public bool UpdateMatKhau(string maTK, string matKhauMoi)
        {
            return giaoVienDAL.UpdateMatKhau(maTK, matKhauMoi); 
        }
    }
}
