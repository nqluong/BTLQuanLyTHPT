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
			try
			{
				return hocSinhDAL.UpdateHocSinh(hocSinh);
			}
			catch (Exception ex)
			{
				// Log hoặc xử lý lỗi ở tầng giao diện người dùng
				throw new Exception("Error updating student: " + ex.Message);
			}
		}


		public bool DeleteHocSinh(string maHS)
		{
			// Gọi phương thức từ DAL để xóa học sinh khỏi CSDL
			return hocSinhDAL.DeleteHocSinh(maHS);
		}

		public List<HocSinh> GetAllHocSinh()
		{
			DataTable dt = hocSinhDAL.GetAllHocSinh();
			List<HocSinh> danhSachHocSinh = new List<HocSinh>();

			foreach (DataRow row in dt.Rows)
			{
				HocSinh hs = new HocSinh
				{
					MaHS = row["MaHS"].ToString(),
					HoTen = row["HoTen"].ToString(),
					NgaySinh = DateTime.Parse(row["NgaySinh"].ToString()),
					DiaChi = row["DiaChi"].ToString(),
					GioiTinh = (bool)row["GioiTinh"],
					MaLop = row["MaLop"].ToString()
				};
				danhSachHocSinh.Add(hs);
			}

			return danhSachHocSinh;
		}

	}
}
