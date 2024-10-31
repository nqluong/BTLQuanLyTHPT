using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using DAL;
namespace BUS
{
    public class MonHocBus
    {
        MonHocDAL monHocDAL = new MonHocDAL(); 
        public DataTable GetMonHoc(string maGV)
        {
            return monHocDAL.LoadMonHoc(maGV);
        }
        public DataTable GetMonHocAll()
        {
            return monHocDAL.LoadMonHocAll();
        }
    }
}
