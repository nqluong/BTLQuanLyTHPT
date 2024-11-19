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
		private LopHocBUS LopHocBUS = new LopHocBUS();
		private string maGVCN;
		public frmHocSinh(string maGVCN)
		{
			InitializeComponent();
			this.maGVCN = maGVCN;
			LoadLopHoc(maGVCN);
		}
		private void LoadData(string maGVCN)
		{
			List<HocSinh> danhSachHocSinh = hocSinhBUS.GetAllHocSinh(maGVCN);

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
			LoadData(maGVCN);
		}

		private void dgv_CellContentClick(object sender, DataGridViewCellEventArgs e)
		{
			// Kiểm tra xem người dùng có chọn một dòng nào không
			if (e.RowIndex >= 0)
			{
				// Lấy dòng đã chọn
				DataGridViewRow row = dgv.Rows[e.RowIndex];

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
			

			if (string.IsNullOrWhiteSpace(tb_HoTen.Text) ||
				string.IsNullOrWhiteSpace(tb_DiaChi.Text) ||
				cb_GioiTinh.SelectedItem == null ||
				string.IsNullOrEmpty(cb_MaLop.SelectedValue?.ToString()))
			{
				MessageBox.Show("Vui lòng điền đầy đủ thông tin.");
				return;
			}

			if (!ValidateInput())
			{
				return;
			}

			string maHS = GenerateMaHS(); 
			bool gioiTinh = cb_GioiTinh.SelectedItem.ToString() == "Nam";

			HocSinh hocSinh = new HocSinh
			{
				MaHS = maHS,
				HoTen = tb_HoTen.Text,
				NgaySinh = dtp_NgaySinh.Value,
				DiaChi = tb_DiaChi.Text,
				GioiTinh = gioiTinh,
				MaLop = cb_MaLop.SelectedValue?.ToString()
			};

			if (hocSinhBUS.AddHocSinh(hocSinh))
			{
				MessageBox.Show("Thêm học sinh thành công!");
				LoadData(maGVCN); // Tải lại dữ liệu
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
			if (!ValidateInput())
			{
				return; 
			}
			if (ValidateInput())
			{
				var hocSinh = new HocSinh
				{
					
					HoTen = tb_HoTen.Text,
					NgaySinh = dtp_NgaySinh.Value,
					DiaChi = tb_DiaChi.Text,
					GioiTinh = cb_GioiTinh.SelectedItem.ToString() == "Nam",
					MaLop = cb_MaLop.SelectedValue?.ToString()
				};

				try
				{
					if (hocSinhBUS.UpdateHocSinh(hocSinh))
					{
						MessageBox.Show("Cập nhật thông tin học sinh thành công!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
						LoadData(maGVCN);
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



        private void LoadLopHoc(string maGVCN)
        {

            DataTable dtLopHoc = LopHocBUS.GetLopHoc2(maGVCN);


            cb_MaLop.Items.Clear();

            cb_MaLop.DataSource = dtLopHoc;
            cb_MaLop.DisplayMember = "TenLop";
            cb_MaLop.ValueMember = "MaLop";
            cb_MaLop.SelectedIndex = -1;
        }

        private void ClearFields()
		{
			tb_HoTen.Clear();
			dtp_NgaySinh.Value = DateTime.Now;
			tb_DiaChi.Clear();
			cb_GioiTinh.SelectedIndex = -1;
			cb_MaLop.SelectedIndex = -1;
		}

		private bool ValidateInput()
		{
			if (string.IsNullOrWhiteSpace(tb_HoTen.Text) || !IsNameValid(tb_HoTen.Text))
			{
				MessageBox.Show("Họ tên chỉ được chứa chữ cái và khoảng trắng.", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
				tb_HoTen.Focus();
				return false;
			}


			if (string.IsNullOrWhiteSpace(tb_DiaChi.Text) || !IsAddressValid(tb_DiaChi.Text))
			{
				MessageBox.Show("Địa chỉ chỉ được chứa chữ cái, số, khoảng trắng, dấu phẩy, chấm hoặc gạch ngang.", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
				tb_DiaChi.Focus();
				return false;
			}

			if (cb_GioiTinh.SelectedItem == null)
			{
				MessageBox.Show("Vui lòng chọn Giới tính.", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
				return false;
			}
			if (string.IsNullOrEmpty(cb_MaLop.SelectedValue?.ToString()))
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
			if (dgv.CurrentRow != null && dgv.CurrentRow.Index >= 0)
			{
				
				string maHS = dgv.CurrentRow.Cells["MaHS"].Value.ToString();

				
				DialogResult confirm = MessageBox.Show(
					"Bạn có chắc chắn muốn xóa học sinh này không?",
					"Xác nhận xóa",
					MessageBoxButtons.YesNo,
					MessageBoxIcon.Question
				);
				if (confirm == DialogResult.Yes)
				{
					
					if (hocSinhBUS.DeleteHocSinh(maHS))
					{
						MessageBox.Show("Xóa học sinh thành công!");
						LoadData(maGVCN); 
					}
					else
					{
						MessageBox.Show("Có lỗi xảy ra khi xóa học sinh.");
					}
				}
			}
			else
			{
				MessageBox.Show("Vui lòng chọn một học sinh để xóa.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
			}
		}
		private bool IsNameValid(string name)
		{

			return System.Text.RegularExpressions.Regex.IsMatch(name, @"^[\p{L}\s]+$");
		}
		private void groupBox1_Enter(object sender, EventArgs e)
		{

		}
		private bool IsAddressValid(string address)
		{
			
			return System.Text.RegularExpressions.Regex.IsMatch(address, @"^[\p{L}0-9\s,.-]+$");
		}
	}
}
