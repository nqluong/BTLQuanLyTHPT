﻿using DAL;
using System;
using System.Collections.Generic;
using System.Data;

using System.Text;

namespace BUS
{
    public class ThoiKhoaBieuBUS
    {
        ThoiKhoaBieuDAL thoiKhoaBieuDAL = new ThoiKhoaBieuDAL();
        public DataTable GetThoiKhoaBieu(string MaGV)
        {
            return thoiKhoaBieuDAL.LoadThoiKhoaBieu(MaGV);
        }

        public DataTable GetLopHoc()
        {
            return thoiKhoaBieuDAL.LoadLopHoc();
        }

        public DataTable SearchThoiKhoaBieu(string MaGV,string thu, int? tietHoc, string maLop,string khoiLop, string maMH, DateTime? ngayDay)
        {
            return thoiKhoaBieuDAL.SearchThoiKhoaBieu(MaGV, thu, tietHoc, maLop, khoiLop, maMH, ngayDay);
        }

        public bool UpdateLichHoc(string maTkb, string maMH, string maGV)
        {
            return thoiKhoaBieuDAL.UpdateLichHoc(maTkb, maMH, maGV);
        }
    }
}
