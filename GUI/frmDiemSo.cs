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
        string magiaovien;
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
            }
        }

        DiemSoBUS DiemSobus = new DiemSoBUS();
        DataTable table_DiemSo = new DataTable();
        DataTable dt = new DataTable();

        //Hàm load dữ liệu lên dgv
        public void LoadDiemSo()
        {
            table_DiemSo = DiemSobus.GetTableDiemSo(magiaovien);
            dgvDiemSo.DataSource = table_DiemSo;

            dgvDiemSo.Columns["MaDiem"].Visible = false;
            //dgvDiemSo.Columns["NgaySinh"].DefaultCellStyle.Format = "dd/MM/yyyy";
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


            ResetValue();
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

            DataTable dtMonHoc = DiemSobus.GetMonHoc();


            cboTenMH.Items.Clear();

            cboTenMH.DataSource = dtMonHoc;
            cboTenMH.DisplayMember = "TenMH";
            cboTenMH.ValueMember = "MaMH";
            cboTenMH.SelectedIndex = -1;
        }

        //Load dữ liệu lên cboTenLop
        public void LoadLopHoc()
        {

            DataTable dtLopHoc = DiemSobus.GetLopHoc();


            cboTenLop.Items.Clear();

            cboTenLop.DataSource = dtLopHoc;
            cboTenLop.DisplayMember = "TenLop";
            cboTenLop.ValueMember = "MaLop";
            cboTenLop.SelectedIndex = -1;
        }
        string madiem;

        //Xử lí sự kiện khi click vào button Edit
        private void dgvDiemSo_CellClick(object sender, DataGridViewCellEventArgs e)
        {

            if (e.ColumnIndex >= 0 && e.RowIndex >= 0)
            {
                string columnClicked = dgvDiemSo.Columns[e.ColumnIndex].Name;
                if (columnClicked == "Edit")
                {
                    string buttonClicked = dgvDiemSo.Rows[e.RowIndex].Cells[e.ColumnIndex].Value.ToString();
                    if (buttonClicked == "Edit")
                    {
                        btnCapNhat.Enabled = true;

                        int i = e.RowIndex;
                        madiem = dgvDiemSo.Rows[i].Cells["MaDiem"].Value.ToString();
                        txtDiemM.Text = Convert.ToDecimal(dgvDiemSo.Rows[i].Cells["DiemMieng"].Value).ToString("0.00");
                        txtDiem15p.Text = Convert.ToDecimal(dgvDiemSo.Rows[i].Cells["Diem15p"].Value).ToString("0.00");
                        txtDiem45p.Text = Convert.ToDecimal(dgvDiemSo.Rows[i].Cells["Diem45p"].Value).ToString("0.00");
                        txtDiemGK.Text = Convert.ToDecimal(dgvDiemSo.Rows[i].Cells["DiemGiuaKy"].Value).ToString("0.00");
                        txtDiemCK.Text = Convert.ToDecimal(dgvDiemSo.Rows[i].Cells["DiemCuoiKy"].Value).ToString("0.00");



                        txtDiemM.Enabled = true;
                        txtDiem15p.Enabled = true;
                        txtDiem45p.Enabled = true;
                        txtDiemGK.Enabled = true;
                        txtDiemCK.Enabled = true;
                        txtDiemM.Focus();
                        dgvDiemSo.Columns["Cancel"].Visible = true;
                    }
                }
                else if (columnClicked == "Cancel")
                {
                    string buttonClicked = dgvDiemSo.Rows[e.RowIndex].Cells[e.ColumnIndex].Value.ToString();
                    if (buttonClicked == "Cancel")
                    {
                        btnCapNhat.Enabled = false;
                        dgvDiemSo.Columns["Cancel"].Visible = false;
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
                        //kt = checkNewLoad;
                    }
                }
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

            dgvDiemSo.Columns["Edit"].DisplayIndex = dgvDiemSo.Columns.Count - 1;
            dgvDiemSo.Columns["Cancel"].DisplayIndex = dgvDiemSo.Columns.Count - 1;
            dgvDiemSo.ReadOnly = true;
            dgvDiemSo.Columns["Cancel"].Visible = false;
            dgvDiemSo.Columns["Edit"].ReadOnly = false;

            txtDiemM.Enabled = false;
            txtDiem15p.Enabled = false;
            txtDiem45p.Enabled = false;
            txtDiemGK.Enabled = false;
            txtDiemCK.Enabled = false;

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
                    //kt = checkNewLoad;
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

            dt = DiemSobus.GetTableTimKiem(maLopHoc, maMonHoc, magiaovien);

            if (dt != null && dt.Rows.Count > 0)
            {
                dgvDiemSo.DataSource = dt;
                dgvDiemSo.Columns["DiemMieng"].DefaultCellStyle.Format = "0.00";
                dgvDiemSo.Columns["Diem15p"].DefaultCellStyle.Format = "0.00";
                dgvDiemSo.Columns["Diem45p"].DefaultCellStyle.Format = "0.00";
                dgvDiemSo.Columns["DiemGiuaKy"].DefaultCellStyle.Format = "0.00";
                dgvDiemSo.Columns["DiemCuoiKy"].DefaultCellStyle.Format = "0.00";
                foreach (DataRow row in dt.Rows)
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
                ResetValue();
            }
            else
            {
                MessageBox.Show("Không tìm thấy kết quả phù hợp.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                ResetValue();
            }

            
        }
        private string maloppp, magvvv;
        public void LoadTimKiem(string maLop, string magv)
        {
            magvvv = magv;
            maloppp = maLop;
            dt = DiemSobus.GetTableTimKiem(maLop, null, magv);

            if (dt != null && dt.Rows.Count > 0)
            {
                dgvDiemSo.DataSource = dt;
                foreach (DataRow row in dt.Rows)
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
            if (table_DiemSo.Rows.Count > 0 || dt.Rows.Count>0) // TH có dữ liệu để ghi
            {
                // Khai báo và khởi tạo các đối tượng Excel
                Excel.Application exApp = new Excel.Application();
                Excel.Workbook exBook = exApp.Workbooks.Add(Excel.XlWBATemplate.xlWBATWorksheet);
                Excel.Worksheet exSheet = (Excel.Worksheet)exBook.Worksheets[1];

                // Định dạng chung
                exSheet.get_Range("A1:G1").Merge(true);
                exSheet.Cells[1, 1].Font.Size = 12;
                exSheet.Cells[1, 1].Font.Bold = true;
                exSheet.Cells[1, 1].Font.Color = Color.Blue;
                exSheet.Cells[1, 1].Value = "ANH LÊ VĂN CHUNG";

                exSheet.get_Range("A2:G1").Merge(true);
                exSheet.Cells[2, 1].Font.Size = 12;
                exSheet.Cells[2, 1].Font.Bold = true;
                exSheet.Cells[2, 1].Font.Color = Color.Blue;
                exSheet.Cells[2, 1].Value = "Địa chỉ: CÔNG TIN NGHỆ THÔNG TIN 1 - K63";

                exSheet.get_Range("A3:G1").Merge(true);
                exSheet.Cells[3, 1].Font.Size = 12;
                exSheet.Cells[3, 1].Font.Bold = true;
                exSheet.Cells[3, 1].Font.Color = Color.Blue;
                exSheet.Cells[3, 1].Value = "Điện thoại: 0365606175";

                // Tiêu đề danh sách
                exSheet.get_Range("B5:G5").Merge(true);
                exSheet.Cells[5, 2].Font.Size = 13;
                exSheet.Cells[5, 2].Font.Bold = true;
                exSheet.Cells[5, 2].Font.Color = Color.Red;
                exSheet.Cells[5, 2].Value = "DANH SÁCH ĐIỂM";

                exSheet.get_Range("B7:H7").Font.Bold = true;
                exSheet.get_Range("B7:H7").HorizontalAlignment = Excel.XlHAlign.xlHAlignCenter;
                exSheet.get_Range("B7:H7").VerticalAlignment = Excel.XlVAlign.xlVAlignCenter;
                exSheet.get_Range("B7:H7").Interior.Color = Color.LightGray;

                // Định dạng tiêu đề bảng
                exSheet.get_Range("B7:H7").Font.Bold = true;
                exSheet.get_Range("B7:H7").HorizontalAlignment = Excel.XlHAlign.xlHAlignCenter;
                exSheet.Cells[7, 2].Value = "STT";
                exSheet.Cells[7, 3].Value = "Mã học sinh";
                exSheet.Cells[7, 4].Value = "Tên học sinh";
                exSheet.Cells[7, 5].Value = "Điểm miệng";
                exSheet.Cells[7, 6].Value = "Điểm 15 phút";
                exSheet.Cells[7, 7].Value = "Điểm 45 phút";
                exSheet.Cells[7, 8].Value = "Điểm giữa kỳ";
                exSheet.Cells[7, 9].Value = "Điểm cuối kỳ";
                exSheet.Cells[7, 10].Value = "Điểm trung bình";
                exSheet.Cells[7, 11].Value = "Tên môn học";
                exSheet.Cells[7, 12].Value = "Tên lớp học";

                // In dữ liệu
                for (int i = 0; i < table_DiemSo.Rows.Count; i++)
                {
                    exSheet.Cells[i + 8, 2].Value = (i + 1).ToString();
                    //exSheet.Cells[i + 8, 1].Value = table_DiemSo.Rows[i]["STT"].ToString();
                    exSheet.Cells[i + 8, 3].Value = table_DiemSo.Rows[i]["MaHS"].ToString();
                    exSheet.Cells[i + 8, 4].Value = table_DiemSo.Rows[i]["HoTen"].ToString();
                    exSheet.Cells[i + 8, 5].Value = table_DiemSo.Rows[i]["DIemMieng"].ToString();
                    exSheet.Cells[i + 8, 6].Value = table_DiemSo.Rows[i]["Diem15p"].ToString();
                    exSheet.Cells[i + 8, 7].Value = table_DiemSo.Rows[i]["Diem45p"].ToString();
                    exSheet.Cells[i + 8, 8].Value = table_DiemSo.Rows[i]["DiemGiuaKy"].ToString();
                    exSheet.Cells[i + 8, 9].Value = table_DiemSo.Rows[i]["DiemCuoiKy"].ToString();
                    exSheet.Cells[i + 8, 10].Value = table_DiemSo.Rows[i]["DiemTB"].ToString();
                    exSheet.Cells[i + 8, 11].Value = table_DiemSo.Rows[i]["TenMH"].ToString();
                    exSheet.Cells[i + 8, 12].Value = table_DiemSo.Rows[i]["TenLop"].ToString();
                }
                exSheet.get_Range("B7:H7").EntireColumn.AutoFit();


                exSheet.Name = "Diem";
                dlgSave.Filter = "Excel Document(*.xlsx)|*.xlsx |All files(*.*)|*.*";
                if (dlgSave.ShowDialog() == DialogResult.OK)
                    exBook.SaveAs(dlgSave.FileName.ToString());
                MessageBox.Show("Da xuat ra file execl.");
                exApp.Quit(); 
            }
            else
            {
                MessageBox.Show("Không có danh sách điểm để in");
            }
        }

        
    }
}
