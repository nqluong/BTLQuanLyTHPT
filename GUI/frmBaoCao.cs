using BUS;
using DTO;
using Microsoft.Reporting.WinForms;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
<<<<<<< HEAD
using System.IO;
=======
>>>>>>> a7389adb06dae7d81018b7d4406d551c9fd41961
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
<<<<<<< HEAD
            string relativePath = @"..\..\Report1.rdlc";
            string reportPath = Path.Combine(Directory.GetCurrentDirectory(), relativePath);
            reportViewer1.LocalReport.ReportPath = reportPath;

=======
            reportViewer1.LocalReport.ReportPath = "D:\\Ki 5\\Lap trinh truc quan\\BTL\\GUI\\Report1.rdlc";
>>>>>>> a7389adb06dae7d81018b7d4406d551c9fd41961
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
<<<<<<< HEAD
            string relativePath = @"..\..\Report2.rdlc"; // Đường dẫn tương đối
            string reportPath = Path.Combine(Directory.GetCurrentDirectory(), relativePath);
            reportViewer1.LocalReport.ReportPath = reportPath;

=======
            reportViewer1.LocalReport.ReportPath = "D:\\Ki 5\\Lap trinh truc quan\\BTL\\GUI\\Report2.rdlc";
>>>>>>> a7389adb06dae7d81018b7d4406d551c9fd41961
            reportViewer1.LocalReport.DataSources.Clear();
            ReportDataSource rds = new ReportDataSource("BaoCaoMon", baoCaos);
            reportViewer1.LocalReport.DataSources.Add(rds);
            reportViewer1.LocalReport.Refresh();
            reportViewer1.RefreshReport();
        }
<<<<<<< HEAD

        private void cbLop_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
=======
>>>>>>> a7389adb06dae7d81018b7d4406d551c9fd41961
    }
}
