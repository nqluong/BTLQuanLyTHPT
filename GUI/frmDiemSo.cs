using BUS;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Excel = Microsoft.Office.Interop.Excel;


namespace GUI
{
    public partial class frmDiemSo : UserControl
    {
        public bool ShouldLoadData { get; set; }
        public int kt { get; set; }
        private int checkNewLoad = 1;
        private int checkTimKiem = 2;
        private SaveFileDialog dlgSave = new SaveFileDialog();
        private string magiaovien;
        private string madiem;
        private string maloppp, magvvv;
        DataTable table_DiemSo = new DataTable();
        DiemSoBUS DiemSobus = new DiemSoBUS();
        MonHocBus monHocBus = new MonHocBus();
        LopHocBUS lopHocBUS = new LopHocBUS();
        public frmDiemSo(string maGv)
        {
            this.magiaovien = maGv;
            InitializeComponent();
        }

        private void frmDiemSo_Load(object sender, EventArgs e)
        {
            if (ShouldLoadData)
            {
                kt = checkNewLoad;
                LoadDiemSo();
                LoadLopHoc();
                LoadMonHoc();
                LoadNamHoc();
                LoadHocKy();

            }
        }
        //Hàm load dữ liệu lên dgv
        public void LoadDiemSo()
        {
            
            table_DiemSo = DiemSobus.GetTableDiemSo(magiaovien);
            dgvDiemSo.DataSource = table_DiemSo;
            frmdgv();
            ResetValue();
        }

        private void frmdgv()
        {
            dgvDiemSo.Columns["MaHS"].HeaderText = "Mã Học Sinh";
            dgvDiemSo.Columns["HoTen"].HeaderText = "Họ Tên";
            dgvDiemSo.Columns["MaDiem"].HeaderText = "Mã Điểm";
            dgvDiemSo.Columns["DiemMieng"].HeaderText = "Điểm Miệng";
            dgvDiemSo.Columns["Diem15p"].HeaderText = "Điểm 15 Phút";
            dgvDiemSo.Columns["Diem45p"].HeaderText = "Điểm 45 Phút";
            dgvDiemSo.Columns["DiemGiuaKy"].HeaderText = "Điểm Giữa Kỳ";
            dgvDiemSo.Columns["DiemCuoiKy"].HeaderText = "Điểm Cuối Kỳ";
            dgvDiemSo.Columns["DiemTB"].HeaderText = "Điểm TB";
            dgvDiemSo.Columns["TenMH"].HeaderText = "Tên Môn Học";
            dgvDiemSo.Columns["TenLop"].HeaderText = "Tên Lớp";
            dgvDiemSo.Columns["TenHK"].HeaderText = "Tên học kỳ";
            dgvDiemSo.Columns["NamHoc"].HeaderText = "Năm học";

            dgvDiemSo.Columns["MaDiem"].Visible = false;
            dgvDiemSo.Columns["DiemMieng"].DefaultCellStyle.Format = "0.00";
            dgvDiemSo.Columns["Diem15p"].DefaultCellStyle.Format = "0.00";
            dgvDiemSo.Columns["Diem45p"].DefaultCellStyle.Format = "0.00";
            dgvDiemSo.Columns["DiemGiuaKy"].DefaultCellStyle.Format = "0.00";
            dgvDiemSo.Columns["DiemCuoiKy"].DefaultCellStyle.Format = "0.00";
            foreach (DataRow row in table_DiemSo.Rows)
            {
                double diemMieng = Convert.ToDouble(row["DiemMieng"]);
                double diem15p = Convert.ToDouble(row["Diem15p"]);
                double diem45p = Convert.ToDouble(row["Diem45p"]);
                double diemGK = Convert.ToDouble(row["DiemGiuaKy"]);
                double diemCK = Convert.ToDouble(row["DiemCuoiKy"]);

                // Tính điểm trung bình
                double diemTB = (diemMieng * 1 + diem15p * 1 + diem45p * 2 + diemGK * 2 + diemCK * 3) / (1 + 1 + 2 + 2 + 3);
                // Gán điểm trung bình vào cột mới
                row["DiemTB"] = Math.Round(diemTB, 2); // Làm tròn 2 chữ số
            }
        }

