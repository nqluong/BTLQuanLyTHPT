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
    public partial class frmThoiKhoaBieu : UserControl
    {
        public frmThoiKhoaBieu()
        {
            InitializeComponent();
        }


        ThoiKhoaBieuBUS thoiKhoaBieuBUS = new ThoiKhoaBieuBUS();
        DataTable table_TKB = new DataTable();

        private void LoadThoiKhoaBieu()
        {
            table_TKB = thoiKhoaBieuBUS.GetThoiKhoaBieu();
            dgvLichHoc.DataSource = table_TKB; 
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

        private void frmThoiKhoaBieu_Load(object sender, EventArgs e)
        {
            LoadThoiKhoaBieu();
        }
    }
}
