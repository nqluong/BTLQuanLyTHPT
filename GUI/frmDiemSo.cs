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
    public partial class frmDiemSo : UserControl
    {
        public frmDiemSo()
        {
            InitializeComponent();
        }

        private void frmDiemSo_Load(object sender, EventArgs e)
        {
            LoadDiemSo();
        }

        DiemSoBUS DiemSobus = new DiemSoBUS();
        DataTable table_DiemSo = new DataTable();

        public void LoadDiemSo()
        {
            string MaGV = "GV001";
            table_DiemSo = DiemSobus.GetTableDiemSo(MaGV);
            dgvDiemSo.DataSource = table_DiemSo;

            //dgvDiemSo.Columns["MaDiem"].Visible = false;
            //dgvDiemSo.Columns["NgaySinh"].DefaultCellStyle.Format = "dd/MM/yyyy";

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

            dgvDiemSo.Columns["Edit"].DisplayIndex = dgvDiemSo.Columns.Count - 1;
            dgvDiemSo.Columns["Cancel"].DisplayIndex = dgvDiemSo.Columns.Count - 1;
            dgvDiemSo.ReadOnly = true;
            dgvDiemSo.Columns["Cancel"].Visible = false;
            dgvDiemSo.Columns["Edit"].ReadOnly = false;

            ResetValue();
            txtMaDiem.Enabled = false;
            txtMaMH.Enabled = false;
            txtMaHS.Enabled = false;
            txtDiemM.Enabled = false;
            txtDiem15p.Enabled = false;
            txtDiem45p.Enabled = false;
            txtDiemGK.Enabled = false;
            txtDiemCK.Enabled = false;
        }

        private void dgvDiemSo_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            string columnClicked = dgvDiemSo.Columns[e.ColumnIndex].Name;
            if (columnClicked == "Edit")
            {
                string buttonClicked = dgvDiemSo.Rows[e.RowIndex].Cells[e.ColumnIndex].Value.ToString();
                if (buttonClicked == "Edit")
                {
                    int i = e.RowIndex;

                    txtMaDiem.Text = dgvDiemSo.Rows[i].Cells["MaDiem"].Value.ToString();
                    txtMaMH.Text = dgvDiemSo.Rows[i].Cells["MaMH"].Value.ToString();
                    txtMaHS.Text = dgvDiemSo.Rows[i].Cells["MaHS"].Value.ToString();
                    txtDiemM.Text = dgvDiemSo.Rows[i].Cells["DiemMieng"].Value.ToString();
                    txtDiem15p.Text = dgvDiemSo.Rows[i].Cells["Diem15p"].Value.ToString();
                    txtDiem45p.Text = dgvDiemSo.Rows[i].Cells["Diem45p"].Value.ToString();
                    txtDiemGK.Text = dgvDiemSo.Rows[i].Cells["DiemGiuaKy"].Value.ToString();
                    txtDiemCK.Text = dgvDiemSo.Rows[i].Cells["DiemCuoiKy"].Value.ToString();


                    txtMaMH.Enabled = true;
                    txtMaHS.Enabled = true;
                    txtDiemM.Enabled = true;
                    txtDiem15p.Enabled = true;
                    txtDiem45p.Enabled = true;
                    txtDiemGK.Enabled = true;
                    txtDiemCK.Enabled = true;
                    txtMaMH.Focus();
                    dgvDiemSo.Columns["Cancel"].Visible = true;
                }
            }
            else if (columnClicked == "Cancel")
            {
                string buttonClicked = dgvDiemSo.Rows[e.RowIndex].Cells[e.ColumnIndex].Value.ToString();
                if (buttonClicked == "Cancel")
                {
                    dgvDiemSo.Columns["Cancel"].Visible = false;
                    LoadDiemSo();
                }
            }
        }

        private void dgvDiemSo_RowPrePaint(object sender, DataGridViewRowPrePaintEventArgs e)
        {
            dgvDiemSo.Rows[e.RowIndex].Cells["STT"].Value = e.RowIndex + 1;
            

        }

        private void ResetValue()
        {
            txtMaHS.Text = "";
            txtMaDiem.Text = "";
            txtMaMH.Text = "";
            txtDiemM.Text = "";
            txtDiem15p.Text = "";
            txtDiem45p.Text = "";
            txtDiemGK.Text = "";
            txtDiemCK.Text = "";
        }

        private void btnCapNhat_Click(object sender, EventArgs e)
        {
            string MaDiem = txtMaDiem.Text;
            string MaMH = txtMaMH.Text;
            string MaHS = txtMaHS.Text;
            float DiemM = float.Parse(txtDiemM.Text);
            float Diem15p = float.Parse(txtDiem15p.Text);
            float Diem45p = float.Parse(txtDiem45p.Text);
            float DiemGiuaKy = float.Parse(txtDiemGK.Text);
            float DiemCuoiKy = float.Parse(txtDiemCK.Text);

            DiemSobus.UpdateDiemSo(MaDiem, MaMH, MaHS, DiemM, Diem15p, Diem45p, DiemGiuaKy, DiemCuoiKy);
            LoadDiemSo();
        }

        private void txtDiem15p_KeyPress(object sender, KeyPressEventArgs e)
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
        
        

        private void txtDiemM_KeyPress(object sender, KeyPressEventArgs e)
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

        private void txtMaMH_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar) && !char.IsLetter(e.KeyChar))
            {
                e.Handled = true; // Ngăn không cho nhập ký tự không hợp lệ
            }
        }

        private void txtMaHS_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar) && !char.IsLetter(e.KeyChar))
            {
                e.Handled = true; // Ngăn không cho nhập ký tự không hợp lệ
            }
        }
    }
}
