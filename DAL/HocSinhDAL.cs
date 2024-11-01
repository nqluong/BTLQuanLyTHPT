using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using DTO;

namespace DAL
{
	public class HocSinhDAL
	{
		DbConnect db = new DbConnect();

		// Lấy toàn bộ danh sách học sinh
		public DataTable GetAllHocSinh()
		{
			DataTable dt = new DataTable();
			using (SqlCommand sqlCommand = new SqlCommand("sp_GetAllHocSinh", db.connection))
			{
				sqlCommand.CommandType = CommandType.StoredProcedure;
				db.connection.Open();
				using (SqlDataAdapter adapter = new SqlDataAdapter(sqlCommand))
				{
					adapter.Fill(dt);
				}
				db.connection.Close();
			}
			return dt;
		}

		// Thêm mới học sinh
		public bool AddHocSinh(HocSinh hocSinh)
		{
			using (SqlCommand sqlCommand = new SqlCommand("sp_AddHocSinh", db.connection))
			{
				sqlCommand.CommandType = CommandType.StoredProcedure;
				sqlCommand.Parameters.AddWithValue("@MaHS", hocSinh.MaHS);
				sqlCommand.Parameters.AddWithValue("@HoTen", hocSinh.HoTen);
				sqlCommand.Parameters.AddWithValue("@NgaySinh", hocSinh.NgaySinh);
				sqlCommand.Parameters.AddWithValue("@DiaChi", hocSinh.DiaChi);
				sqlCommand.Parameters.AddWithValue("@GioiTinh", hocSinh.GioiTinh);
				sqlCommand.Parameters.AddWithValue("@MaLop", hocSinh.MaLop);

				db.connection.Open();
				int rowsAffected = sqlCommand.ExecuteNonQuery();
				db.connection.Close();
				return rowsAffected > 0;
			}
		}

		// Cập nhật thông tin học sinh
		public bool UpdateHocSinh(HocSinh hocSinh)
		{
			try
			{
				using (SqlCommand sqlCommand = new SqlCommand("sp_UpdateHocSinh", db.connection))
				{
					sqlCommand.CommandType = CommandType.StoredProcedure;
					sqlCommand.Parameters.AddWithValue("@MaHS", hocSinh.MaHS);
					sqlCommand.Parameters.AddWithValue("@HoTen", hocSinh.HoTen);
					sqlCommand.Parameters.AddWithValue("@NgaySinh", hocSinh.NgaySinh);
					sqlCommand.Parameters.AddWithValue("@DiaChi", hocSinh.DiaChi);
					sqlCommand.Parameters.AddWithValue("@GioiTinh", hocSinh.GioiTinh);
					sqlCommand.Parameters.AddWithValue("@MaLop", hocSinh.MaLop);

					db.connection.Open();
					int rowsAffected = sqlCommand.ExecuteNonQuery();
					db.connection.Close();

					// Kiểm tra số hàng bị ảnh hưởng
					if (rowsAffected == 0)
					{
						throw new Exception("Không tìm thấy học sinh có mã '" + hocSinh.MaHS + "' để cập nhật.");
					}

					return rowsAffected > 0;
				}
			}
			catch (SqlException ex)
			{
				throw new Exception("SQL Error: " + ex.Message);
			}
		}






		// Xóa học sinh
		public bool DeleteHocSinh(string maHS)
		{
				using (SqlCommand sqlCommand = new SqlCommand("sp_DeleteHocSinh", db.connection))
				{
					sqlCommand.CommandType = CommandType.StoredProcedure;
					sqlCommand.Parameters.AddWithValue("@MaHS", maHS);

					db.connection.Open();
					int rowsAffected = sqlCommand.ExecuteNonQuery();
					db.connection.Close();
					return rowsAffected > 0;
				}

		}


		// Lấy toàn bộ Mã Lớp
		public List<string> GetAllMaLop()
		{
			List<string> maLopList = new List<string>();
			using (SqlCommand sqlCommand = new SqlCommand("sp_GetAllMaLop", db.connection))
			{
				sqlCommand.CommandType = CommandType.StoredProcedure;
				db.connection.Open();
				using (SqlDataReader reader = sqlCommand.ExecuteReader())
				{
					while (reader.Read())
					{
						maLopList.Add(reader["MaLop"].ToString());
					}
				}
				db.connection.Close();
			}
			return maLopList;
		}

	}
}
