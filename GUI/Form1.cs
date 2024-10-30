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
    public partial class frmHome : Form
    {

        private string maTK;
        private string tenTK;
        //mau
        GiaoVienBUS giaoVienBUS = new GiaoVienBUS();
        DataTable dt = new DataTable();
        public frmHome()
        {
            InitializeComponent();
        }
        public frmHome(string maTk, string tenTK)
        {
            InitializeComponent();
            this.maTK = maTk;
            this.tenTK = tenTK;


        }
        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void frmHome_Load(object sender, EventArgs e)
        {
            LoadGiaoVienByMaTK();
        }
        //Code mau
        private void LoadGiaoVienByMaTK()
        {
            GiaoVien giaoVien = giaoVienBUS.GetGiaoVienByMaTK(maTK);
            lbHoTen.Text = "Họ Tên:" + giaoVien.HoTen;

        }

        private void btnTKB_Click(object sender, EventArgs e)
        {
            palThongTin.Controls.Clear();
            frmThoiKhoaBieu thoiKhoaBieu = new frmThoiKhoaBieu();
            thoiKhoaBieu.Dock = DockStyle.Fill;
            palThongTin.Controls.Add(thoiKhoaBieu);
            thoiKhoaBieu.Show();
        }

		private void btnGiaoVien_Click(object sender, EventArgs e)
		{

		}

		private void btnGiaoVien_Click_1(object sender, EventArgs e)
		{

		}

		private void btnLopHoc_Click(object sender, EventArgs e)
		{

		}

		private void btnDiemSo_Click(object sender, EventArgs e)
		{

		}

		private void btnHocSinh_Click_2(object sender, EventArgs e)
		{
			palThongTin.Controls.Clear();
			frmHocSinh hocSinh = new frmHocSinh();
			hocSinh.Dock = DockStyle.Fill;
			palThongTin.Controls.Add(hocSinh);
			hocSinh.Show();
		}
	}
}
