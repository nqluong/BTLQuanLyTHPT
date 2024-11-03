using BUS;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows.Forms;
using Excel = Microsoft.Office.Interop.Excel;
using DataTable = System.Data.DataTable;
using Microsoft.Office.Interop.Excel;
using System.Runtime.InteropServices;
using System.Security.Cryptography;
namespace GUI
{
    public partial class frmThoiKhoaBieu : UserControl
    {
        private string MaGV {  get; set; }
        public frmThoiKhoaBieu(string maGV)
        {
            InitializeComponent();
            dgvLichHoc.AutoGenerateColumns = false;
            this.MaGV = maGV;
        }


        ThoiKhoaBieuBUS thoiKhoaBieuBUS = new ThoiKhoaBieuBUS();
        MonHocBus monHocBus = new MonHocBus();
        GiaoVienBUS giaoVienBUS = new GiaoVienBUS();
        DataTable table_TKB = new DataTable();

        private void frmThoiKhoaBieu_Load(object sender, EventArgs e)
        {
            foreach(Control control in grSua.Controls)
            {
                control.Visible = false;
            }
            grSua.Visible = false;
            btnLuu.Enabled = false;
            btnSua.Enabled = false;
            LoadThoiKhoaBieu();
            LoadHocKy();
            LoadLopHoc();
            dtpNgayDay.Checked = false;
        }
        private void LoadThoiKhoaBieu()
        {
            
            table_TKB = thoiKhoaBieuBUS.GetThoiKhoaBieu(MaGV);
            dgvLichHoc.DataSource = table_TKB;
            dgvLichHoc.Columns["NgayBatDau"].DefaultCellStyle.Format = "dd/MM/yyyy";
            dgvLichHoc.Columns["NgayKetThuc"].DefaultCellStyle.Format = "dd/MM/yyyy";


            dgvLichHoc.Columns["MaLop"].DataPropertyName = "MaLop";
            dgvLichHoc.Columns["TenLop"].DataPropertyName = "TenLop";
            dgvLichHoc.Columns["TenGv"].DataPropertyName = "TenGiaoVien";
            dgvLichHoc.Columns["MaTKB"].DataPropertyName = "MaTKB";
            dgvLichHoc.Columns["MonHoc"].DataPropertyName = "TenMon";
            dgvLichHoc.Columns["MaHK"].DataPropertyName = "MaHK";
            dgvLichHoc.Columns["HocKy"].DataPropertyName = "TenHK";
            dgvLichHoc.Columns["Tiet"].DataPropertyName = "Tiet";
            dgvLichHoc.Columns["Thu"].DataPropertyName = "Thu";
            dgvLichHoc.Columns["NgayBatDau"].DataPropertyName = "NgayBatDau";
            dgvLichHoc.Columns["NgayKetThuc"].DataPropertyName = "NgayKetThuc";
        }

        private (string thu, int? tietHoc, string maLop, string maHK, string khoiLop, DateTime? ngayDay) GetSearchParameters()
        {
            string thu = cbThu.SelectedItem?.ToString();
            int? tietHoc = null;
            if (cbTiet.SelectedItem != null)
            {
                string selectedTiet = cbTiet.SelectedItem.ToString();
                if (int.TryParse(Regex.Match(selectedTiet, @"\d+$").Value, out int tiet))
                {
                    tietHoc = tiet;
                }
            }
            
            string maLop = cbLopHoc.SelectedValue?.ToString();
            string maHK = cbKyHoc.SelectedValue?.ToString();
            string khoiLop = cbKhoiLop.SelectedItem?.ToString();
            DateTime? ngayDay = dtpNgayDay.Checked ? (DateTime?)dtpNgayDay.Value.Date : null;

            return (thu, tietHoc, maLop, maHK, khoiLop, ngayDay);
        }
        private void LoadHocKy()
        {
            
            DataTable dtMonHoc = monHocBus.GetHocKy(MaGV);


            cbKyHoc.Items.Clear();
            
            cbKyHoc.DataSource = dtMonHoc;
            cbKyHoc.DisplayMember = "TenHK";
            cbKyHoc.ValueMember = "MaHK";
            cbKyHoc.SelectedIndex = -1;
        }

