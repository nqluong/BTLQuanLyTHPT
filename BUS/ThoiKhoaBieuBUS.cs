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
    }
}
