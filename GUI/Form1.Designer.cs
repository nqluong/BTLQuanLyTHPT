namespace GUI
{
    partial class frmHome
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

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.palThongTin = new System.Windows.Forms.Panel();
            this.panel1 = new System.Windows.Forms.Panel();
            this.panel3 = new System.Windows.Forms.Panel();
            this.btnDangXuat = new System.Windows.Forms.Button();
            this.btnTKB = new System.Windows.Forms.Button();
            this.btnDiemSo = new System.Windows.Forms.Button();
            this.btnLopHoc = new System.Windows.Forms.Button();
            this.btnHocSinh = new System.Windows.Forms.Button();
            this.btnGiaoVien = new System.Windows.Forms.Button();
            this.panel2 = new System.Windows.Forms.Panel();
            this.ptrAnh = new System.Windows.Forms.PictureBox();
            this.label1 = new System.Windows.Forms.Label();
            this.panel1.SuspendLayout();
            this.panel3.SuspendLayout();
            this.panel2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.ptrAnh)).BeginInit();
            this.SuspendLayout();
            // 
            // palThongTin
            // 
            this.palThongTin.Dock = System.Windows.Forms.DockStyle.Right;
            this.palThongTin.Location = new System.Drawing.Point(275, 0);
            this.palThongTin.Name = "palThongTin";
            this.palThongTin.Size = new System.Drawing.Size(727, 640);
            this.palThongTin.TabIndex = 3;
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.panel3);
            this.panel1.Controls.Add(this.panel2);
            this.panel1.Location = new System.Drawing.Point(2, 3);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(267, 627);
            this.panel1.TabIndex = 2;
            // 
            // panel3
            // 
            this.panel3.Controls.Add(this.btnDangXuat);
            this.panel3.Controls.Add(this.btnTKB);
            this.panel3.Controls.Add(this.btnDiemSo);
            this.panel3.Controls.Add(this.btnLopHoc);
            this.panel3.Controls.Add(this.btnHocSinh);
            this.panel3.Controls.Add(this.btnGiaoVien);
            this.panel3.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panel3.Location = new System.Drawing.Point(0, 174);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(267, 453);
            this.panel3.TabIndex = 1;
            // 
            // btnDangXuat
            // 
            this.btnDangXuat.Location = new System.Drawing.Point(7, 303);
            this.btnDangXuat.Name = "btnDangXuat";
            this.btnDangXuat.Size = new System.Drawing.Size(254, 54);
            this.btnDangXuat.TabIndex = 0;
            this.btnDangXuat.Text = "Đăng Xuất";
            this.btnDangXuat.UseVisualStyleBackColor = true;
            // 
            // btnTKB
            // 
            this.btnTKB.Location = new System.Drawing.Point(4, 243);
            this.btnTKB.Name = "btnTKB";
            this.btnTKB.Size = new System.Drawing.Size(254, 54);
            this.btnTKB.TabIndex = 0;
            this.btnTKB.Text = "Quản lý Thời Khóa Biểu";
            this.btnTKB.UseVisualStyleBackColor = true;
            // 
            // btnDiemSo
            // 
            this.btnDiemSo.Location = new System.Drawing.Point(4, 183);
            this.btnDiemSo.Name = "btnDiemSo";
            this.btnDiemSo.Size = new System.Drawing.Size(254, 54);
            this.btnDiemSo.TabIndex = 0;
            this.btnDiemSo.Text = "Quản lý Điểm Số";
            this.btnDiemSo.UseVisualStyleBackColor = true;
            // 
            // btnLopHoc
            // 
            this.btnLopHoc.Location = new System.Drawing.Point(4, 123);
            this.btnLopHoc.Name = "btnLopHoc";
            this.btnLopHoc.Size = new System.Drawing.Size(254, 54);
            this.btnLopHoc.TabIndex = 0;
            this.btnLopHoc.Text = "Quản lý Lớp Học";
            this.btnLopHoc.UseVisualStyleBackColor = true;
            // 
            // btnHocSinh
            // 
            this.btnHocSinh.Location = new System.Drawing.Point(4, 63);
            this.btnHocSinh.Name = "btnHocSinh";
            this.btnHocSinh.Size = new System.Drawing.Size(254, 54);
            this.btnHocSinh.TabIndex = 0;
            this.btnHocSinh.Text = "Quản lý Học Sinh";
            this.btnHocSinh.UseVisualStyleBackColor = true;
            // 
            // btnGiaoVien
            // 
            this.btnGiaoVien.Location = new System.Drawing.Point(6, 3);
            this.btnGiaoVien.Name = "btnGiaoVien";
            this.btnGiaoVien.Size = new System.Drawing.Size(254, 54);
            this.btnGiaoVien.TabIndex = 0;
            this.btnGiaoVien.Text = "Quản lý Giáo Viên";
            this.btnGiaoVien.UseVisualStyleBackColor = true;
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.ptrAnh);
            this.panel2.Controls.Add(this.label1);
            this.panel2.Location = new System.Drawing.Point(4, 4);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(260, 117);
            this.panel2.TabIndex = 0;
            // 
            // ptrAnh
            // 
            this.ptrAnh.Location = new System.Drawing.Point(69, 6);
            this.ptrAnh.Name = "ptrAnh";
            this.ptrAnh.Size = new System.Drawing.Size(100, 50);
            this.ptrAnh.TabIndex = 1;
            this.ptrAnh.TabStop = false;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(22, 90);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(48, 16);
            this.label1.TabIndex = 0;
            this.label1.Text = "Admin:";
            // 
            // frmHome
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1002, 640);
            this.Controls.Add(this.palThongTin);
            this.Controls.Add(this.panel1);
            this.Name = "frmHome";
            this.Text = "Home";
            this.Load += new System.EventHandler(this.frmHome_Load);
            this.panel1.ResumeLayout(false);
            this.panel3.ResumeLayout(false);
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.ptrAnh)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel palThongTin;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.Button btnDangXuat;
        private System.Windows.Forms.Button btnTKB;
        private System.Windows.Forms.Button btnDiemSo;
        private System.Windows.Forms.Button btnLopHoc;
        private System.Windows.Forms.Button btnHocSinh;
        private System.Windows.Forms.Button btnGiaoVien;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.PictureBox ptrAnh;
        private System.Windows.Forms.Label label1;
    }
}

