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
            this.btnXuat = new System.Windows.Forms.Button();
            this.btnTimKiem = new System.Windows.Forms.Button();
            this.btnChon = new System.Windows.Forms.Button();
            this.cbLop = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.txtKhoi = new System.Windows.Forms.TextBox();
            this.lb1 = new System.Windows.Forms.Label();
            this.txtGVCN = new System.Windows.Forms.TextBox();
            this.lb = new System.Windows.Forms.Label();
            this.panel2 = new System.Windows.Forms.Panel();
            this.dgvLop = new System.Windows.Forms.DataGridView();
            this.STT = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.MaLop = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TenLop = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Khoi = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.GVCN = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.GV = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.SiSo = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.panel1.SuspendLayout();
            this.panel2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvLop)).BeginInit();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.btnXuat);
            this.panel1.Controls.Add(this.btnTimKiem);
            this.panel1.Controls.Add(this.btnChon);
            this.panel1.Controls.Add(this.cbLop);
            this.panel1.Controls.Add(this.label1);
            this.panel1.Controls.Add(this.txtKhoi);
            this.panel1.Controls.Add(this.lb1);
            this.panel1.Controls.Add(this.txtGVCN);
            this.panel1.Controls.Add(this.lb);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(677, 165);
            this.panel1.TabIndex = 0;
            this.panel1.Paint += new System.Windows.Forms.PaintEventHandler(this.panel1_Paint);
            // 
            // btnXuat
            // 
            this.btnXuat.Location = new System.Drawing.Point(457, 124);
            this.btnXuat.Name = "btnXuat";
            this.btnXuat.Size = new System.Drawing.Size(110, 23);
            this.btnXuat.TabIndex = 8;
            this.btnXuat.Text = "Xuất file excel";
            this.btnXuat.UseVisualStyleBackColor = true;
            // 
            // btnTimKiem
            // 
            this.btnTimKiem.Location = new System.Drawing.Point(275, 124);
            this.btnTimKiem.Name = "btnTimKiem";
            this.btnTimKiem.Size = new System.Drawing.Size(88, 23);
            this.btnTimKiem.TabIndex = 7;
            this.btnTimKiem.Text = "Tìm Kiếm";
            this.btnTimKiem.UseVisualStyleBackColor = true;
            this.btnTimKiem.Click += new System.EventHandler(this.btnTimKiem_Click);
            // 
            // btnChon
            // 
            this.btnChon.Location = new System.Drawing.Point(102, 124);
            this.btnChon.Name = "btnChon";
            this.btnChon.Size = new System.Drawing.Size(77, 23);
            this.btnChon.TabIndex = 6;
            this.btnChon.Text = "Chọn";
            this.btnChon.UseVisualStyleBackColor = true;
            // 
            // cbLop
            // 
            this.cbLop.FormattingEnabled = true;
            this.cbLop.Location = new System.Drawing.Point(530, 31);
            this.cbLop.Name = "cbLop";
            this.cbLop.Size = new System.Drawing.Size(109, 24);
            this.cbLop.TabIndex = 5;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(476, 34);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(33, 16);
            this.label1.TabIndex = 4;
            this.label1.Text = "Lớp:";
            // 
            // txtKhoi
            // 
            this.txtKhoi.Location = new System.Drawing.Point(332, 31);
            this.txtKhoi.Name = "txtKhoi";
            this.txtKhoi.Size = new System.Drawing.Size(116, 22);
            this.txtKhoi.TabIndex = 3;
            // 
            // lb1
            // 
            this.lb1.AutoSize = true;
            this.lb1.Location = new System.Drawing.Point(272, 34);
            this.lb1.Name = "lb1";
            this.lb1.Size = new System.Drawing.Size(36, 16);
            this.lb1.TabIndex = 2;
            this.lb1.Text = "Khối:";
            // 
            // txtGVCN
            // 
            this.txtGVCN.Location = new System.Drawing.Point(107, 31);
            this.txtGVCN.Name = "txtGVCN";
            this.txtGVCN.Size = new System.Drawing.Size(129, 22);
            this.txtGVCN.TabIndex = 1;
            // 
            // lb
            // 
            this.lb.AutoSize = true;
            this.lb.Location = new System.Drawing.Point(38, 34);
            this.lb.Name = "lb";
            this.lb.Size = new System.Drawing.Size(48, 16);
            this.lb.TabIndex = 0;
            this.lb.Text = "GVCN:";
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.dgvLop);
            this.panel2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel2.Location = new System.Drawing.Point(0, 165);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(677, 394);
            this.panel2.TabIndex = 1;
            // 
            // dgvLop
            // 
            this.dgvLop.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvLop.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.STT,
            this.MaLop,
            this.TenLop,
            this.Khoi,
            this.GVCN,
            this.GV,
            this.SiSo});
            this.dgvLop.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dgvLop.Location = new System.Drawing.Point(0, 0);
            this.dgvLop.Name = "dgvLop";
            this.dgvLop.RowHeadersWidth = 51;
            this.dgvLop.RowTemplate.Height = 24;
            this.dgvLop.Size = new System.Drawing.Size(677, 394);
            this.dgvLop.TabIndex = 0;
            // 
            // STT
            // 
            this.STT.HeaderText = "STT";
            this.STT.MinimumWidth = 6;
            this.STT.Name = "STT";
            this.STT.Width = 60;
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
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.Name = "frmLopHoc";
            this.Size = new System.Drawing.Size(677, 559);
            this.Load += new System.EventHandler(this.frmLopHoc_Load);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
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
        private System.Windows.Forms.DataGridViewTextBoxColumn STT;
        private System.Windows.Forms.DataGridViewTextBoxColumn MaLop;
        private System.Windows.Forms.DataGridViewTextBoxColumn TenLop;
        private System.Windows.Forms.DataGridViewTextBoxColumn Khoi;
        private System.Windows.Forms.DataGridViewTextBoxColumn GVCN;
        private System.Windows.Forms.DataGridViewTextBoxColumn GV;
        private System.Windows.Forms.DataGridViewTextBoxColumn SiSo;
        private System.Windows.Forms.ComboBox cbLop;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnXuat;
        private System.Windows.Forms.Button btnTimKiem;
        private System.Windows.Forms.Button btnChon;
    }
}
