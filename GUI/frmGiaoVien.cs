using BUS;
using DTO;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace GUI
{

    public partial class frmGiaoVien : UserControl
    {
        private frmHome _mainForm;

        private string maTK;
        private string MaGV { get; set; }
        public frmGiaoVien(string maTK, frmHome frmHome)
        {
            InitializeComponent();
            this.maTK = maTK;
            _mainForm = frmHome;
        }
        GiaoVienBUS giaoVienBUS = new GiaoVienBUS();
        private void frmGiaoVien_Load(object sender, EventArgs e)
        {
            LoadGiaoVien();
            LoadMonHoc();
            dtpNgaySinhGV.Checked = false;
            cbGioitinh.Items.Add("True");
            cbGioitinh.Items.Add("False");
        }

        private void ResetValue()
        {
            txtDiaChiGV.Text = string.Empty;
            txtMaGV.Text = string.Empty;
            txtMaTK.Text = string.Empty;
            txtTenGV.Text = string.Empty;
            dtpNgaySinhGV.Text = string.Empty;
            cbGioitinh.Text = string.Empty;
            cbMH.Text = string.Empty;
        }
        private void LoadGiaoVien()
        {
            GiaoVien giaoVien = giaoVienBUS.GetGiaoVien(maTK);
            MaGV = giaoVien.MaGV;

            if (giaoVien != null)
            {

                DataTable table = new DataTable();
                table.Columns.Add("Thông Tin");
                table.Columns.Add("Dữ liệu");

                table.Rows.Add("Mã GV", giaoVien.MaGV);
                table.Rows.Add("Họ Tên", giaoVien.HoTen);
                table.Rows.Add("Ngày Sinh", giaoVien.NgaySinh.ToShortDateString());
                table.Rows.Add("Địa Chỉ", giaoVien.DiaChi);
                table.Rows.Add("Giới Tính", giaoVien.GioiTinh ? "Nam" : "Nữ");
                table.Rows.Add("Mã TK", giaoVien.MaTK);
                table.Rows.Add("Mã MH", giaoVien.MaMH);
                table.Rows.Add("Lớp chủ nhiệm", giaoVien.TenLop);

                dgvGiaoVien.DataSource = table;

                dgvGiaoVien.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
                dgvGiaoVien.AllowUserToAddRows = false;
                dgvGiaoVien.ReadOnly = true;

                txtMaGV.Enabled = false;
                txtMaGV.Text = giaoVien.MaGV;
                txtMaTK.Enabled = false;
                txtMaTK.Text = giaoVien.MaTK;

            }
            else
            {
                MessageBox.Show("Không tìm thấy thông tin giáo viên.", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

            btnLuu.Enabled = false;
            btnLuuMK.Enabled = false;
            btnSua.Enabled = true;
            btnBoqua.Enabled = true;
            btnXoa.Enabled = true;
        }

        private void LoadMonHoc()
        {

            DataTable monHocs = giaoVienBUS.GetMonHoc(MaGV);

           
            cbMH.Items.Clear();

            // Thêm mã môn học vào ComboBox
            foreach (DataRow row in monHocs.Rows)
            {
                cbMH.Items.Add(row["MaMH"].ToString()); // Chỉ thêm mã môn học
            }
        }
        private void btnSua_Click(object sender, EventArgs e)
        {
            btnXoa.Enabled = false;
            btnLuuMK.Enabled = false;
            btnLuu.Enabled = true;
            btnBoqua.Enabled = true;
            btnThoat.Enabled = true;
        }

        private void btnBoqua_Click(object sender, EventArgs e)
        {
            ResetValue();
            LoadGiaoVien();
            txtMatKhau.Enabled = false;
            txtMatKhau.Text = "Nhập mật khẩu mới";
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            string maGV = txtMaGV.Text.Trim();
            if (!string.IsNullOrEmpty(maGV))
            {

                DialogResult confirmResult = MessageBox.Show("Bạn có chắc chắn muốn xóa giáo viên này không?", "Xác nhận xóa", MessageBoxButtons.YesNo);
                if (confirmResult == DialogResult.Yes)
                {
                    bool isDeleted = giaoVienBUS.DeleteGiaoVien(maGV);

                    if (isDeleted)
                    {
                        MessageBox.Show("Xóa giáo viên thành công.");
                        frmDangNhap dangNhap = new frmDangNhap();
                        _mainForm.Close();
                    }
                    else
                    {
                        MessageBox.Show("Không thể xóa giáo viên.");
                    }
                }
            }
            else
            {
                MessageBox.Show("Vui lòng chọn giáo viên để xóa.");
            }
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn có muốn thoát?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                this.Parent.Controls.Remove(this);
            }
        }

        private void btnLuu_Click(object sender, EventArgs e)/*khi nhấn lưu nhớ thay đổi ngày thì mới lưu được*/
        {

            if (string.IsNullOrWhiteSpace(txtMaGV.Text) || string.IsNullOrWhiteSpace(txtTenGV.Text) || string.IsNullOrWhiteSpace(txtDiaChiGV.Text) ||
                string.IsNullOrWhiteSpace(txtMaTK.Text) || !dtpNgaySinhGV.Checked || cbGioitinh.SelectedItem == null || string.IsNullOrWhiteSpace(cbMH.Text))
            {
                MessageBox.Show("Vui lòng điền đầy đủ thông tin trước khi lưu.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            try
            {

                GiaoVien giaoVien = new GiaoVien
                {
                    MaGV = txtMaGV.Text,
                    HoTen = txtTenGV.Text,
                    NgaySinh = dtpNgaySinhGV.Value,
                    DiaChi = txtDiaChiGV.Text,
                    GioiTinh = cbGioitinh.SelectedItem.ToString() == "True",
                    MaTK = txtMaTK.Text,
                    MaMH = cbMH.Text,
                };


                bool success = giaoVienBUS.UpdateGiaoVien(giaoVien);
                if (success)
                {
                    MessageBox.Show("Cập nhật giáo viên thành công.");
                    LoadGiaoVien();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void btnDoi_Click(object sender, EventArgs e)
        {
            txtMatKhau.Text = string.Empty;
            txtMatKhau.Enabled = true;
            btnXoa.Enabled = false;
            btnLuu.Enabled = false;
            btnBoqua.Enabled = true;
            btnThoat.Enabled = true;
            btnLuuMK.Enabled = true;
        }

        private void btnLuuMK_Click(object sender, EventArgs e)
        {

            string maTK = txtMaTK.Text;
            string matKhauMoi = txtMatKhau.Text.Trim();
            if (string.IsNullOrWhiteSpace(txtMatKhau.Text))
            {
                MessageBox.Show("Vui lòng điền đầy đủ thông tin trước khi lưu.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            GiaoVienBUS giaoVienBUS = new GiaoVienBUS();
            bool result = giaoVienBUS.UpdateMatKhau(maTK, matKhauMoi);

            if (result)
            {
                MessageBox.Show("Đổi mật khẩu thành công.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                btnLuuMK.Enabled = false;
                txtMatKhau.Enabled = false;
                txtMatKhau.Text = "Nhập mật khẩu mới";
            }
            else
            {
                MessageBox.Show("Đổi mật khẩu thất bại. Vui lòng kiểm tra lại.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnTenLop_Click_1(object sender, EventArgs e)
        {
            GiaoVien giaoVien = giaoVienBUS.GetGiaoVienByMaTK(maTK);
            frmHocSinh hocSinh = new frmHocSinh();
            _mainForm.ShowUserControl(hocSinh);
        }
    }
}