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
        private string loggedInTeacherMaTK;
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
            loggedInTeacherMaTK = maTK;

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


        private void btnGiaoVien_Click(object sender, EventArgs e)
        {
            palThongTin.Controls.Clear();
            frmGiaoVien giaoVien = new frmGiaoVien(loggedInTeacherMaTK,this);
            giaoVien.Dock = DockStyle.Fill;
            palThongTin.Controls.Add(giaoVien);
            giaoVien.Show();
        }
        public void ShowLopHoc()
        {
            palThongTin.Controls.Clear();
            frmLopHoc lopHoc = new frmLopHoc(); 
            lopHoc.Dock = DockStyle.Fill;
            palThongTin.Controls.Add(lopHoc);
            lopHoc.Show();
        }
    }
}
