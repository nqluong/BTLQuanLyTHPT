using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using DAL;
using DTO;

namespace BUS
{
	public class HocSinhBUS
	{
		private HocSinhDAL hocSinhDAL = new HocSinhDAL();
		public bool IsMaHSExists(string maHS)
		{
			DataTable dt = hocSinhDAL.GetAllHocSinh(); // Lấy tất cả học sinh
			foreach (DataRow row in dt.Rows)
			{
				if (row["MaHS"].ToString() == maHS)
				{
					return true; // Nếu tìm thấy mã học sinh đã tồn tại
				}
			}
			return false; // Không tìm thấy
		}

		public bool AddHocSinh(HocSinh hocSinh)
		{
			// Gọi phương thức từ DAL để thêm học sinh vào CSDL
			return hocSinhDAL.AddHocSinh(hocSinh);
		}

		public bool UpdateHocSinh(HocSinh hocSinh)
		{
			return hocSinhDAL.UpdateHocSinh(hocSinh);
		}

		public bool DeleteHocSinh(string maHS)
		{
			// Gọi phương thức từ DAL để xóa học sinh khỏi CSDL
			return hocSinhDAL.DeleteHocSinh(maHS);
		}



		public List<HocSinh> GetAllHocSinh()
		{
			// Gọi phương thức từ DAL để lấy dữ liệu
			DataTable dt = hocSinhDAL.GetAllHocSinh();

			// Chuyển DataTable thành List<HocSinh>
			List<HocSinh> danhSachHocSinh = new List<HocSinh>();
			foreach (DataRow row in dt.Rows)
			{
				HocSinh hocSinh = new HocSinh
				{
					MaHS = row["MaHS"].ToString(),
					HoTen = row["HoTen"].ToString(),
					NgaySinh = (DateTime)row["NgaySinh"],
					DiaChi = row["DiaChi"].ToString(),
					GioiTinh = Convert.ToBoolean(row["GioiTinh"]), // Chuyển đổi từ string sang bool
					MaLop = row["MaLop"].ToString()
				};
				danhSachHocSinh.Add(hocSinh);
			}
			return danhSachHocSinh;
		}
	}
}
