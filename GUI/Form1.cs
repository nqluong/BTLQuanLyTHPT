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
    public partial class frmHome : Form
    {

        //mau
        GiaoVienBUS giaoVienBUS = new GiaoVienBUS();
        DataTable dt = new DataTable();
        public frmHome()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void frmHome_Load(object sender, EventArgs e)
        {

        }
        //Code mau
        private void LoadGiaoVien()
        {
            dt = giaoVienBUS.GetTableGiaoVien();
            //
        }
    }
}
