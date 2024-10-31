using DAL;
using DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace BUS
{
    public class BaoCaoBUS
    {
        BaoCaoDAL baocaoDAL = new BaoCaoDAL();
        public List<BaoCao> GetBaoCao(string magv)
        {
            return baocaoDAL.LoadBaoCao(magv);
        }
        public List<BaoCao> GetBaoCao1(string mamh,string magv)
        {
            return baocaoDAL.LoadBaoCao1(mamh,magv);
        }
        public DataTable GetMonHoc(string maGV)
        {
            return baocaoDAL.LoadMonHoc(maGV);
        }

    }
}
