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
    public partial class frmQuenMK : Form
    {
        TaiKhoanBus taiKhoanBus = new TaiKhoanBus();
        private bool isLogginOut = false;
        public frmQuenMK()
        {
            InitializeComponent();
          
        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            isLogginOut = true;
            frmDangNhap frmDangNhap = new frmDangNhap();
            frmDangNhap.Show();
            this.Close();
        }

        //private void linkLabel2_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        //{
        //    frmSignUp frmSignUp = new frmSignUp();
        //    this.Hide();
        //    frmSignUp.ShowDialog();
        //}

        private void btnXacNhan_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text.Trim();
            string result = taiKhoanBus.GetPasswordByEmail(email);
            if (result == "Vui lòng nhập địa chỉ email của bạn !")
            {
                MessageBox.Show(result);
            }
            else if(result == null)
            {
                MessageBox.Show("Email không tồn tại");
            }
            else
            {
                MessageBox.Show("Mật khẩu của bạn là: " + result);
            }
        }

        private void frmQuenMK_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (!isLogginOut)
            {
                Application.Exit();
            }
        }
    }
}
