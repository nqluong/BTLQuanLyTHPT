
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
using DTO;

namespace GUI
{
    public partial class frmDangNhap : Form
    {
        TaiKhoanBus taiKhoanBus = new TaiKhoanBus();
        
        public frmDangNhap()
        {
            InitializeComponent();

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }


        private void button1_Click(object sender, EventArgs e)
        {

            string tenTk = txtTenTK.Text.Trim();
            string matkhauTk = txtMatKhau.Text.Trim();

            TaiKhoan taikhoan = new TaiKhoan
            {
                tenTk = tenTk,
                matkhauTk = matkhauTk
            };

            try
            {
                // Gọi hàm Đăng Nhập
                LoginResult result = taiKhoanBus.Login(taikhoan);

                if (result != null)
                {
                    MessageBox.Show("Đăng nhập thành công! Chào " + result.tenTk, "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    frmHome frmHome = new frmHome(result.maTk, result.tenTk);
                    frmHome.Show();
                    this.Hide();
                    
                }
                else
                {
                    MessageBox.Show("Đăng nhập thất bại. Vui lòng kiểm tra tên đăng nhập và mật khẩu.", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            catch (ArgumentException ex)
            {
                MessageBox.Show(ex.Message, "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Đã xảy ra lỗi: " + ex.Message, "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            frmSignUp frmSignUp = new frmSignUp();
            this.Hide();
            frmSignUp.ShowDialog();
            
        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            frmQuenMK frmQuenMK = new frmQuenMK();
            this.Hide();
            frmQuenMK.ShowDialog();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            if(txtMatKhau.PasswordChar == '*')
            {
                txtMatKhau.PasswordChar = '\0';
            }
            else
            {
                txtMatKhau.PasswordChar = '*';
            }
        }

        private void frmDangNhap_Load(object sender, EventArgs e)
        {
            txtTenTK.Focus();
            txtMatKhau.PasswordChar = '*';
        }
    }
    
}
