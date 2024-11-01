using BUS;
using DTO;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace GUI
{
	public partial class frmHocSinh : UserControl
	{
		private HocSinhBUS hocSinhBUS = new HocSinhBUS();
		public frmHocSinh()
		{
			InitializeComponent();
		}
		private void LoadData()
		{
			List<HocSinh> danhSachHocSinh = hocSinhBUS.GetAllHocSinh();

			dgv.DataSource = danhSachHocSinh.Select(hs => new
			{
				hs.MaHS,
				hs.HoTen,
				NgaySinh = hs.NgaySinh.ToString("dd/MM/yyyy"), // Định dạng ngày tháng
				hs.DiaChi,
				GioiTinh = hs.GioiTinh ? "Nam" : "Nữ", // Chuyển đổi bool sang string
				hs.MaLop
			}).ToList();
		}

		private void frmHocSinh_Load(object sender, EventArgs e)
		{
			LoadData();
		}

		private void dgv_CellContentClick(object sender, DataGridViewCellEventArgs e)
		{
			// Kiểm tra xem người dùng có chọn một dòng nào không
			if (e.RowIndex >= 0)
			{
				// Lấy dòng đã chọn
				DataGridViewRow row = dgv.Rows[e.RowIndex];

				// Điền dữ liệu vào các ô tương ứng
				tb_MaHocSinh.Text = row.Cells["MaHS"].Value.ToString();
				tb_HoTen.Text = row.Cells["HoTen"].Value.ToString();
				dtp_NgaySinh.Value = DateTime.ParseExact(row.Cells["NgaySinh"].Value.ToString(), "dd/MM/yyyy", null);
				tb_DiaChi.Text = row.Cells["DiaChi"].Value.ToString();
				cb_GioiTinh.SelectedItem = row.Cells["GioiTinh"].Value.ToString() == "Nam" ? "Nam" : "Nữ";
				cb_MaLop.SelectedItem = row.Cells["MaLop"].Value.ToString();
			}
		}


		private void tb_MaHocSinh_TextChanged(object sender, EventArgs e)
		{

		}

		private void tb_HoTen_TextChanged(object sender, EventArgs e)
		{

		}

		private void tb_DiaChi_TextChanged(object sender, EventArgs e)
		{

		}

		private void dtp_NgaySinh_ValueChanged(object sender, EventArgs e)
		{

		}

		private void cb_MaLop_SelectedIndexChanged(object sender, EventArgs e)
		{

		}

		private void cb_GioiTinh_SelectedIndexChanged(object sender, EventArgs e)
		{

		}

		private void btn_Them_Click(object sender, EventArgs e)
		{
			// Kiểm tra các điều kiện trước khi thêm
			if (string.IsNullOrWhiteSpace(tb_HoTen.Text) ||
				string.IsNullOrWhiteSpace(tb_DiaChi.Text) ||
				cb_GioiTinh.SelectedItem == null ||
				cb_MaLop.SelectedItem == null)
			{
				MessageBox.Show("Vui lòng điền đầy đủ thông tin.");
				return;
			}

			string maHS = GenerateMaHS(); // Tạo mã học sinh mới
			bool gioiTinh = cb_GioiTinh.SelectedItem.ToString() == "Nam";

			HocSinh hocSinh = new HocSinh
			{
				MaHS = maHS,
				HoTen = tb_HoTen.Text,
				NgaySinh = dtp_NgaySinh.Value,
				DiaChi = tb_DiaChi.Text,
				GioiTinh = gioiTinh,
				MaLop = cb_MaLop.SelectedItem.ToString()
			};

			if (hocSinhBUS.AddHocSinh(hocSinh))
			{
				MessageBox.Show("Thêm học sinh thành công!");
				LoadData(); // Tải lại dữ liệu
			}
			else
			{
				MessageBox.Show("Có lỗi xảy ra khi thêm học sinh.");
			}
		}

		private string GenerateMaHS()
		{
			// Logic để tạo mã học sinh tự động
			int maHS = dgv.Rows.Count + 1; // Tính toán mã học sinh
			return "HS00" + maHS.ToString(); // Thêm chuỗi "HS00" trước số
		}


		private void btn_Sua_Click(object sender, EventArgs e)
		{
			if (ValidateInput())
			{
				var hocSinh = new HocSinh
				{
					MaHS = tb_MaHocSinh.Text,
					HoTen = tb_HoTen.Text,
					NgaySinh = dtp_NgaySinh.Value,
					DiaChi = tb_DiaChi.Text,
					GioiTinh = cb_GioiTinh.SelectedItem.ToString() == "Nam",
					MaLop = cb_MaLop.SelectedItem.ToString()
				};

				try
				{
					if (hocSinhBUS.UpdateHocSinh(hocSinh))
					{
						MessageBox.Show("Cập nhật thông tin học sinh thành công!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
						LoadData();
						ClearFields();
					}
					else
					{
						MessageBox.Show("Có lỗi xảy ra khi cập nhật thông tin học sinh.", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
					}
				}
				catch (Exception ex)
				{
					MessageBox.Show("Lỗi cập nhật: " + ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
				}
			}
		}





		private void ClearFields()
		{
			tb_MaHocSinh.Clear();
			tb_HoTen.Clear();
			dtp_NgaySinh.Value = DateTime.Now;
			tb_DiaChi.Clear();
			cb_GioiTinh.SelectedIndex = -1;
			cb_MaLop.SelectedIndex = -1;
		}

		private bool ValidateInput()
		{
			if (string.IsNullOrWhiteSpace(tb_HoTen.Text))
			{
				MessageBox.Show("Vui lòng nhập Họ tên.", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
				return false;
			}
			if (cb_GioiTinh.SelectedItem == null)
			{
				MessageBox.Show("Vui lòng chọn Giới tính.", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
				return false;
			}
			if (cb_MaLop.SelectedItem == null)
			{
				MessageBox.Show("Vui lòng chọn Mã lớp.", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
				return false;
			}
			if (string.IsNullOrWhiteSpace(tb_DiaChi.Text))
			{
				MessageBox.Show("Vui lòng nhập Địa chỉ.", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
				return false;
			}
			return true;
		}

		private void btn_Xoa_Click(object sender, EventArgs e)
		{
			if (string.IsNullOrWhiteSpace(tb_MaHocSinh.Text))
			{
				MessageBox.Show("Vui lòng chọn học sinh để xóa.");
				return;
			}

			string maHS = tb_MaHocSinh.Text;

			if (hocSinhBUS.DeleteHocSinh(maHS))
			{
				MessageBox.Show("Xóa học sinh thành công!");
				LoadData();
			}
			else
			{
				MessageBox.Show("Có lỗi xảy ra khi xóa học sinh.");
			}
		}

		private void groupBox1_Enter(object sender, EventArgs e)
		{

		}
	}
}
