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
        public DataTable GetGiaoVien()
        {
            return giaoVienDAL.GetGiaoVien();
        }
        public bool DeleteGiaoVien(string maGV)
        {
            return giaoVienDAL.DeleteGiaoVien(maGV);
        }
        public bool AddGiaoVien(GiaoVien giaoVien)
        {
            return giaoVienDAL.AddGiaoVien(giaoVien);
        }
        public bool UpdateGiaoVien(GiaoVien giaoVien)
        {
            if (giaoVienDAL.CheckDuplicateGiaoVien(giaoVien))
            {
            throw new Exception("Dữ liệu giáo viên bị trùng lặp với giáo viên khác.");
        }
            return giaoVienDAL.UpdateGiaoVien(giaoVien);
        }
    }    
}
