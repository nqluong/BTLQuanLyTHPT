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
        
        private void LoadGiaoVienByMaTK()
        {
            GiaoVien giaoVien = giaoVienBUS.GetGiaoVienByMaTK(maTK);
            lbHoTen.Text = "Họ Tên:" + giaoVien.HoTen;

        }

        private void btnTKB_Click(object sender, EventArgs e)
        {
            palThongTin.Controls.Clear();
            GiaoVien giaoVien = giaoVienBUS.GetGiaoVienByMaTK(maTK);
            frmThoiKhoaBieu thoiKhoaBieu = new frmThoiKhoaBieu(giaoVien.MaGV);
            thoiKhoaBieu.Dock = DockStyle.Fill;
            palThongTin.Controls.Add(thoiKhoaBieu);
            thoiKhoaBieu.Show();
        }



        private void btnDangXuat_Click(object sender, EventArgs e)
        {
            frmDangNhap frmDangNhap = new frmDangNhap();
            this.Close();
            frmDangNhap.Show();
        }

        private void btnDiemSo_Click(object sender, EventArgs e)
        {
            shouldLoadData = true;
            GiaoVien giaoVien = giaoVienBUS.GetGiaoVienByMaTK(maTK);
            palThongTin.Controls.Clear();
            frmDiemSo diemso = new frmDiemSo(giaoVien.MaGV);
            diemso.ShouldLoadData = shouldLoadData;
            diemso.Dock = DockStyle.Fill;
            palThongTin.Controls.Add(diemso);
            diemso.Show();
        }


        private void frmHome_FormClosing(object sender, FormClosingEventArgs e)
        {
            Application.Exit();
        }

        private void btnLopHoc_Click(object sender, EventArgs e)
        {
            shouldLoadData = false;
            palThongTin.Controls.Clear();
            GiaoVien giaoVien = giaoVienBUS.GetGiaoVienByMaTK(maTK);
            frmLopHoc lophoc = new frmLopHoc(giaoVien.MaGV);
            frmDiemSo diemso = new frmDiemSo(giaoVien.MaGV);
            diemso.ShouldLoadData = shouldLoadData;
            lophoc.Dock = DockStyle.Fill;
            palThongTin.Controls.Add(lophoc);
            lophoc.Show();
        }

        public void ShowUserControl(UserControl control)
        {
            palThongTin.Controls.Clear(); // Xóa `UserControl` cũ
            control.Dock = DockStyle.Fill; // Căn chỉnh để `UserControl` chiếm toàn bộ `Panel`
            palThongTin.Controls.Add(control); // Thêm `UserControl` mới vào `Panel`
        }
        public bool shouldLoadData = false;


        private void btnBaoCao_Click(object sender, EventArgs e)
        {
            palThongTin.Controls.Clear();
            GiaoVien giaoVien = giaoVienBUS.GetGiaoVienByMaTK(maTK);
            frmBaoCao baocao = new frmBaoCao(giaoVien.MaGV);
            baocao.Dock = DockStyle.Fill;
            palThongTin.Controls.Add(baocao);
            baocao.Show();
        }

        private void btnHocSinh_Click(object sender, EventArgs e)
        {
            palThongTin.Controls.Clear();
            frmHocSinh hocSinh = new frmHocSinh();
            hocSinh.Dock = DockStyle.Fill;
            palThongTin.Controls.Add(hocSinh);
            hocSinh.Show();
        }

        private void btnGiaoVien_Click(object sender, EventArgs e)
        {
            palThongTin.Controls.Clear();
            frmGiaoVien giaoVien = new frmGiaoVien(maTK, this);
            giaoVien.Dock = DockStyle.Fill;
            palThongTin.Controls.Add(giaoVien);
            giaoVien.Show();
        }
    }

}