        private void LoadLopHoc()
        {
            
            DataTable dtLopHoc = thoiKhoaBieuBUS.GetLopHoc();


            cbLopHoc.Items.Clear();

            cbLopHoc.DataSource = dtLopHoc;
            cbLopHoc.DisplayMember = "TenLop";
            cbLopHoc.ValueMember = "MaLop";
            cbLopHoc.SelectedIndex = -1;
        }
        private void btnXem_Click(object sender, EventArgs e)
        {
            var parameters = GetSearchParameters();

            DataTable dt = 
                thoiKhoaBieuBUS.SearchThoiKhoaBieu(MaGV ,parameters.thu, parameters.tietHoc, parameters.maLop, parameters.khoiLop, parameters.maHK, parameters.ngayDay);

            if (dt != null && dt.Rows.Count > 0)
            {
                dgvLichHoc.DataSource = dt;    
            }
            else
            {
                MessageBox.Show("Không tìm thấy kết quả phù hợp.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            ResetControls();
            
        }
        private void ResetControls()
        {
            cbThu.SelectedIndex = -1; 
            cbTiet.SelectedIndex = -1; 
            cbLopHoc.SelectedIndex = -1; 
            cbKyHoc.SelectedIndex = -1; 
            dtpNgayDay.Checked = false; 
            cbKhoiLop.SelectedIndex = -1;
        }
        private void btnXuatFile_Click(object sender, EventArgs e)
        {
            try
            {
                var parameters = GetSearchParameters();
                if (string.IsNullOrEmpty(parameters.maHK))
                {
                    MessageBox.Show("Vui lòng chọn học kỳ để tạo file !","Thông Báo", MessageBoxButtons.OK);
                }
                DataTable dt = 
                    thoiKhoaBieuBUS.SearchThoiKhoaBieu(MaGV, parameters.thu, parameters.tietHoc,  parameters.maLop, parameters.khoiLop, parameters.maHK, parameters.ngayDay);
                if (dt == null || dt.Rows.Count == 0)
                {
                    MessageBox.Show("Khong co du lieu de xuat !", "Thong bao", MessageBoxButtons.OK);
                    return;
                }
                ExportToExcel(dt);
            }
            catch(Exception ex)
            {
                MessageBox.Show("Loi " + ex.GetType().Name + " - " + ex.Message, "Thong bao", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        private void ExportToExcel(DataTable dt)
        {
            var saveFileDialog = new SaveFileDialog
            {
                Filter = "Excel files (*.xlsx)|*.xlsx",
                FileName = ".xlsx"
            };
            if (saveFileDialog.ShowDialog() == DialogResult.OK)
            {
                Excel.Application excelApp = null;
                Excel.Workbook workbook = null;
                Excel.Worksheet worksheet = null;

                try
                {
                    excelApp = new Excel.Application();
                    workbook = excelApp.Workbooks.Add(Type.Missing);
                    worksheet = workbook.ActiveSheet;
                    worksheet.Name = "Thời Khóa Biểu";

                    // Tiêu đề chính
                    worksheet.Cells[1, 1] = "Thời Khóa Biểu " + dt.Rows[0]["TenHK"].ToString();
                    Excel.Range titleRange = worksheet.Range[worksheet.Cells[1, 1], worksheet.Cells[1, 8]];
                    titleRange.Merge();
                    titleRange.Font.Size = 16;
                    titleRange.Font.Bold = true;
                    titleRange.HorizontalAlignment = Excel.XlHAlign.xlHAlignCenter;

                    // Tiêu đề cột (các thứ trong tuần)
                    string[] thuArray = { "Thứ 2", "Thứ 3", "Thứ 4", "Thứ 5", "Thứ 6", "Thứ 7" };
                    for (int i = 0; i < thuArray.Length; i++)
                    {
                        worksheet.Cells[3, i + 2] = thuArray[i];
                    }

                    // Tiêu đề hàng (các tiết học)
                    for (int tiet = 1; tiet <= 10; tiet++)
                    {
                        worksheet.Cells[tiet + 3, 1] = "Tiết " + tiet;
                    }

                    // Đổ dữ liệu từ DataTable vào Excel
                    foreach (DataRow row in dt.Rows)
                    {
                        int tiet = Convert.ToInt32(row["Tiet"]);
                        string thu = row["Thu"].ToString();
                        string monHoc = row["TenMon"].ToString();
                        string lop = row["TenLop"].ToString();

                        // Xác định vị trí trong bảng Excel
                        int thuColumn = Array.IndexOf(thuArray, thu) + 2;
                        int tietRow = tiet + 3;

                        worksheet.Cells[tietRow, thuColumn] = monHoc + "\n" + lop;
                    }

                    // Định dạng bảng
                    Excel.Range tableRange = worksheet.Range[worksheet.Cells[3, 1], worksheet.Cells[13, 8]];
                    tableRange.Borders.LineStyle = Excel.XlLineStyle.xlContinuous;
                    tableRange.HorizontalAlignment = Excel.XlHAlign.xlHAlignCenter;
                    tableRange.VerticalAlignment = Excel.XlVAlign.xlVAlignCenter;
                    tableRange.WrapText = true;
                    tableRange.Columns.AutoFit();
                    for (int i = 1; i <= 8; i++)
                    {
                        worksheet.Columns[i].ColumnWidth = 20; 
                    }
                    // Lưu file
                    workbook.SaveAs(saveFileDialog.FileName);

                    MessageBox.Show("Xuất file Excel thành công!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                catch (COMException comEx)
                {
                    MessageBox.Show($"COM Error: {comEx.Message}", "Lỗi xuất Excel", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Có lỗi khi xuất file Excel: " + ex.Message, "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                finally
                {
                    //Giai phong tai nguyen

                    if(worksheet != null) Marshal.ReleaseComObject(worksheet);
                    if(workbook != null)
                    {
                        workbook.Close(false);
                        Marshal.ReleaseComObject(workbook);
                    }
                    if(excelApp != null)
                    {
                        excelApp.Quit();
                        Marshal.ReleaseComObject(excelApp);
                    }
                    worksheet = null;
                    workbook = null;
                    excelApp = null;
                    GC.Collect();
                    GC.WaitForPendingFinalizers();
                }
            }
        }

        private void btnSua_Click(object sender, EventArgs e)
        {
            grSua.Visible = true;
            foreach (Control control in grSua.Controls)
            {
                control.Visible = true;
            }

            btnXem.Enabled = false;
            btnXuatFile.Enabled = false;
            btnLuu.Enabled = true ;


            var selectedRow = dgvLichHoc.SelectedRows[0];
            int tiet = Convert.ToInt32(selectedRow.Cells["Tiet"].Value);
            string thu = selectedRow.Cells["Thu"].Value.ToString();

            DataTable dtMonHoc = monHocBus.GetMonHocAll();

            cbMonHocSua.Items.Clear();

            cbMonHocSua.DataSource = dtMonHoc;
            cbMonHocSua.DisplayMember = "TenMH";
            cbMonHocSua.ValueMember = "MaMH";
            cbMonHocSua.SelectedIndex = -1;

            cbGiaoVienSua.DataSource = null;

            cbMonHocSua.Tag = new { tiet, thu };
        }

        private void dgvLichHoc_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if(e.RowIndex >= 0)
            {
                btnSua.Enabled = true ;

            }
        }

        private void cbMonHocSua_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cbMonHocSua.SelectedValue == null) return;

            string maMon = cbMonHocSua.SelectedValue.ToString();

            if (cbMonHocSua.SelectedValue == null || cbMonHocSua.Tag == null) return;

            
            string maMonHoc = cbMonHocSua.SelectedValue.ToString();

            
            var tag = (dynamic)cbMonHocSua.Tag;
            int tiet = tag.tiet;
            string thu = tag.thu;

            string maHK = Convert.ToString(dgvLichHoc.CurrentRow.Cells["MaHK"].Value);
            DataTable dsGiaoVien = giaoVienBUS.GetGiaoVienByMonHocAndTime(maMonHoc, tiet, thu, maHK);
            cbGiaoVienSua.DataSource = dsGiaoVien;
            cbGiaoVienSua.DisplayMember = "HoTen";
            cbGiaoVienSua.ValueMember = "MaGV";
        }

        private void btnLuu_Click(object sender, EventArgs e)
        {
            if(dgvLichHoc.CurrentRow == null) 
                return;
            string maMH = cbMonHocSua.SelectedValue?.ToString();
            string maGV = cbGiaoVienSua.SelectedValue?.ToString();
            if (!dgvLichHoc.Columns.Contains("MaTKB"))
            {
                MessageBox.Show("Cột 'MaTKB' không tồn tại trong DataGridView.");
                return;
            }
            DataGridViewRow selectedRow = dgvLichHoc.CurrentRow;
            string maTkb = Convert.ToString(dgvLichHoc.CurrentRow.Cells["MaTKB"].Value);
            
            bool isUpdate = thoiKhoaBieuBUS.UpdateLichHoc(maTkb, maMH, maGV);

            if (isUpdate) {
                LoadThoiKhoaBieu();
                btnLuu.Enabled = false;
                btnSua.Enabled = false;
                btnXem.Enabled = true;
                btnXuatFile.Enabled = true;
                foreach (Control control in grSua.Controls)
                {
                    control.Visible = false;
                }
                grSua.Visible = false;
            }
            else
            {
                MessageBox.Show("Loi khong the cap nhat !");
            }

        }


    }
}
