using BUS;
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
            dgvLop.Columns["GVCN"].DataPropertyName = "gvcn";
            dgvLop.Columns["GV"].DataPropertyName = "gvday";
            dgvLop.Columns["SiSo"].DataPropertyName = "siso";
        }
        private void LoadcbLopHoc()
        {
            DataTable dtLopHoc = lopBus.GetLopHoc();
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
            string tenGiaoVien= txtGVCN.Text.Trim();
            string maLop = cbLop.SelectedValue?.ToString();
            string khoi;
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
    }
}
