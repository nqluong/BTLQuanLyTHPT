using BUS;
using DTO;
using Microsoft.Reporting.WinForms;
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
    public partial class frmBaoCao : UserControl
    {
        private string magv;
        BaoCaoBUS baoCaoBUS = new BaoCaoBUS();
        public frmBaoCao(string magv)
        {
            InitializeComponent();
            this.magv = magv;
        }

        private void reportViewer1_Load(object sender, EventArgs e)
        {
            loadbaocaotong();
        }
        private void loadbaocaotong() 
        {
            List<BaoCao> baoCaos = baoCaoBUS.GetBaoCao(magv);
            reportViewer1.LocalReport.ReportPath = "D:\\Ki 5\\Lap trinh truc quan\\BTL\\GUI\\Report1.rdlc";
            reportViewer1.LocalReport.DataSources.Clear();
            ReportDataSource rds = new ReportDataSource("BaoCaoXepLoai", baoCaos);
            reportViewer1.LocalReport.DataSources.Add(rds);
            reportViewer1.LocalReport.Refresh();
            reportViewer1.RefreshReport();

        }
        private void frmBaoCao_Load(object sender, EventArgs e)
        {
            LoadMonHoc();
        }
        private void LoadMonHoc()
        {

            DataTable dtMonHoc = baoCaoBUS.GetMonHoc(magv);
            cbMonHoc.Items.Clear();
            cbMonHoc.DataSource = dtMonHoc;
            cbMonHoc.DisplayMember = "TenMH";
            cbMonHoc.ValueMember = "MaMH";
            cbMonHoc.SelectedIndex = -1;
        }

        private void btnTimKiem_Click(object sender, EventArgs e)
        {
            string mamon = cbMonHoc.SelectedValue?.ToString();
            List<BaoCao> baoCaos = baoCaoBUS.GetBaoCao1(mamon,magv);
            reportViewer1.LocalReport.ReportPath = "D:\\Ki 5\\Lap trinh truc quan\\BTL\\GUI\\Report2.rdlc";
            reportViewer1.LocalReport.DataSources.Clear();
            ReportDataSource rds = new ReportDataSource("BaoCaoMon", baoCaos);
            reportViewer1.LocalReport.DataSources.Add(rds);
            reportViewer1.LocalReport.Refresh();
            reportViewer1.RefreshReport();
        }
    }
}
