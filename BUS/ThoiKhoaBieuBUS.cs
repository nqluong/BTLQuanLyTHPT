using DAL;
using System;
using System.Collections.Generic;
using System.Data;

using System.Text;

namespace BUS
{
    public class ThoiKhoaBieuBUS
    {
        ThoiKhoaBieuDAL thoiKhoaBieuDAL = new ThoiKhoaBieuDAL();
        public DataTable GetThoiKhoaBieu()
        {
            return thoiKhoaBieuDAL.LoadThoiKhoaBieu();
        }

        public DataTable GetMonHoc()
        {
            return thoiKhoaBieuDAL.LoadMonHoc();
        }
        public DataTable GetLopHoc()
        {
            return thoiKhoaBieuDAL.LoadLopHoc();
        }

        public DataTable SearchThoiKhoaBieu(string thu, int? tietHoc, string tenGiaoVien, string maLop, string maMH, DateTime? ngayDay)
        {
            return thoiKhoaBieuDAL.SearchThoiKhoaBieu(thu, tietHoc, tenGiaoVien, maLop, maMH, ngayDay);
        }

    }
}