        public void ClearData()
        {
            if (dgvDiemSo.DataSource is BindingSource bindingSource)
            {
                bindingSource.Clear(); // Xóa tất cả các phần tử trong BindingSource
            }
            else
            {
                dgvDiemSo.Rows.Clear(); // Xóa tất cả các hàng nếu không sử dụng BindingSource
            }
        }

        //Load dữ liệu lên cboMonHoc
        public void LoadMonHoc()
        {
            DataTable dtMonHoc = monHocBus.GetMonHoc(magiaovien);

            cboTenMH.Items.Clear();
            cboTenMH.DataSource = dtMonHoc;
            cboTenMH.DisplayMember = "TenMH";
            cboTenMH.ValueMember = "MaMH";
            cboTenMH.SelectedIndex = -1;
        }

        //Load dữ liệu lên cboTenLop
        public void LoadLopHoc()
        {
            DataTable dtLopHoc = lopHocBUS.GetLopHoc(magiaovien);
            cboTenLop.DataSource = dtLopHoc;
            cboTenLop.DisplayMember = "TenLop";
            cboTenLop.ValueMember = "MaLop";
            if (kt == 1)
            {
                cboTenLop.SelectedIndex = -1;
            }
        }

        public void LoadNamHoc()
        {
            DataTable dtNamHoc = DiemSobus.GetNamHoc();
            cboNamHoc.DataSource = dtNamHoc;
            cboNamHoc.DisplayMember = "NamHoc";
            cboNamHoc.ValueMember = "NamHoc";
            cboNamHoc.SelectedIndex = -1;
        }

        public void LoadHocKy()
        {
            var namhoc = cboNamHoc.SelectedValue?.ToString();
            if (!string.IsNullOrEmpty(namhoc))
            {
                DataTable dtHocKy = DiemSobus.GetHocKy(namhoc);
                cboHocKy.DataSource = dtHocKy;
                cboHocKy.DisplayMember = "TenHK";
                cboHocKy.ValueMember = "MaHK";
                cboHocKy.SelectedIndex = -1;
            }

        }


        //Xử lí sự kiện khi click vào button Edit
        private void dgvDiemSo_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            
            if (dgvDiemSo.CurrentRow != null) // Kiểm tra hàng hiện tại
            {
                var currentRow = dgvDiemSo.CurrentRow;
                madiem = currentRow.Cells["MaDiem"].Value.ToString();
                txtDiemM.Text = Convert.ToDecimal(currentRow.Cells["DiemMieng"].Value).ToString("0.00");
                txtDiem15p.Text = Convert.ToDecimal(currentRow.Cells["Diem15p"].Value).ToString("0.00");
                txtDiem45p.Text = Convert.ToDecimal(currentRow.Cells["Diem45p"].Value).ToString("0.00");
                txtDiemGK.Text = Convert.ToDecimal(currentRow.Cells["DiemGiuaKy"].Value).ToString("0.00");
                txtDiemCK.Text = Convert.ToDecimal(currentRow.Cells["DiemCuoiKy"].Value).ToString("0.00");
                txtDiemM.Enabled = true;
                txtDiem15p.Enabled = true;
                txtDiem45p.Enabled = true;
                txtDiemGK.Enabled = true;
                txtDiemCK.Enabled = true;
                txtDiemM.Focus();

                btnInExcel.Enabled = false;
                btnTiemKiem.Enabled = false;
                btnBoQua.Enabled = true;
                btnCapNhat.Enabled = true;
            }
            else
            {
            }
        }

        //Tạo dữ liệu vào cột STT
        private void dgvDiemSo_RowPrePaint(object sender, DataGridViewRowPrePaintEventArgs e)
        {
            dgvDiemSo.Rows[e.RowIndex].Cells["STT"].Value = e.RowIndex + 1;
        }

        //Tạo hàm cập nhật dữ liệu mới lại từ đầu
        private void ResetValue()
        {
            txtDiemM.Text = "";
            txtDiem15p.Text = "";
            txtDiem45p.Text = "";
            txtDiemGK.Text = "";
            txtDiemCK.Text = "";

            dgvDiemSo.ReadOnly = true;

            txtDiemM.Enabled = false;
            txtDiem15p.Enabled = false;
            txtDiem45p.Enabled = false;
            txtDiemGK.Enabled = false;
            txtDiemCK.Enabled = false;

            btnInExcel.Enabled = true;
            btnTiemKiem.Enabled = true;
            btnBoQua.Enabled = false;
            btnCapNhat.Enabled = false;
        }

