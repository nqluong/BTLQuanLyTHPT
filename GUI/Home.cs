using BUS;
using DTO;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace GUI
{
    public partial class frmHome : Form
    {
        private bool isLogginOut = false;
        private string maTK;
        private string tenTK;
        GiaoVienBUS giaoVienBUS = new GiaoVienBUS();
       
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


        private void frmHome_Load(object sender, EventArgs e)
        {
            LoadGiaoVienByMaTK();
        }
        
        private void LoadGiaoVienByMaTK()
        {
            GiaoVien giaoVien = giaoVienBUS.GetGiaoVienByMaTK(maTK);
            lbHoTen.Text = "Họ Tên:" + giaoVien.HoTen;

            string relativePath = Path.Combine("..", "..", "Images", "avt", giaoVien.Anh);


            string imagePath = Path.GetFullPath(relativePath);

            
            if (File.Exists(imagePath))
            {
                ptrAnh.Image = Image.FromFile(imagePath);
            }
            else
            {
                MessageBox.Show("Không tìm thấy ảnh đại diện.");
            }
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
            isLogginOut = true;
            frmDangNhap frmDangNhap = new frmDangNhap();
            frmDangNhap.Show();
            this.Close();
            
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
            if (!isLogginOut)
            {
                Application.Exit();
            }
            
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
            GiaoVien giaoVien = giaoVienBUS.GetGiaoVienByMaTK(maTK);
            frmHocSinh hocSinh = new frmHocSinh(giaoVien.MaGV);
            hocSinh.Dock = DockStyle.Fill;
            palThongTin.Controls.Add(hocSinh);
            hocSinh.Show();
        }

        private void btnGiaoVien_Click(object sender, EventArgs e)
        {
            palThongTin.Controls.Clear();
            GiaoVien giaoVienBus = giaoVienBUS.GetGiaoVienByMaTK(maTK);
            frmGiaoVien giaoVien = new frmGiaoVien(maTK, this);
            giaoVien.Dock = DockStyle.Fill;
            palThongTin.Controls.Add(giaoVien);
            giaoVien.Show();
        }
    }

}


