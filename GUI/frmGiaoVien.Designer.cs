namespace GUI
{
    partial class frmGiaoVien
    {
        /// <summary> 
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.panel1 = new System.Windows.Forms.Panel();
            this.btnDoi = new System.Windows.Forms.Button();
            this.btnLuuMK = new System.Windows.Forms.Button();
            this.txtMatKhau = new System.Windows.Forms.TextBox();
            this.cbMH = new System.Windows.Forms.ComboBox();
            this.lblMH = new System.Windows.Forms.Label();
            this.btnTenLop = new System.Windows.Forms.Button();
            this.splitter1 = new System.Windows.Forms.Splitter();
            this.cbGioitinh = new System.Windows.Forms.ComboBox();
            this.lblGioitinh = new System.Windows.Forms.Label();
            this.btnThoat = new System.Windows.Forms.Button();
            this.btnXoa = new System.Windows.Forms.Button();
            this.btnBoqua = new System.Windows.Forms.Button();
            this.btnLuu = new System.Windows.Forms.Button();
            this.btnSua = new System.Windows.Forms.Button();
            this.txtMaTK = new System.Windows.Forms.TextBox();
            this.lblMaTK = new System.Windows.Forms.Label();
            this.txtDiaChiGV = new System.Windows.Forms.TextBox();
            this.dtpNgaySinhGV = new System.Windows.Forms.DateTimePicker();
            this.lblDiaChi = new System.Windows.Forms.Label();
            this.lblNgaySinh = new System.Windows.Forms.Label();
            this.txtTenGV = new System.Windows.Forms.TextBox();
            this.txtMaGV = new System.Windows.Forms.TextBox();
            this.lblHoTen = new System.Windows.Forms.Label();
            this.lblMaGV = new System.Windows.Forms.Label();
            this.dgvGiaoVien = new System.Windows.Forms.DataGridView();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvGiaoVien)).BeginInit();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.SystemColors.ActiveBorder;
            this.panel1.Controls.Add(this.btnDoi);
            this.panel1.Controls.Add(this.btnLuuMK);
            this.panel1.Controls.Add(this.txtMatKhau);
            this.panel1.Controls.Add(this.cbMH);
            this.panel1.Controls.Add(this.lblMH);
            this.panel1.Controls.Add(this.btnTenLop);
            this.panel1.Controls.Add(this.splitter1);
            this.panel1.Controls.Add(this.cbGioitinh);
            this.panel1.Controls.Add(this.lblGioitinh);
            this.panel1.Controls.Add(this.btnThoat);
            this.panel1.Controls.Add(this.btnXoa);
            this.panel1.Controls.Add(this.btnBoqua);
            this.panel1.Controls.Add(this.btnLuu);
            this.panel1.Controls.Add(this.btnSua);
            this.panel1.Controls.Add(this.txtMaTK);
            this.panel1.Controls.Add(this.lblMaTK);
            this.panel1.Controls.Add(this.txtDiaChiGV);
            this.panel1.Controls.Add(this.dtpNgaySinhGV);
            this.panel1.Controls.Add(this.lblDiaChi);
            this.panel1.Controls.Add(this.lblNgaySinh);
            this.panel1.Controls.Add(this.txtTenGV);
            this.panel1.Controls.Add(this.txtMaGV);
            this.panel1.Controls.Add(this.lblHoTen);
            this.panel1.Controls.Add(this.lblMaGV);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1069, 331);
            this.panel1.TabIndex = 0;
            // 
            // btnDoi
            // 
            this.btnDoi.BackColor = System.Drawing.Color.White;
            this.btnDoi.Font = new System.Drawing.Font("Lucida Sans Unicode", 7.8F);
            this.btnDoi.ForeColor = System.Drawing.SystemColors.Highlight;
            this.btnDoi.Location = new System.Drawing.Point(152, 153);
            this.btnDoi.Name = "btnDoi";
            this.btnDoi.Size = new System.Drawing.Size(121, 23);
            this.btnDoi.TabIndex = 29;
            this.btnDoi.Text = "Đổi mật khẩu";
            this.btnDoi.UseVisualStyleBackColor = false;
            this.btnDoi.Click += new System.EventHandler(this.btnDoi_Click);
            // 
            // btnLuuMK
            // 
            this.btnLuuMK.BackColor = System.Drawing.Color.White;
            this.btnLuuMK.Font = new System.Drawing.Font("Lucida Sans Unicode", 7.8F);
            this.btnLuuMK.ForeColor = System.Drawing.SystemColors.Highlight;
            this.btnLuuMK.Location = new System.Drawing.Point(279, 153);
            this.btnLuuMK.Name = "btnLuuMK";
            this.btnLuuMK.Size = new System.Drawing.Size(121, 23);
            this.btnLuuMK.TabIndex = 28;
            this.btnLuuMK.Text = "Lưu mật khẩu";
            this.btnLuuMK.UseVisualStyleBackColor = false;
            this.btnLuuMK.Click += new System.EventHandler(this.btnLuuMK_Click);
            // 
            // txtMatKhau
            // 
            this.txtMatKhau.BackColor = System.Drawing.Color.White;
            this.txtMatKhau.Enabled = false;
            this.txtMatKhau.Font = new System.Drawing.Font("Lucida Sans Unicode", 7.8F);
            this.txtMatKhau.Location = new System.Drawing.Point(150, 192);
            this.txtMatKhau.Name = "txtMatKhau";
            this.txtMatKhau.Size = new System.Drawing.Size(250, 27);
            this.txtMatKhau.TabIndex = 27;
            this.txtMatKhau.Text = "Nhập mật khẩu mới";
            // 
            // cbMH
            // 
            this.cbMH.BackColor = System.Drawing.Color.White;
            this.cbMH.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbMH.FormattingEnabled = true;
            this.cbMH.Location = new System.Drawing.Point(697, 180);
            this.cbMH.Name = "cbMH";
            this.cbMH.Size = new System.Drawing.Size(100, 24);
            this.cbMH.TabIndex = 25;
            // 
            // lblMH
            // 
            this.lblMH.AutoSize = true;
            this.lblMH.Font = new System.Drawing.Font("Lucida Sans Unicode", 7.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblMH.Location = new System.Drawing.Point(694, 156);
            this.lblMH.Name = "lblMH";
            this.lblMH.Size = new System.Drawing.Size(84, 16);
            this.lblMH.TabIndex = 24;
            this.lblMH.Text = "Mã môn học";
            // 
            // btnTenLop
            // 
            this.btnTenLop.BackColor = System.Drawing.Color.Silver;
            this.btnTenLop.Font = new System.Drawing.Font("Lucida Sans Unicode", 7.8F);
            this.btnTenLop.ForeColor = System.Drawing.SystemColors.Highlight;
            this.btnTenLop.Location = new System.Drawing.Point(718, 257);
            this.btnTenLop.Name = "btnTenLop";
            this.btnTenLop.Size = new System.Drawing.Size(121, 23);
            this.btnTenLop.TabIndex = 22;
            this.btnTenLop.Text = "Lớp chủ nhiệm";
            this.btnTenLop.UseVisualStyleBackColor = true;
            this.btnTenLop.Click += new System.EventHandler(this.btnTenLop_Click_1);
            // 
            // splitter1
            // 
            this.splitter1.Location = new System.Drawing.Point(0, 0);
            this.splitter1.Name = "splitter1";
            this.splitter1.Size = new System.Drawing.Size(3, 331);
            this.splitter1.TabIndex = 20;
            this.splitter1.TabStop = false;
            // 
            // cbGioitinh
            // 
            this.cbGioitinh.BackColor = System.Drawing.Color.White;
            this.cbGioitinh.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbGioitinh.FormattingEnabled = true;
            this.cbGioitinh.Location = new System.Drawing.Point(697, 104);
            this.cbGioitinh.Name = "cbGioitinh";
            this.cbGioitinh.Size = new System.Drawing.Size(100, 24);
            this.cbGioitinh.TabIndex = 19;
            // 
            // lblGioitinh
            // 
            this.lblGioitinh.AutoSize = true;
            this.lblGioitinh.Font = new System.Drawing.Font("Lucida Sans Unicode", 7.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblGioitinh.Location = new System.Drawing.Point(694, 85);
            this.lblGioitinh.Name = "lblGioitinh";
            this.lblGioitinh.Size = new System.Drawing.Size(61, 16);
            this.lblGioitinh.TabIndex = 18;
            this.lblGioitinh.Text = "Giới tính";
            // 
            // btnThoat
            // 
            this.btnThoat.BackColor = System.Drawing.Color.Silver;
            this.btnThoat.Font = new System.Drawing.Font("Lucida Sans Unicode", 7.8F);
            this.btnThoat.ForeColor = System.Drawing.SystemColors.Highlight;
            this.btnThoat.Location = new System.Drawing.Point(718, 296);
            this.btnThoat.Name = "btnThoat";
            this.btnThoat.Size = new System.Drawing.Size(121, 23);
            this.btnThoat.TabIndex = 17;
            this.btnThoat.Text = "Thoát";
            this.btnThoat.UseVisualStyleBackColor = false;
            this.btnThoat.Click += new System.EventHandler(this.btnThoat_Click);
            // 
            // btnXoa
            // 
            this.btnXoa.BackColor = System.Drawing.Color.Silver;
            this.btnXoa.Font = new System.Drawing.Font("Lucida Sans Unicode", 7.8F);
            this.btnXoa.ForeColor = System.Drawing.SystemColors.Highlight;
            this.btnXoa.Location = new System.Drawing.Point(149, 296);
            this.btnXoa.Name = "btnXoa";
            this.btnXoa.Size = new System.Drawing.Size(121, 23);
            this.btnXoa.TabIndex = 15;
            this.btnXoa.Text = "Xóa theo mã GV";
            this.btnXoa.UseVisualStyleBackColor = false;
            this.btnXoa.Click += new System.EventHandler(this.btnXoa_Click);
            // 
            // btnBoqua
            // 
            this.btnBoqua.BackColor = System.Drawing.Color.Silver;
            this.btnBoqua.Font = new System.Drawing.Font("Lucida Sans Unicode", 7.8F);
            this.btnBoqua.ForeColor = System.Drawing.SystemColors.Highlight;
            this.btnBoqua.Location = new System.Drawing.Point(289, 296);
            this.btnBoqua.Name = "btnBoqua";
            this.btnBoqua.Size = new System.Drawing.Size(121, 23);
            this.btnBoqua.TabIndex = 14;
            this.btnBoqua.Text = "Bỏ qua";
            this.btnBoqua.UseVisualStyleBackColor = false;
            this.btnBoqua.Click += new System.EventHandler(this.btnBoqua_Click);
            // 
            // btnLuu
            // 
            this.btnLuu.BackColor = System.Drawing.Color.Silver;
            this.btnLuu.Font = new System.Drawing.Font("Lucida Sans Unicode", 7.8F);
            this.btnLuu.ForeColor = System.Drawing.SystemColors.Highlight;
            this.btnLuu.Location = new System.Drawing.Point(574, 296);
            this.btnLuu.Name = "btnLuu";
            this.btnLuu.Size = new System.Drawing.Size(121, 23);
            this.btnLuu.TabIndex = 13;
            this.btnLuu.Text = "Lưu";
            this.btnLuu.UseVisualStyleBackColor = false;
            this.btnLuu.Click += new System.EventHandler(this.btnLuu_Click);
            // 
            // btnSua
            // 
            this.btnSua.BackColor = System.Drawing.Color.Silver;
            this.btnSua.ForeColor = System.Drawing.SystemColors.Highlight;
            this.btnSua.Location = new System.Drawing.Point(429, 296);
            this.btnSua.Name = "btnSua";
            this.btnSua.Size = new System.Drawing.Size(121, 23);
            this.btnSua.TabIndex = 12;
            this.btnSua.Text = "Sửa";
            this.btnSua.UseVisualStyleBackColor = false;
            this.btnSua.Click += new System.EventHandler(this.btnSua_Click);
            // 
            // txtMaTK
            // 
            this.txtMaTK.BackColor = System.Drawing.Color.White;
            this.txtMaTK.Location = new System.Drawing.Point(697, 35);
            this.txtMaTK.Name = "txtMaTK";
            this.txtMaTK.Size = new System.Drawing.Size(100, 22);
            this.txtMaTK.TabIndex = 10;
            // 
            // lblMaTK
            // 
            this.lblMaTK.AutoSize = true;
            this.lblMaTK.Font = new System.Drawing.Font("Lucida Sans Unicode", 7.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblMaTK.Location = new System.Drawing.Point(694, 16);
            this.lblMaTK.Name = "lblMaTK";
            this.lblMaTK.Size = new System.Drawing.Size(92, 16);
            this.lblMaTK.TabIndex = 9;
            this.lblMaTK.Text = "Mã Tài khoản";
            // 
            // txtDiaChiGV
            // 
            this.txtDiaChiGV.BackColor = System.Drawing.Color.White;
            this.txtDiaChiGV.Location = new System.Drawing.Point(382, 104);
            this.txtDiaChiGV.Name = "txtDiaChiGV";
            this.txtDiaChiGV.Size = new System.Drawing.Size(250, 22);
            this.txtDiaChiGV.TabIndex = 7;
            // 
            // dtpNgaySinhGV
            // 
            this.dtpNgaySinhGV.Location = new System.Drawing.Point(149, 102);
            this.dtpNgaySinhGV.Name = "dtpNgaySinhGV";
            this.dtpNgaySinhGV.Size = new System.Drawing.Size(201, 22);
            this.dtpNgaySinhGV.TabIndex = 6;
            // 
            // lblDiaChi
            // 
            this.lblDiaChi.AutoSize = true;
            this.lblDiaChi.Font = new System.Drawing.Font("Lucida Sans Unicode", 7.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblDiaChi.Location = new System.Drawing.Point(379, 81);
            this.lblDiaChi.Name = "lblDiaChi";
            this.lblDiaChi.Size = new System.Drawing.Size(49, 16);
            this.lblDiaChi.TabIndex = 5;
            this.lblDiaChi.Text = "Địa chỉ";
            // 
            // lblNgaySinh
            // 
            this.lblNgaySinh.AutoSize = true;
            this.lblNgaySinh.Font = new System.Drawing.Font("Lucida Sans Unicode", 7.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblNgaySinh.Location = new System.Drawing.Point(149, 81);
            this.lblNgaySinh.Name = "lblNgaySinh";
            this.lblNgaySinh.Size = new System.Drawing.Size(70, 16);
            this.lblNgaySinh.TabIndex = 4;
            this.lblNgaySinh.Text = "Ngày Sinh";
            // 
            // txtTenGV
            // 
            this.txtTenGV.BackColor = System.Drawing.Color.White;
            this.txtTenGV.Location = new System.Drawing.Point(382, 35);
            this.txtTenGV.Name = "txtTenGV";
            this.txtTenGV.Size = new System.Drawing.Size(250, 22);
            this.txtTenGV.TabIndex = 3;
            // 
            // txtMaGV
            // 
            this.txtMaGV.BackColor = System.Drawing.Color.White;
            this.txtMaGV.Location = new System.Drawing.Point(149, 35);
            this.txtMaGV.Name = "txtMaGV";
            this.txtMaGV.Size = new System.Drawing.Size(122, 22);
            this.txtMaGV.TabIndex = 2;
            // 
            // lblHoTen
            // 
            this.lblHoTen.AutoSize = true;
            this.lblHoTen.Font = new System.Drawing.Font("Lucida Sans Unicode", 7.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblHoTen.Location = new System.Drawing.Point(379, 16);
            this.lblHoTen.Name = "lblHoTen";
            this.lblHoTen.Size = new System.Drawing.Size(110, 16);
            this.lblHoTen.TabIndex = 1;
            this.lblHoTen.Text = "Họ tên giáo viên";
            // 
            // lblMaGV
            // 
            this.lblMaGV.AutoSize = true;
            this.lblMaGV.Font = new System.Drawing.Font("Lucida Sans Unicode", 7.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblMaGV.Location = new System.Drawing.Point(146, 16);
            this.lblMaGV.Name = "lblMaGV";
            this.lblMaGV.Size = new System.Drawing.Size(86, 16);
            this.lblMaGV.TabIndex = 0;
            this.lblMaGV.Text = "Mã giáo viên";
            // 
            // dgvGiaoVien
            // 
            this.dgvGiaoVien.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvGiaoVien.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.dgvGiaoVien.Location = new System.Drawing.Point(0, 337);
            this.dgvGiaoVien.Name = "dgvGiaoVien";
            this.dgvGiaoVien.RowHeadersWidth = 51;
            this.dgvGiaoVien.RowTemplate.Height = 24;
            this.dgvGiaoVien.Size = new System.Drawing.Size(1069, 335);
            this.dgvGiaoVien.TabIndex = 1;
            // 
            // frmGiaoVien
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.dgvGiaoVien);
            this.Controls.Add(this.panel1);
            this.Name = "frmGiaoVien";
            this.Size = new System.Drawing.Size(1069, 672);
            this.Load += new System.EventHandler(this.frmGiaoVien_Load);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvGiaoVien)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.TextBox txtTenGV;
        private System.Windows.Forms.TextBox txtMaGV;
        private System.Windows.Forms.Label lblHoTen;
        private System.Windows.Forms.Label lblMaGV;
        private System.Windows.Forms.Label lblDiaChi;
        private System.Windows.Forms.Label lblNgaySinh;
        private System.Windows.Forms.TextBox txtDiaChiGV;
        private System.Windows.Forms.DateTimePicker dtpNgaySinhGV;
        private System.Windows.Forms.Label lblMaTK;
        private System.Windows.Forms.TextBox txtMaTK;
        private System.Windows.Forms.DataGridView dgvGiaoVien;
        private System.Windows.Forms.Button btnLuu;
        private System.Windows.Forms.Button btnSua;
        private System.Windows.Forms.Button btnBoqua;
        private System.Windows.Forms.Button btnThoat;
        private System.Windows.Forms.Button btnXoa;
        private System.Windows.Forms.ComboBox cbGioitinh;
        private System.Windows.Forms.Label lblGioitinh;
        private System.Windows.Forms.Button btnTenLop;
        private System.Windows.Forms.Splitter splitter1;
        private System.Windows.Forms.Label lblMH;
        private System.Windows.Forms.ComboBox cbMH;
        private System.Windows.Forms.TextBox txtMatKhau;
        private System.Windows.Forms.Button btnLuuMK;
        private System.Windows.Forms.Button btnDoi;
    }
}