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
        public frmQuenMK()
        {
            InitializeComponent();
        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            frmDangNhap frmDangNhap = new frmDangNhap();
            this.Hide();
            frmDangNhap.ShowDialog();
        }

        private void linkLabel2_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            frmSignUp frmSignUp = new frmSignUp();
            this.Hide();
            frmSignUp.ShowDialog();
        }

        private void btnXacNhan_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text.Trim();
            string result = taiKhoanBus.GetPasswordByEmail(email);
            if (result == "Vui long nhap email cua ban")
            {
                MessageBox.Show(result);
            }
            else if(result == null)
            {
                MessageBox.Show("Email khong ton tai");
            }
            else
            {
                MessageBox.Show("Mat khau cua ban la: " + result);
            }
        }
    }
}
