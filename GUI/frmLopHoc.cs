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
    public partial class frmLopHoc : UserControl
    {
        private frmDiemSo frmDiemSo;
        private string magv;
        LopHocBUS lopBus = new LopHocBUS();
        DataTable table_LH = new DataTable();
        public frmLopHoc(string magv)
        {
            InitializeComponent();
            dgvLop.AutoGenerateColumns = false;
            this.magv = magv;
        }
        private void frmLopHoc_Load(object sender, EventArgs e)
        {
            LoadLopHoc();
            LoadcbLopHoc();
        }
        public void LoadLopHoc()
        {
            table_LH = lopBus.LoadDSLop(magv);
            dgvLop.DataSource = table_LH;
            dgvLop.Columns["MaLop"].DataPropertyName = "MaLop";
            dgvLop.Columns["TenLop"].DataPropertyName = "TenLop";
            dgvLop.Columns["Khoi"].DataPropertyName = "TenKL";
            dgvLop.Columns["MonHoc"].DataPropertyName = "TenMH";
            dgvLop.Columns["GVCN"].DataPropertyName = "gvcn";
            dgvLop.Columns["GV"].DataPropertyName = "gvday";
            dgvLop.Columns["SiSo"].DataPropertyName = "siso";
        }
        private void LoadcbLopHoc()
        {
            DataTable dtLopHoc = lopBus.GetLopHoc(magv);
            cbLop.Items.Clear();
            cbLop.DataSource = dtLopHoc;
            cbLop.DisplayMember = "TenLop";
            cbLop.ValueMember = "MaLop";
            cbLop.SelectedIndex = -1;
        }
        
        private void ResetControls()
        {
            txtGVCN.Clear();
            cbLop.SelectedIndex = -1;
            txtKhoi.Clear();
        }
        private void btnTimKiem_Click(object sender, EventArgs e)
        {
            string tenGiaoVien;
            string maLop = cbLop.SelectedValue?.ToString();
            string khoi;
            if (txtGVCN.Text == "")
            {
                tenGiaoVien = null;
            }
            else
            {
                tenGiaoVien = txtGVCN.Text.Trim();
            }
            if (txtKhoi.Text == "")
            {
                khoi = null;
            }
            else
            {
                khoi = txtKhoi.Text.Trim();
            }
            DataTable dt = lopBus.SearchLop(tenGiaoVien, maLop, khoi, magv);
            if (dt != null && dt.Rows.Count > 0)
            {
                dgvLop.DataSource = dt;
            }
            else
            {
                MessageBox.Show("Không tìm thấy kết quả phù hợp.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            ResetControls();
        }
        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }
        private string GetMaLopFromDataGridView()
        {
            if (dgvLop.CurrentRow != null) // Kiểm tra hàng hiện tại
            {
                var currentRow = dgvLop.CurrentRow;
                return currentRow.Cells["MaLop"].Value.ToString();
            }
            return null;
        }
        private void btnChon_Click(object sender, EventArgs e)
        {
            string maLop = GetMaLopFromDataGridView().Trim();
            string maGV = magv;
            int ktform = 3;

            if (!string.IsNullOrEmpty(maLop))
            {
                var diemSoControl = new frmDiemSo(maGV); // Khởi tạo `UserControl`
                diemSoControl.ClearData();
                diemSoControl.LoadTimKiem(maLop, maGV); // Gọi phương thức khởi tạo dữ liệu
                diemSoControl.LoadLopHoc();
                diemSoControl.LoadMonHoc();
                diemSoControl.LoadNamHoc();
                diemSoControl.LoadHocKy();
                diemSoControl.kt = ktform;

                // Gọi `ShowUserControl` để hiển thị `UserControl` trong `mainPanel`
                var mainForm = (frmHome)this.ParentForm; // Chuyển đổi `Form` chính sang `MainForm`
                mainForm.ShowUserControl(diemSoControl);
            }
            else
            {
                MessageBox.Show("Vui lòng chọn một lớp để tiếp tục.");
            }
        }
    }
}
