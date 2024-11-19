namespace GUI
{
    partial class frmLopHoc
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
			this.panel5 = new System.Windows.Forms.Panel();
			this.cbLop = new System.Windows.Forms.ComboBox();
			this.panel4 = new System.Windows.Forms.Panel();
			this.txtGVCN = new System.Windows.Forms.TextBox();
			this.panel3 = new System.Windows.Forms.Panel();
			this.txtKhoi = new System.Windows.Forms.TextBox();
			this.btnTimKiem = new System.Windows.Forms.Button();
			this.btnChon = new System.Windows.Forms.Button();
			this.label1 = new System.Windows.Forms.Label();
			this.lb1 = new System.Windows.Forms.Label();
			this.lb = new System.Windows.Forms.Label();
			this.panel2 = new System.Windows.Forms.Panel();
			this.dgvLop = new System.Windows.Forms.DataGridView();
			this.MaLop = new System.Windows.Forms.DataGridViewTextBoxColumn();
			this.TenLop = new System.Windows.Forms.DataGridViewTextBoxColumn();
			this.Khoi = new System.Windows.Forms.DataGridViewTextBoxColumn();
			this.MonHoc = new System.Windows.Forms.DataGridViewTextBoxColumn();
			this.GVCN = new System.Windows.Forms.DataGridViewTextBoxColumn();
			this.GV = new System.Windows.Forms.DataGridViewTextBoxColumn();
			this.SiSo = new System.Windows.Forms.DataGridViewTextBoxColumn();
			this.panel1.SuspendLayout();
			this.panel5.SuspendLayout();
			this.panel4.SuspendLayout();
			this.panel3.SuspendLayout();
			this.panel2.SuspendLayout();
			((System.ComponentModel.ISupportInitialize)(this.dgvLop)).BeginInit();
			this.SuspendLayout();
			// 
			// panel1
			// 
			this.panel1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(24)))), ((int)(((byte)(11)))), ((int)(((byte)(66)))));
			this.panel1.Controls.Add(this.panel5);
			this.panel1.Controls.Add(this.panel4);
			this.panel1.Controls.Add(this.panel3);
			this.panel1.Controls.Add(this.btnTimKiem);
			this.panel1.Controls.Add(this.btnChon);
			this.panel1.Controls.Add(this.label1);
			this.panel1.Controls.Add(this.lb1);
			this.panel1.Controls.Add(this.lb);
			this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
			this.panel1.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(55)))), ((int)(((byte)(71)))), ((int)(((byte)(79)))));
			this.panel1.Location = new System.Drawing.Point(0, 0);
			this.panel1.Name = "panel1";
			this.panel1.Size = new System.Drawing.Size(1069, 235);
			this.panel1.TabIndex = 0;
			this.panel1.Paint += new System.Windows.Forms.PaintEventHandler(this.panel1_Paint);
			// 
			// panel5
			// 
			this.panel5.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(176)))), ((int)(((byte)(190)))), ((int)(((byte)(197)))));
			this.panel5.Controls.Add(this.cbLop);
			this.panel5.Location = new System.Drawing.Point(655, 45);
			this.panel5.Name = "panel5";
			this.panel5.Size = new System.Drawing.Size(126, 30);
			this.panel5.TabIndex = 9;
			// 
			// cbLop
			// 
			this.cbLop.BackColor = System.Drawing.Color.White;
			this.cbLop.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(55)))), ((int)(((byte)(71)))), ((int)(((byte)(79)))));
			this.cbLop.FormattingEnabled = true;
			this.cbLop.ItemHeight = 16;
			this.cbLop.Location = new System.Drawing.Point(3, 3);
			this.cbLop.Name = "cbLop";
			this.cbLop.Size = new System.Drawing.Size(120, 24);
			this.cbLop.TabIndex = 5;
			// 
			// panel4
			// 
			this.panel4.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(176)))), ((int)(((byte)(190)))), ((int)(((byte)(197)))));
			this.panel4.Controls.Add(this.txtGVCN);
			this.panel4.Location = new System.Drawing.Point(231, 36);
			this.panel4.Name = "panel4";
			this.panel4.Size = new System.Drawing.Size(126, 36);
			this.panel4.TabIndex = 8;
			// 
			// txtGVCN
			// 
			this.txtGVCN.BackColor = System.Drawing.Color.White;
			this.txtGVCN.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(55)))), ((int)(((byte)(71)))), ((int)(((byte)(79)))));
			this.txtGVCN.Location = new System.Drawing.Point(3, 3);
			this.txtGVCN.Multiline = true;
			this.txtGVCN.Name = "txtGVCN";
			this.txtGVCN.Size = new System.Drawing.Size(120, 30);
			this.txtGVCN.TabIndex = 1;
			// 
			// panel3
			// 
			this.panel3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(176)))), ((int)(((byte)(190)))), ((int)(((byte)(197)))));
			this.panel3.Controls.Add(this.txtKhoi);
			this.panel3.Location = new System.Drawing.Point(456, 39);
			this.panel3.Name = "panel3";
			this.panel3.Size = new System.Drawing.Size(126, 36);
			this.panel3.TabIndex = 8;
			// 
			// txtKhoi
			// 
			this.txtKhoi.BackColor = System.Drawing.Color.White;
			this.txtKhoi.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(55)))), ((int)(((byte)(71)))), ((int)(((byte)(79)))));
			this.txtKhoi.Location = new System.Drawing.Point(3, 3);
			this.txtKhoi.Multiline = true;
			this.txtKhoi.Name = "txtKhoi";
			this.txtKhoi.Size = new System.Drawing.Size(120, 30);
			this.txtKhoi.TabIndex = 1;
			// 
			// btnTimKiem
			// 
			this.btnTimKiem.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(176)))), ((int)(((byte)(190)))), ((int)(((byte)(197)))));
			this.btnTimKiem.Font = new System.Drawing.Font("Segoe UI", 10.2F);
			this.btnTimKiem.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(55)))), ((int)(((byte)(71)))), ((int)(((byte)(79)))));
			this.btnTimKiem.Location = new System.Drawing.Point(462, 136);
			this.btnTimKiem.Name = "btnTimKiem";
			this.btnTimKiem.Size = new System.Drawing.Size(120, 39);
			this.btnTimKiem.TabIndex = 7;
			this.btnTimKiem.Text = "Tìm Kiếm";
			this.btnTimKiem.UseVisualStyleBackColor = false;
			this.btnTimKiem.Click += new System.EventHandler(this.btnTimKiem_Click);
			// 
			// btnChon
			// 
			this.btnChon.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(176)))), ((int)(((byte)(190)))), ((int)(((byte)(197)))));
			this.btnChon.Font = new System.Drawing.Font("Segoe UI", 10.2F);
			this.btnChon.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(55)))), ((int)(((byte)(71)))), ((int)(((byte)(79)))));
			this.btnChon.Location = new System.Drawing.Point(234, 136);
			this.btnChon.Name = "btnChon";
			this.btnChon.Size = new System.Drawing.Size(120, 39);
			this.btnChon.TabIndex = 6;
			this.btnChon.Text = "Chọn";
			this.btnChon.UseVisualStyleBackColor = false;
			this.btnChon.Click += new System.EventHandler(this.btnChon_Click);
			// 
			// label1
			// 
			this.label1.AutoSize = true;
			this.label1.Font = new System.Drawing.Font("Segoe UI", 10.2F);
			this.label1.ForeColor = System.Drawing.Color.White;
			this.label1.Location = new System.Drawing.Point(606, 46);
			this.label1.Name = "label1";
			this.label1.Size = new System.Drawing.Size(42, 23);
			this.label1.TabIndex = 4;
			this.label1.Text = "Lớp:";
			// 
			// lb1
			// 
			this.lb1.AutoSize = true;
			this.lb1.Font = new System.Drawing.Font("Segoe UI", 10.2F);
			this.lb1.ForeColor = System.Drawing.Color.White;
			this.lb1.Location = new System.Drawing.Point(402, 46);
			this.lb1.Name = "lb1";
			this.lb1.Size = new System.Drawing.Size(48, 23);
			this.lb1.TabIndex = 2;
			this.lb1.Text = "Khối:";
			// 
			// lb
			// 
			this.lb.AutoSize = true;
			this.lb.Font = new System.Drawing.Font("Segoe UI", 10.2F);
			this.lb.ForeColor = System.Drawing.Color.White;
			this.lb.Location = new System.Drawing.Point(168, 46);
			this.lb.Name = "lb";
			this.lb.Size = new System.Drawing.Size(61, 23);
			this.lb.TabIndex = 0;
			this.lb.Text = "GVCN:";
			// 
			// panel2
			// 
			this.panel2.Controls.Add(this.dgvLop);
			this.panel2.Dock = System.Windows.Forms.DockStyle.Fill;
			this.panel2.Location = new System.Drawing.Point(0, 235);
			this.panel2.Name = "panel2";
			this.panel2.Size = new System.Drawing.Size(1069, 437);
			this.panel2.TabIndex = 1;
			// 
			// dgvLop
			// 
			this.dgvLop.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(24)))), ((int)(((byte)(11)))), ((int)(((byte)(66)))));
			this.dgvLop.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
			this.dgvLop.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.MaLop,
            this.TenLop,
            this.Khoi,
            this.MonHoc,
            this.GVCN,
            this.GV,
            this.SiSo});
			this.dgvLop.Dock = System.Windows.Forms.DockStyle.Fill;
			this.dgvLop.Location = new System.Drawing.Point(0, 0);
			this.dgvLop.Name = "dgvLop";
			this.dgvLop.RowHeadersWidth = 51;
			this.dgvLop.RowTemplate.Height = 24;
			this.dgvLop.Size = new System.Drawing.Size(1069, 437);
			this.dgvLop.TabIndex = 0;
			// 
			// MaLop
			// 
			this.MaLop.HeaderText = "Mã Lớp";
			this.MaLop.MinimumWidth = 6;
			this.MaLop.Name = "MaLop";
			this.MaLop.Width = 125;
			// 
			// TenLop
			// 
			this.TenLop.HeaderText = "Tên Lớp";
			this.TenLop.MinimumWidth = 6;
			this.TenLop.Name = "TenLop";
			this.TenLop.Width = 125;
			// 
			// Khoi
			// 
			this.Khoi.HeaderText = "Khối";
			this.Khoi.MinimumWidth = 6;
			this.Khoi.Name = "Khoi";
			this.Khoi.Width = 125;
			// 
			// MonHoc
			// 
			this.MonHoc.HeaderText = "Môn Học";
			this.MonHoc.MinimumWidth = 6;
			this.MonHoc.Name = "MonHoc";
			this.MonHoc.Width = 125;
			// 
			// GVCN
			// 
			this.GVCN.HeaderText = "Giáo Viên Chủ Nhiệm";
			this.GVCN.MinimumWidth = 6;
			this.GVCN.Name = "GVCN";
			this.GVCN.Width = 180;
			// 
			// GV
			// 
			this.GV.HeaderText = "Giáo Viên Giảng Dạy";
			this.GV.MinimumWidth = 6;
			this.GV.Name = "GV";
			this.GV.Width = 180;
			// 
			// SiSo
			// 
			this.SiSo.HeaderText = "Sĩ Số";
			this.SiSo.MinimumWidth = 6;
			this.SiSo.Name = "SiSo";
			this.SiSo.Width = 60;
			// 
			// frmLopHoc
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(24)))), ((int)(((byte)(11)))), ((int)(((byte)(66)))));
			this.Controls.Add(this.panel2);
			this.Controls.Add(this.panel1);
			this.Name = "frmLopHoc";
			this.Size = new System.Drawing.Size(1069, 672);
			this.Load += new System.EventHandler(this.frmLopHoc_Load);
			this.panel1.ResumeLayout(false);
			this.panel1.PerformLayout();
			this.panel5.ResumeLayout(false);
			this.panel4.ResumeLayout(false);
			this.panel4.PerformLayout();
			this.panel3.ResumeLayout(false);
			this.panel3.PerformLayout();
			this.panel2.ResumeLayout(false);
			((System.ComponentModel.ISupportInitialize)(this.dgvLop)).EndInit();
			this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.TextBox txtKhoi;
        private System.Windows.Forms.Label lb1;
        private System.Windows.Forms.TextBox txtGVCN;
        private System.Windows.Forms.Label lb;
        private System.Windows.Forms.DataGridView dgvLop;
        private System.Windows.Forms.ComboBox cbLop;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnTimKiem;
        private System.Windows.Forms.Button btnChon;
        private System.Windows.Forms.Panel panel4;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.Panel panel5;
		private System.Windows.Forms.DataGridViewTextBoxColumn MaLop;
		private System.Windows.Forms.DataGridViewTextBoxColumn TenLop;
		private System.Windows.Forms.DataGridViewTextBoxColumn Khoi;
		private System.Windows.Forms.DataGridViewTextBoxColumn MonHoc;
		private System.Windows.Forms.DataGridViewTextBoxColumn GVCN;
		private System.Windows.Forms.DataGridViewTextBoxColumn GV;
		private System.Windows.Forms.DataGridViewTextBoxColumn SiSo;
	}
}
