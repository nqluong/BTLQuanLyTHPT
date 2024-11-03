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
            this.panel1.Size = new System.Drawing.Size(850, 331);
            this.panel1.TabIndex = 0;
            // 
            // btnDoi
            // 
            this.btnDoi.Location = new System.Drawing.Point(22, 151);
            this.btnDoi.Name = "btnDoi";
            this.btnDoi.Size = new System.Drawing.Size(121, 23);
            this.btnDoi.TabIndex = 29;
            this.btnDoi.Text = "Đổi mật khẩu";
            this.btnDoi.UseVisualStyleBackColor = true;
            this.btnDoi.Click += new System.EventHandler(this.btnDoi_Click);
            // 
            // btnLuuMK
            // 
            this.btnLuuMK.Location = new System.Drawing.Point(149, 151);
            this.btnLuuMK.Name = "btnLuuMK";
            this.btnLuuMK.Size = new System.Drawing.Size(121, 23);
            this.btnLuuMK.TabIndex = 28;
            this.btnLuuMK.Text = "Lưu mật khẩu";
            this.btnLuuMK.UseVisualStyleBackColor = true;
            this.btnLuuMK.Click += new System.EventHandler(this.btnLuuMK_Click);
            // 
            // txtMatKhau
            // 
            this.txtMatKhau.Enabled = false;
            this.txtMatKhau.Location = new System.Drawing.Point(20, 190);
            this.txtMatKhau.Name = "txtMatKhau";
            this.txtMatKhau.Size = new System.Drawing.Size(250, 22);
            this.txtMatKhau.TabIndex = 27;
            this.txtMatKhau.Text = "Nhập mật khẩu mới";
            // 
            // cbMH
            // 
            this.cbMH.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbMH.FormattingEnabled = true;
            this.cbMH.Location = new System.Drawing.Point(567, 178);
            this.cbMH.Name = "cbMH";
            this.cbMH.Size = new System.Drawing.Size(100, 24);
            this.cbMH.TabIndex = 25;
            // 
            // lblMH
            // 
            this.lblMH.AutoSize = true;
            this.lblMH.Location = new System.Drawing.Point(564, 158);
            this.lblMH.Name = "lblMH";
            this.lblMH.Size = new System.Drawing.Size(80, 16);
            this.lblMH.TabIndex = 24;
            this.lblMH.Text = "Mã môn học";
            // 
            // btnTenLop
            // 
            this.btnTenLop.Location = new System.Drawing.Point(588, 255);
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
            this.cbGioitinh.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbGioitinh.FormattingEnabled = true;
            this.cbGioitinh.Location = new System.Drawing.Point(567, 102);
            this.cbGioitinh.Name = "cbGioitinh";
            this.cbGioitinh.Size = new System.Drawing.Size(100, 24);
            this.cbGioitinh.TabIndex = 19;
            // 
            // lblGioitinh
            // 
            this.lblGioitinh.AutoSize = true;
            this.lblGioitinh.Location = new System.Drawing.Point(564, 81);
            this.lblGioitinh.Name = "lblGioitinh";
            this.lblGioitinh.Size = new System.Drawing.Size(54, 16);
            this.lblGioitinh.TabIndex = 18;
            this.lblGioitinh.Text = "Giới tính";
            // 
            // btnThoat
            // 
            this.btnThoat.Location = new System.Drawing.Point(588, 294);
            this.btnThoat.Name = "btnThoat";
            this.btnThoat.Size = new System.Drawing.Size(121, 23);
            this.btnThoat.TabIndex = 17;
            this.btnThoat.Text = "Thoát";
            this.btnThoat.UseVisualStyleBackColor = true;
            this.btnThoat.Click += new System.EventHandler(this.btnThoat_Click);
            // 
            // btnXoa
            // 
            this.btnXoa.Location = new System.Drawing.Point(19, 294);
            this.btnXoa.Name = "btnXoa";
            this.btnXoa.Size = new System.Drawing.Size(121, 23);
            this.btnXoa.TabIndex = 15;
            this.btnXoa.Text = "Xóa theo mã GV";
            this.btnXoa.UseVisualStyleBackColor = true;
            this.btnXoa.Click += new System.EventHandler(this.btnXoa_Click);
            // 
            // btnBoqua
            // 
            this.btnBoqua.Location = new System.Drawing.Point(159, 294);
            this.btnBoqua.Name = "btnBoqua";
            this.btnBoqua.Size = new System.Drawing.Size(121, 23);
            this.btnBoqua.TabIndex = 14;
            this.btnBoqua.Text = "Bỏ qua";
            this.btnBoqua.UseVisualStyleBackColor = true;
            this.btnBoqua.Click += new System.EventHandler(this.btnBoqua_Click);
            // 
            // btnLuu
            // 
            this.btnLuu.Location = new System.Drawing.Point(444, 294);
            this.btnLuu.Name = "btnLuu";
            this.btnLuu.Size = new System.Drawing.Size(121, 23);
            this.btnLuu.TabIndex = 13;
            this.btnLuu.Text = "Lưu";
            this.btnLuu.UseVisualStyleBackColor = true;
            this.btnLuu.Click += new System.EventHandler(this.btnLuu_Click);
            // 
            // btnSua
            // 
            this.btnSua.Location = new System.Drawing.Point(299, 294);
            this.btnSua.Name = "btnSua";
            this.btnSua.Size = new System.Drawing.Size(121, 23);
            this.btnSua.TabIndex = 12;
            this.btnSua.Text = "Sửa";
            this.btnSua.UseVisualStyleBackColor = true;
            this.btnSua.Click += new System.EventHandler(this.btnSua_Click);
            // 
            // txtMaTK
            // 
            this.txtMaTK.Location = new System.Drawing.Point(567, 33);
            this.txtMaTK.Name = "txtMaTK";
            this.txtMaTK.Size = new System.Drawing.Size(100, 22);
            this.txtMaTK.TabIndex = 10;
            // 
            // lblMaTK
            // 
            this.lblMaTK.AutoSize = true;
            this.lblMaTK.Location = new System.Drawing.Point(564, 14);
            this.lblMaTK.Name = "lblMaTK";
            this.lblMaTK.Size = new System.Drawing.Size(89, 16);
            this.lblMaTK.TabIndex = 9;
            this.lblMaTK.Text = "Mã Tài khoản";
            // 
            // txtDiaChiGV
            // 
            this.txtDiaChiGV.Location = new System.Drawing.Point(252, 102);
            this.txtDiaChiGV.Name = "txtDiaChiGV";
            this.txtDiaChiGV.Size = new System.Drawing.Size(250, 22);
            this.txtDiaChiGV.TabIndex = 7;
            // 
            // dtpNgaySinhGV
            // 
            this.dtpNgaySinhGV.Location = new System.Drawing.Point(19, 100);
            this.dtpNgaySinhGV.Name = "dtpNgaySinhGV";
            this.dtpNgaySinhGV.Size = new System.Drawing.Size(201, 22);
            this.dtpNgaySinhGV.TabIndex = 6;
            // 
            // lblDiaChi
            // 
            this.lblDiaChi.AutoSize = true;
            this.lblDiaChi.Location = new System.Drawing.Point(249, 81);
            this.lblDiaChi.Name = "lblDiaChi";
            this.lblDiaChi.Size = new System.Drawing.Size(47, 16);
            this.lblDiaChi.TabIndex = 5;
            this.lblDiaChi.Text = "Địa chỉ";
            // 
            // lblNgaySinh
            // 
            this.lblNgaySinh.AutoSize = true;
            this.lblNgaySinh.Location = new System.Drawing.Point(16, 81);
            this.lblNgaySinh.Name = "lblNgaySinh";
            this.lblNgaySinh.Size = new System.Drawing.Size(69, 16);
            this.lblNgaySinh.TabIndex = 4;
            this.lblNgaySinh.Text = "Ngày Sinh";
            // 
            // txtTenGV
            // 
            this.txtTenGV.Location = new System.Drawing.Point(252, 33);
            this.txtTenGV.Name = "txtTenGV";
            this.txtTenGV.Size = new System.Drawing.Size(250, 22);
            this.txtTenGV.TabIndex = 3;
            // 
            // txtMaGV
            // 
            this.txtMaGV.Location = new System.Drawing.Point(19, 33);
            this.txtMaGV.Name = "txtMaGV";
            this.txtMaGV.Size = new System.Drawing.Size(122, 22);
            this.txtMaGV.TabIndex = 2;
            // 
            // lblHoTen
            // 
            this.lblHoTen.AutoSize = true;
            this.lblHoTen.Location = new System.Drawing.Point(249, 14);
            this.lblHoTen.Name = "lblHoTen";
            this.lblHoTen.Size = new System.Drawing.Size(104, 16);
            this.lblHoTen.TabIndex = 1;
            this.lblHoTen.Text = "Họ tên giáo viên";
            // 
            // lblMaGV
            // 
            this.lblMaGV.AutoSize = true;
            this.lblMaGV.Location = new System.Drawing.Point(16, 14);
            this.lblMaGV.Name = "lblMaGV";
            this.lblMaGV.Size = new System.Drawing.Size(84, 16);
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
            this.dgvGiaoVien.Size = new System.Drawing.Size(850, 285);
            this.dgvGiaoVien.TabIndex = 1;
            // 
            // frmGiaoVien
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.dgvGiaoVien);
            this.Controls.Add(this.panel1);
            this.Name = "frmGiaoVien";
            this.Size = new System.Drawing.Size(850, 622);
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