        //Hàm cập nhật dữ liệu khi ấn vào button cập nhật
        private void btnCapNhat_Click(object sender, EventArgs e)
        {
            if (decimal.TryParse(txtDiemM.Text.Replace(",", "."), NumberStyles.Float, CultureInfo.InvariantCulture, out decimal DiemM) &&
                decimal.TryParse(txtDiem15p.Text.Replace(",", "."), NumberStyles.Float, CultureInfo.InvariantCulture, out decimal Diem15p) &&
                decimal.TryParse(txtDiem45p.Text.Replace(",", "."), NumberStyles.Float, CultureInfo.InvariantCulture, out decimal Diem45p) &&
                decimal.TryParse(txtDiemGK.Text.Replace(",", "."), NumberStyles.Float, CultureInfo.InvariantCulture, out decimal DiemGiuaKy) &&
                decimal.TryParse(txtDiemCK.Text.Replace(",", "."), NumberStyles.Float, CultureInfo.InvariantCulture, out decimal DiemCuoiKy))
            {
                // Hiển thị giá trị điểm để kiểm tra
                float roundedDiemM = (float)Math.Round(DiemM, 2);
                float roundedDiem15p = (float)Math.Round(Diem15p, 2);
                float roundedDiem45p = (float)Math.Round(Diem45p, 2);
                float roundedDiemGiuaKy = (float)Math.Round(DiemGiuaKy, 2);
                float roundedDiemCuoiKy = (float)Math.Round(DiemCuoiKy, 2);

                // Kiểm tra điểm hợp lệ
                if (DiemM < 0 || DiemM > 10)
                {
                    MessageBox.Show("Nhập lại điểm miệng (điểm phải trong khoảng từ 0 đến 10)");
                    txtDiemM.Focus();
                }
                else if (Diem15p < 0 || Diem15p > 10)
                {
                    MessageBox.Show("Nhập lại điểm 15 phút (điểm phải trong khoảng từ 0 đến 10)");
                    txtDiem15p.Focus();
                }
                else if (Diem45p < 0 || Diem45p > 10)
                {
                    MessageBox.Show("Nhập lại điểm 45 phút (điểm phải trong khoảng từ 0 đến 10)");
                    txtDiem45p.Focus();
                }
                else if (DiemGiuaKy < 0 || DiemGiuaKy > 10)
                {
                    MessageBox.Show("Nhập lại điểm giữa kỳ (điểm phải trong khoảng từ 0 đến 10)");
                    txtDiemGK.Focus();
                }
                else if (DiemCuoiKy < 0 || DiemCuoiKy > 10)
                {
                    MessageBox.Show("Nhập lại điểm cuối kỳ (điểm phải trong khoảng từ 0 đến 10)");
                    txtDiemCK.Focus();
                }
                else
                {
                    // Đẩy giá trị đã làm tròn lên DataGridView
                    DiemSobus.UpdateDiemSo(madiem, roundedDiemM, roundedDiem15p, roundedDiem45p, roundedDiemGiuaKy, roundedDiemCuoiKy);
                    if (kt==2)
                    {
                        LoadTimKiem();
                    }
                    else if(kt==1)
                    {
                        LoadDiemSo();
                    }
                    else if (kt == 3)
                    {
                        LoadTimKiem(maloppp, magvvv);
                    }
                    btnInExcel.Enabled = true;
                    btnTiemKiem.Enabled = true;
                }
            }
            else
            {
                MessageBox.Show("Vui lòng nhập đúng định dạng điểm.");
            }

        }

