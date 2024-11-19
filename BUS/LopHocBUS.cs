using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace BUS
{
    public class LopHocBUS
    {
        LopHocDAL lopDAL = new LopHocDAL();
        public DataTable LoadDSLop(string magv)
        {
            try
            {
                return lopDAL.LoadDSLop(magv);
            }
            catch (Exception ex)
            {

                throw new Exception("Lỗi khi tải danh sách lớp.", ex);
            }
        }
        public DataTable GetLopHoc(string magv)
        {
            return lopDAL.LoadLopHoc(magv);
        }

		public DataTable GetLopHoc2(string magv)
		{
			return lopDAL.LoadLopHoc2(magv);
		}
		public DataTable SearchLop(string tenGiaoVien, string maLop, string khoi, string magv)
        {
            return lopDAL.SearchLop(tenGiaoVien, maLop, khoi, magv);
        }


    }
}