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
        public frmGiaoVien()
        {
            InitializeComponent();
        }
        GiaoVienBUS giaoVienBUS = new GiaoVienBUS();
        private void frmGiaoVien_Load(object sender, EventArgs e)
        {
            LoadGiaoVien();
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
        }
        private void LoadGiaoVien()
        {
            DataTable dataTable = giaoVienBUS.GetGiaoVien();

            if (dataTable.Rows.Count > 0)
            {
                dgvGiaoVien.DataSource = dataTable;
            }
            else
            {
                MessageBox.Show("Không có giáo viên nào trong cơ sở dữ liệu.");
            }
            dgvGiaoVien.Columns[0].HeaderText = "Mã giáo viên";
            dgvGiaoVien.Columns[1].HeaderText = "Họ tên ";
            dgvGiaoVien.Columns[2].HeaderText = "Mã tài khoản";
            dgvGiaoVien.Columns[3].HeaderText = "Ngày sinh";
            dgvGiaoVien.Columns[4].HeaderText = "Địa chỉ";
            dgvGiaoVien.Columns[5].HeaderText = "Giới tính";
            btnLuu.Enabled = false;
            btnTim.Enabled = true;
            btnSua.Enabled = true;
            btnBoqua.Enabled = true;
            btnXoa.Enabled = true;
            btnThem.Enabled = true;
        }

        private void btnTim_Click(object sender, EventArgs e)
        {
            
            string maTK = txtMaTK.Text.Trim(); // Lấy mã tài khoản từ TextBox
            if (string.IsNullOrEmpty(maTK))
            {
                MessageBox.Show("Vui lòng nhập mã tài khoản.");
                return;
            }

            DataTable dt = new DataTable(); 
            dt.Columns.Add("Mã Giáo Viên", typeof(string));
            dt.Columns.Add("Họ Tên", typeof(string));
            dt.Columns.Add("Mã tài khoản" , typeof(string));
            dt.Columns.Add("Ngày Sinh", typeof(DateTime));
            dt.Columns.Add("Địa Chỉ", typeof(string));
            dt.Columns.Add("Giới Tính", typeof(string));

            GiaoVien giaoVien = giaoVienBUS.GetGiaoVienByMaTK(maTK); 

            if (giaoVien != null)
            {
                dt.Rows.Add(giaoVien.MaGV, giaoVien.HoTen, giaoVien.MaTK, giaoVien.NgaySinh, giaoVien.DiaChi, giaoVien.GioiTinh /*? "Nam" : "Nữ"*/);
                dgvGiaoVien.DataSource = dt; 
            }
            else
            {
                MessageBox.Show("Không tìm thấy giáo viên với mã tài khoản này.");
                ResetValue();
                txtMaTK.Focus();
            }
        }

        private void dgvGiaoVien_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if(e.RowIndex >= 0)
            {
                DataGridViewRow row = dgvGiaoVien.Rows[e.RowIndex];
                txtMaGV.Text = row.Cells[0].Value.ToString();
                txtTenGV.Text = row.Cells[1].Value.ToString();
                txtMaTK.Text = row.Cells[2].Value.ToString();
                dtpNgaySinhGV.Text = row.Cells[3].Value.ToString();
                txtDiaChiGV.Text = row.Cells[4].Value.ToString();
                cbGioitinh.Text = row.Cells[5].Value.ToString();
                btnTim.Enabled = false;
            }
        }

        private void btnSua_Click(object sender, EventArgs e)
        {
            txtMaGV.Enabled = false;
            btnThem.Enabled = false;
            btnXoa.Enabled = false;
            btnTim.Enabled = false;
            btnLuu.Enabled = true;
            btnBoqua.Enabled = true;
            btnThoat.Enabled = true;
        }

        private void btnBoqua_Click(object sender, EventArgs e)
        {
            ResetValue();
            LoadGiaoVien();
            txtMaGV.Enabled = true;
        }

        private void btnThem_Click(object sender, EventArgs e)/*khi nhấn thêm nhớ thay đổi ngày thì mới thêm được*/
        {
            if (string.IsNullOrWhiteSpace(txtMaGV.Text) || string.IsNullOrWhiteSpace(txtTenGV.Text) || string.IsNullOrWhiteSpace(txtDiaChiGV.Text) ||
                /*string.IsNullOrWhiteSpace(txtMaTK.Text) ||*/ cbGioitinh.SelectedItem == null || !dtpNgaySinhGV.Checked)
            {
                MessageBox.Show("Vui lòng điền đầy đủ thông tin.");
                return;
            }

            // Kiểm tra mã giáo viên trùng lặp
            GiaoVien existingGiaoVien = giaoVienBUS.GetGiaoVienByMaTK(txtMaTK.Text.Trim());
            if (existingGiaoVien != null && existingGiaoVien.MaGV == txtMaGV.Text.Trim())
            {
                MessageBox.Show("Mã giáo viên đã tồn tại. Vui lòng nhập mã khác.");
                return;
            }
            // Tạo một đối tượng GiaoVien mới với các thông tin từ các ô nhập liệu
            GiaoVien giaoVien = new GiaoVien
            {
                MaGV = txtMaGV.Text.Trim(),
                HoTen = txtTenGV.Text.Trim(),
                NgaySinh = dtpNgaySinhGV.Value,
                DiaChi = txtDiaChiGV.Text.Trim(),
                GioiTinh = cbGioitinh.SelectedItem.ToString() == "True"
                /*MaTK = txtMaTK.Text.Trim()*/
            };

            // Gọi phương thức thêm giáo viên từ lớp GiaoVienBUS
            bool isAdded = giaoVienBUS.AddGiaoVien(giaoVien);

            if (isAdded)
            {
                MessageBox.Show("Thêm giáo viên thành công.");
                LoadGiaoVien(); // Tải lại dữ liệu sau khi thêm mới
            }
            else
            {
                MessageBox.Show("Không thể thêm giáo viên. Vui lòng kiểm tra lại.");
            }
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            string maGV = txtMaGV.Text.Trim();
            if (!string.IsNullOrEmpty(maGV))
            {

                DialogResult confirmResult = MessageBox.Show("Bạn có chắc chắn muốn xóa giáo viên này không?","Xác nhận xóa", MessageBoxButtons.YesNo);
                if (confirmResult == DialogResult.Yes)
                {
                    bool isDeleted = giaoVienBUS.DeleteGiaoVien(maGV);

                    if (isDeleted)
                    {
                        MessageBox.Show("Xóa giáo viên thành công.");
                        LoadGiaoVien(); // Tải lại dữ liệu sau khi xóa
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
            // Kiểm tra xem các trường có được điền đủ không
            if (string.IsNullOrWhiteSpace(txtMaGV.Text) || string.IsNullOrWhiteSpace(txtTenGV.Text) || string.IsNullOrWhiteSpace(txtDiaChiGV.Text) ||
                string.IsNullOrWhiteSpace(txtMaTK.Text) || !dtpNgaySinhGV.Checked || cbGioitinh.SelectedItem == null) 
            {
                MessageBox.Show("Vui lòng điền đầy đủ thông tin trước khi lưu.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return; // Dừng lại nếu không đủ thông tin
            }
            try
            {
                // Tạo đối tượng GiaoVien từ dữ liệu nhập
                GiaoVien giaoVien = new GiaoVien
                {
                    MaGV = txtMaGV.Text,
                    HoTen = txtTenGV.Text,
                    NgaySinh = dtpNgaySinhGV.Value,
                    DiaChi = txtDiaChiGV.Text,
                    GioiTinh = cbGioitinh.SelectedItem.ToString() == "True",
                    MaTK = txtMaTK.Text
                };

                // Gọi hàm cập nhật
                bool success = giaoVienBUS.UpdateGiaoVien(giaoVien);
                if (success)
                {
                    MessageBox.Show("Cập nhật giáo viên thành công.");
                    LoadGiaoVien(); // Tải lại danh sách
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            txtMaGV.Enabled= true;
        }
    }
}