        //Hàm Load dữ liệu lên dgv trong chức năng tìm kiếm
        public void LoadTimKiem()
        {
            string maMonHoc = cboTenMH.SelectedValue?.ToString();
            string maLopHoc = cboTenLop.SelectedValue?.ToString();
            string namhoc = cboNamHoc.SelectedValue?.ToString();
            string maHK = cboHocKy.SelectedValue?.ToString();

            table_DiemSo = DiemSobus.GetTableTimKiem(maLopHoc, maMonHoc, magiaovien, namhoc, maHK);

            if (table_DiemSo != null && table_DiemSo.Rows.Count > 0)
            {
                dgvDiemSo.DataSource = table_DiemSo;
                frmdgv();
                ResetValue();
            }
            else
            {
                MessageBox.Show("Không tìm thấy kết quả phù hợp.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                ResetValue();
            }
        }
        public void LoadTimKiem(string maLop, string magv)
        {
            magvvv = magv;
            maloppp = maLop;
            table_DiemSo = DiemSobus.GetTableTimKiem(maLop, null, magv, null, null);

            if (table_DiemSo != null && table_DiemSo.Rows.Count > 0)
            {
                dgvDiemSo.DataSource = table_DiemSo;
                LoadLopHoc();
                cboTenLop.SelectedValue = maLop;
                frmdgv();
                ResetValue();
            }
            else
            {
                MessageBox.Show("Không tìm thấy kết quả phù hợp.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                ResetValue();
            }
        }

        //Hàm xử lí sự kiện khi click vào button Tìm Kiếm
        private void btnTimKiem_Click(object sender, EventArgs e)
        {
            kt = checkTimKiem;
            LoadTimKiem();
        }

        //Hàm điều kiện khi nhập điểm
        private void txtDiem15p_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar) && e.KeyChar != '.')
            {
                e.Handled = true;
            }

            TextBox textBox = sender as TextBox;

