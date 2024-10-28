using BUS;
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
    public partial class frmThoiKhoaBieu : UserControl
    {
        public frmThoiKhoaBieu()
        {
            InitializeComponent();
            dgvLichHoc.AutoGenerateColumns = false;
        }


        ThoiKhoaBieuBUS thoiKhoaBieuBUS = new ThoiKhoaBieuBUS();
        DataTable table_TKB = new DataTable();

        private void frmThoiKhoaBieu_Load(object sender, EventArgs e)
        {
            LoadThoiKhoaBieu();
            LoadMonHoc();
            LoadLopHoc();
            dtpNgayDay.Checked = false;
        }
        private void LoadThoiKhoaBieu()
        {
            table_TKB = thoiKhoaBieuBUS.GetThoiKhoaBieu();
            dgvLichHoc.DataSource = table_TKB;
            dgvLichHoc.Columns["NgayBatDau"].DefaultCellStyle.Format = "dd/MM/yyyy";
            dgvLichHoc.Columns["NgayKetThuc"].DefaultCellStyle.Format = "dd/MM/yyyy";


            dgvLichHoc.Columns["MaLop"].DataPropertyName = "MaLop";
            dgvLichHoc.Columns["TenLop"].DataPropertyName = "TenLop";
            dgvLichHoc.Columns["TenGv"].DataPropertyName = "TenGiaoVien";
            dgvLichHoc.Columns["MonHoc"].DataPropertyName = "TenMon";
            dgvLichHoc.Columns["Tiet"].DataPropertyName = "Tiet";
            dgvLichHoc.Columns["Thu"].DataPropertyName = "Thu";
            dgvLichHoc.Columns["NgayBatDau"].DataPropertyName = "NgayBatDau";
            dgvLichHoc.Columns["NgayKetThuc"].DataPropertyName = "NgayKetThuc";
        }

        private void LoadMonHoc()
        {
            
            DataTable dtMonHoc = thoiKhoaBieuBUS.GetMonHoc();


            cbMonHoc.Items.Clear();
            
            cbMonHoc.DataSource = dtMonHoc;
            cbMonHoc.DisplayMember = "TenMH";
            cbMonHoc.ValueMember = "MaMH";
            cbMonHoc.SelectedIndex = -1;
        }

        private void LoadLopHoc()
        {
            
            DataTable dtLopHoc = thoiKhoaBieuBUS.GetLopHoc();


            cbLopHoc.Items.Clear();

            cbLopHoc.DataSource = dtLopHoc;
            cbLopHoc.DisplayMember = "TenLop";
            cbLopHoc.ValueMember = "MaLop";
            cbLopHoc.SelectedIndex = -1;
        }
        private void btnXem_Click(object sender, EventArgs e)
        {
            string thu = cbThu.SelectedItem?.ToString();
            int? tietHoc = null;
            if (cbTiet.SelectedItem != null)
            {
                string selectedTiet = cbTiet.SelectedItem.ToString();
                if (int.TryParse(Regex.Match(selectedTiet, @"\d+$").Value, out int tiet))
                {
                    tietHoc = tiet;
                }
            }
            string tenGiaoVien = txtTenGV.Text.Trim();


            string maLop = cbLopHoc.SelectedValue?.ToString();
            string maMonHoc = cbMonHoc.SelectedValue?.ToString();

            DateTime? ngayDay = dtpNgayDay.Checked ? (DateTime?)dtpNgayDay.Value.Date : null;


            DataTable dt = thoiKhoaBieuBUS.SearchThoiKhoaBieu(thu, tietHoc, tenGiaoVien, maLop, maMonHoc, ngayDay);

            if (dt != null && dt.Rows.Count > 0)
            {
                dgvLichHoc.DataSource = dt;    
            }
            else
            {
                MessageBox.Show("Không tìm thấy kết quả phù hợp.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            ResetControls();
            
        }
        private void ResetControls()
        {
            cbThu.SelectedIndex = -1; 
            cbTiet.SelectedIndex = -1; 
            txtTenGV.Clear(); 
            cbLopHoc.SelectedIndex = -1; 
            cbMonHoc.SelectedIndex = -1; 
            dtpNgayDay.Checked = false; 
        }
        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }



        private void dgvLichHoc_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }



    }
}
