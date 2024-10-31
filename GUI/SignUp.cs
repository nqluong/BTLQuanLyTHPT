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
    public partial class frmSignUp : Form
    {
        TaiKhoanDangKy taiKhoanDK = new TaiKhoanDangKy();
        DangKyBus dangKyBus = new DangKyBus();
        public frmSignUp()
        {
            InitializeComponent();
        }

        private void panel2_Paint(object sender, PaintEventArgs e)
        {

        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            this.Close();
            frmDangNhap login = new frmDangNhap();

           
            Form existingForm = Application.OpenForms.OfType<Form>().FirstOrDefault(f => f.GetType() == login.GetType());

            
            if (existingForm != null)
            {
                existingForm.Show();
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            taiKhoanDK.tenTk = txtTenTk.Text.Trim();
            taiKhoanDK.emailTk = txtEmail.Text.Trim();
            taiKhoanDK.soDT = txtSdt.Text.Trim();
            taiKhoanDK.matkhauTk = txtPassword.Text.Trim();
            
            if(txtPassword.Text != txtRetypePassword.Text)
            {
                MessageBox.Show("Nhập lại mật khẩu không chính xác");
                return;
            }
            string result = dangKyBus.DangKyTK(taiKhoanDK);
            if (result == "")
            {
                DialogResult = MessageBox.Show("Đăng ký tài khoản thành công.\n Bạn có muốn đăng nhập ngay không?","Confirm", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                if(DialogResult == DialogResult.Yes)
                {
                    frmDangNhap frmDangNhap = new frmDangNhap();
                    this.Close();
                    frmDangNhap.ShowDialog();
                }
            }
            else
            {
                MessageBox.Show(result, "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void txtPassword_TextChanged(object sender, EventArgs e)
        {
            txtPassword.PasswordChar = '*';
        }

        private void txtRetypePassword_TextChanged(object sender, EventArgs e)
        {
            txtRetypePassword.PasswordChar = '*';
        }


    }
}