            // Đảm bảo chỉ nhập tối đa một dấu "."
            if (e.KeyChar == '.' && textBox.Text.Contains('.'))
            {
                e.Handled = true;
            }
        }

        //Hàm điều kiện khi nhập điểm
        private void txtDiemM_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar) && e.KeyChar != '.')
            {
                e.Handled = true;
            }

            TextBox textBox = sender as TextBox;

            // Đảm bảo chỉ nhập tối đa một dấu "."
            if (e.KeyChar == '.' && textBox.Text.Contains('.'))
            {
                e.Handled = true;
            }
        }

        //Hàm điều kiện khi nhập điểm
        private void txtDiem45p_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar) && e.KeyChar != '.')
            {
                e.Handled = true;
            }

            // Đảm bảo chỉ có thể nhập tối đa một dấu chấm
            if (e.KeyChar == '.' && (sender as TextBox).Text.IndexOf('.') > -1)
            {
                e.Handled = true;
            }
        }

        //Hàm điều kiện khi nhập điểm
        private void txtDiemGK_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar) && e.KeyChar != '.')
            {
                e.Handled = true;
            }

            // Đảm bảo chỉ có thể nhập tối đa một dấu chấm
            if (e.KeyChar == '.' && (sender as TextBox).Text.IndexOf('.') > -1)
            {
                e.Handled = true;
            }
        }

        //Hàm điều kiện khi nhập điểm
        private void txtDiemCK_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar) && e.KeyChar != '.')
            {
                e.Handled = true;
            }

            // Đảm bảo chỉ có thể nhập tối đa một dấu chấm
            if (e.KeyChar == '.' && (sender as TextBox).Text.IndexOf('.') > -1)
            {
                e.Handled = true;
            }
        }

        //Xuất file Excel khi ấn vào button InExcel
        private void btnInExcel_Click(object sender, EventArgs e)
        {
            try
            {
                if (table_DiemSo == null || table_DiemSo.Rows.Count == 0)
                {
                    MessageBox.Show("Khong co du lieu de xuat !", "Thong bao", MessageBoxButtons.OK);
                    return;
                }
                ExportToExcel(table_DiemSo);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Loi " + ex.GetType().Name + " - " + ex.Message, "Thong bao", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void cboNamHoc_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cboNamHoc.SelectedIndex != -1)
            {
                LoadHocKy();
            }
            else
            {
                cboHocKy.DataSource = null; // Xóa dữ liệu học kỳ khi không có năm học nào được chọn
            }
        }

        private void btnBoQua_Click(object sender, EventArgs e)
        {
            btnCapNhat.Enabled = false;
            if (kt == 2)
            {
                LoadTimKiem();
            }
            else if (kt == 1)
            {
                LoadDiemSo();
            }
            else if (kt == 3)
            {
                LoadTimKiem(maloppp, magvvv);
            }
        }

        private void ExportToExcel(DataTable dt)
        {
            var saveFileDialog = new SaveFileDialog
            {
                Filter = "Excel files (*.xlsx)|*.xlsx",
                FileName = "Bảng Điểm.xlsx"
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
                    worksheet.Name = "Bảng Điểm";

                    // Tiêu đề chính
                    worksheet.Cells[1, 1] = "Bảng Điểm";
                    Excel.Range titleRange = worksheet.Range[worksheet.Cells[1, 1], worksheet.Cells[1, 13]]; // Đã thay đổi tới 11
                    titleRange.Merge();
                    titleRange.Font.Size = 16;
                    titleRange.Font.Bold = true;
                    titleRange.HorizontalAlignment = Excel.XlHAlign.xlHAlignCenter;
                    titleRange.Interior.Color = System.Drawing.ColorTranslator.ToOle(System.Drawing.Color.LightGray); // Đổi màu nền tiêu đề

                    // Tiêu đề cột
                    string[] columnTitles = { "STT", "Mã học sinh", "Tên học sinh", "Điểm miệng", "Điểm 15 phút", "Điểm 45 phút", "Điểm giữa kỳ", "Điểm cuối kỳ", "Điểm trung bình", "Tên môn học", "Tên lớp học", "Tên học kỳ", "Năm học" };
                    for (int i = 0; i < columnTitles.Length; i++)
                    {
                        worksheet.Cells[2, i + 1] = columnTitles[i];
                    }

                    // Định dạng hàng tiêu đề
                    Excel.Range headerRange = worksheet.Range[worksheet.Cells[2, 1], worksheet.Cells[2, 13]];
                    headerRange.Font.Bold = true;
                    headerRange.HorizontalAlignment = Excel.XlHAlign.xlHAlignCenter;
                    headerRange.Interior.Color = System.Drawing.ColorTranslator.ToOle(System.Drawing.Color.LightBlue); // Đổi màu nền cho tiêu đề cột
                    headerRange.Borders.LineStyle = Excel.XlLineStyle.xlContinuous;

                    // Xuất dữ liệu
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        worksheet.Cells[i + 3, 1] = (i + 1).ToString(); // STT
                        worksheet.Cells[i + 3, 2] = dt.Rows[i]["MaHS"].ToString(); // Mã học sinh
                        worksheet.Cells[i + 3, 3] = dt.Rows[i]["HoTen"].ToString(); // Tên học sinh
                        worksheet.Cells[i + 3, 4] = dt.Rows[i]["DiemMieng"].ToString(); // Điểm miệng
                        worksheet.Cells[i + 3, 5] = dt.Rows[i]["Diem15p"].ToString(); // Điểm 15 phút
                        worksheet.Cells[i + 3, 6] = dt.Rows[i]["Diem45p"].ToString(); // Điểm 45 phút
                        worksheet.Cells[i + 3, 7] = dt.Rows[i]["DiemGiuaKy"].ToString(); // Điểm giữa kỳ
                        worksheet.Cells[i + 3, 8] = dt.Rows[i]["DiemCuoiKy"].ToString(); // Điểm cuối kỳ
                        worksheet.Cells[i + 3, 9] = dt.Rows[i]["DiemTB"].ToString(); // Điểm trung bình
                        worksheet.Cells[i + 3, 10] = dt.Rows[i]["TenMH"].ToString(); // Tên môn học
                        worksheet.Cells[i + 3, 11] = dt.Rows[i]["TenLop"].ToString(); // Tên lớp học
                        worksheet.Cells[i + 3, 12] = dt.Rows[i]["TenHK"].ToString(); // Tên học kỳ
                        worksheet.Cells[i + 3, 13] = dt.Rows[i]["NamHoc"].ToString(); // Tên năm học

                    }

                    // Định dạng vùng dữ liệu
                    Excel.Range tableRange = worksheet.Range[worksheet.Cells[2, 1], worksheet.Cells[dt.Rows.Count + 2, 13]];

                    // Định dạng viền cho bảng
                    tableRange.Borders.LineStyle = Excel.XlLineStyle.xlContinuous;
                    tableRange.HorizontalAlignment = Excel.XlHAlign.xlHAlignCenter;
                    tableRange.VerticalAlignment = Excel.XlVAlign.xlVAlignCenter;
                    tableRange.WrapText = true;

                    // Căn chỉnh chiều rộng cột
                    for (int i = 1; i <= 13; i++)
                    {
                        worksheet.Columns[i].ColumnWidth = 20; // Đặt chiều rộng cột thành 20
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
                    // Giải phóng tài nguyên
                    if (worksheet != null) Marshal.ReleaseComObject(worksheet);
                    if (workbook != null)
                    {
                        workbook.Close(false);
                        Marshal.ReleaseComObject(workbook);
                    }
                    if (excelApp != null)
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

    }
}
