﻿namespace GUI
{
    partial class frmDiemSo
    {
        private frmHome _frmhome = new frmHome();
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
            this.dgvDiemSo = new System.Windows.Forms.DataGridView();
            this.STT = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.txtDiemM = new System.Windows.Forms.TextBox();
            this.txtDiem15p = new System.Windows.Forms.TextBox();
            this.txtDiem45p = new System.Windows.Forms.TextBox();
            this.txtDiemGK = new System.Windows.Forms.TextBox();
            this.txtDiemCK = new System.Windows.Forms.TextBox();
            this.btnTiemKiem = new System.Windows.Forms.Button();
            this.btnCapNhat = new System.Windows.Forms.Button();
            this.cboTenLop = new System.Windows.Forms.ComboBox();
            this.cboTenMH = new System.Windows.Forms.ComboBox();
            this.btnInExcel = new System.Windows.Forms.Button();
            this.label8 = new System.Windows.Forms.Label();
            this.cboHocKy = new System.Windows.Forms.ComboBox();
            this.label9 = new System.Windows.Forms.Label();
            this.cboNamHoc = new System.Windows.Forms.ComboBox();
            this.btnBoQua = new System.Windows.Forms.Button();
            this.panel1 = new System.Windows.Forms.Panel();
            this.panel3 = new System.Windows.Forms.Panel();
            this.panel4 = new System.Windows.Forms.Panel();
            this.panel5 = new System.Windows.Forms.Panel();
            this.panel6 = new System.Windows.Forms.Panel();
            this.panel2 = new System.Windows.Forms.Panel();
            this.panel7 = new System.Windows.Forms.Panel();
            this.panel8 = new System.Windows.Forms.Panel();
            this.panel9 = new System.Windows.Forms.Panel();
            ((System.ComponentModel.ISupportInitialize)(this.dgvDiemSo)).BeginInit();
            this.panel1.SuspendLayout();
            this.panel3.SuspendLayout();
            this.panel4.SuspendLayout();
            this.panel5.SuspendLayout();
            this.panel6.SuspendLayout();
            this.panel2.SuspendLayout();
            this.panel7.SuspendLayout();
            this.panel8.SuspendLayout();
            this.panel9.SuspendLayout();
            this.SuspendLayout();
            // 
            // dgvDiemSo
            // 
            this.dgvDiemSo.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(24)))), ((int)(((byte)(11)))), ((int)(((byte)(66)))));
            this.dgvDiemSo.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvDiemSo.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.STT});
            this.dgvDiemSo.Location = new System.Drawing.Point(33, 279);
            this.dgvDiemSo.Name = "dgvDiemSo";
            this.dgvDiemSo.RowHeadersWidth = 51;
            this.dgvDiemSo.RowTemplate.Height = 24;
            this.dgvDiemSo.Size = new System.Drawing.Size(951, 366);
            this.dgvDiemSo.TabIndex = 0;
            this.dgvDiemSo.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvDiemSo_CellClick);
            this.dgvDiemSo.RowPrePaint += new System.Windows.Forms.DataGridViewRowPrePaintEventHandler(this.dgvDiemSo_RowPrePaint);
            // 
            // STT
            // 
            this.STT.HeaderText = "STT";
            this.STT.MinimumWidth = 6;
            this.STT.Name = "STT";
            this.STT.Width = 50;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Segoe UI", 10.2F);
            this.label1.ForeColor = System.Drawing.Color.White;
            this.label1.Location = new System.Drawing.Point(646, 63);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(65, 23);
            this.label1.TabIndex = 1;
            this.label1.Text = "Tên lớp";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Segoe UI", 10.2F);
            this.label2.ForeColor = System.Drawing.Color.White;
            this.label2.Location = new System.Drawing.Point(91, 31);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(103, 23);
            this.label2.TabIndex = 1;
            this.label2.Text = "Điểm miệng";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Segoe UI", 10.2F);
            this.label3.ForeColor = System.Drawing.Color.White;
            this.label3.Location = new System.Drawing.Point(91, 92);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(83, 23);
            this.label3.TabIndex = 1;
            this.label3.Text = "Điểm 15p";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Segoe UI", 10.2F);
            this.label4.ForeColor = System.Drawing.Color.White;
            this.label4.Location = new System.Drawing.Point(100, 161);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(83, 23);
            this.label4.TabIndex = 1;
            this.label4.Text = "Điểm 45p";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Segoe UI", 10.2F);
            this.label5.ForeColor = System.Drawing.Color.White;
            this.label5.Location = new System.Drawing.Point(646, 106);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(109, 23);
            this.label5.TabIndex = 1;
            this.label5.Text = "Tên môn học";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Segoe UI", 10.2F);
            this.label6.ForeColor = System.Drawing.Color.White;
            this.label6.Location = new System.Drawing.Point(364, 35);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(109, 23);
            this.label6.TabIndex = 1;
            this.label6.Text = "Điểm giữa kỳ";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Segoe UI", 10.2F);
            this.label7.ForeColor = System.Drawing.Color.White;
            this.label7.Location = new System.Drawing.Point(364, 96);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(108, 23);
            this.label7.TabIndex = 1;
            this.label7.Text = "Điểm cuối kỳ";
            this.label7.Click += new System.EventHandler(this.label7_Click);
            // 
            // txtDiemM
            // 
            this.txtDiemM.BackColor = System.Drawing.Color.White;
            this.txtDiemM.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(55)))), ((int)(((byte)(71)))), ((int)(((byte)(79)))));
            this.txtDiemM.Location = new System.Drawing.Point(3, 3);
            this.txtDiemM.Multiline = true;
            this.txtDiemM.Name = "txtDiemM";
            this.txtDiemM.Size = new System.Drawing.Size(130, 30);
            this.txtDiemM.TabIndex = 2;
            this.txtDiemM.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtDiemM_KeyPress);
            // 
            // txtDiem15p
            // 
            this.txtDiem15p.BackColor = System.Drawing.Color.White;
            this.txtDiem15p.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(55)))), ((int)(((byte)(71)))), ((int)(((byte)(79)))));
            this.txtDiem15p.Location = new System.Drawing.Point(3, 3);
            this.txtDiem15p.Multiline = true;
            this.txtDiem15p.Name = "txtDiem15p";
            this.txtDiem15p.Size = new System.Drawing.Size(130, 30);
            this.txtDiem15p.TabIndex = 2;
            this.txtDiem15p.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtDiem15p_KeyPress);
            // 
            // txtDiem45p
            // 
            this.txtDiem45p.BackColor = System.Drawing.Color.White;
            this.txtDiem45p.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(55)))), ((int)(((byte)(71)))), ((int)(((byte)(79)))));
            this.txtDiem45p.Location = new System.Drawing.Point(3, 3);
            this.txtDiem45p.Multiline = true;
            this.txtDiem45p.Name = "txtDiem45p";
            this.txtDiem45p.Size = new System.Drawing.Size(130, 30);
            this.txtDiem45p.TabIndex = 2;
            this.txtDiem45p.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtDiem45p_KeyPress);
            // 
            // txtDiemGK
            // 
            this.txtDiemGK.BackColor = System.Drawing.Color.White;
            this.txtDiemGK.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(55)))), ((int)(((byte)(71)))), ((int)(((byte)(79)))));
            this.txtDiemGK.Location = new System.Drawing.Point(3, 3);
            this.txtDiemGK.Multiline = true;
            this.txtDiemGK.Name = "txtDiemGK";
            this.txtDiemGK.Size = new System.Drawing.Size(130, 30);
            this.txtDiemGK.TabIndex = 2;
            this.txtDiemGK.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtDiemGK_KeyPress);
            // 
            // txtDiemCK
            // 
            this.txtDiemCK.BackColor = System.Drawing.Color.White;
            this.txtDiemCK.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(55)))), ((int)(((byte)(71)))), ((int)(((byte)(79)))));
            this.txtDiemCK.Location = new System.Drawing.Point(3, 3);
            this.txtDiemCK.Multiline = true;
            this.txtDiemCK.Name = "txtDiemCK";
            this.txtDiemCK.Size = new System.Drawing.Size(130, 30);
            this.txtDiemCK.TabIndex = 2;
            this.txtDiemCK.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtDiemCK_KeyPress);
            // 
            // btnTiemKiem
            // 
            this.btnTiemKiem.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(176)))), ((int)(((byte)(190)))), ((int)(((byte)(197)))));
            this.btnTiemKiem.Font = new System.Drawing.Font("Segoe UI", 10.2F);
            this.btnTiemKiem.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(55)))), ((int)(((byte)(71)))), ((int)(((byte)(79)))));
            this.btnTiemKiem.Location = new System.Drawing.Point(634, 22);
            this.btnTiemKiem.Name = "btnTiemKiem";
            this.btnTiemKiem.Size = new System.Drawing.Size(120, 30);
            this.btnTiemKiem.TabIndex = 3;
            this.btnTiemKiem.Text = "Tìm kiếm";
            this.btnTiemKiem.UseVisualStyleBackColor = false;
            this.btnTiemKiem.Click += new System.EventHandler(this.btnTimKiem_Click);
            // 
            // btnCapNhat
            // 
            this.btnCapNhat.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(176)))), ((int)(((byte)(190)))), ((int)(((byte)(197)))));
            this.btnCapNhat.Font = new System.Drawing.Font("Segoe UI", 10.2F);
            this.btnCapNhat.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(55)))), ((int)(((byte)(71)))), ((int)(((byte)(79)))));
            this.btnCapNhat.Location = new System.Drawing.Point(74, 231);
            this.btnCapNhat.Name = "btnCapNhat";
            this.btnCapNhat.Size = new System.Drawing.Size(120, 40);
            this.btnCapNhat.TabIndex = 3;
            this.btnCapNhat.Text = "Cập nhật";
            this.btnCapNhat.UseVisualStyleBackColor = false;
            this.btnCapNhat.Click += new System.EventHandler(this.btnCapNhat_Click);
            // 
            // cboTenLop
            // 
            this.cboTenLop.BackColor = System.Drawing.Color.White;
            this.cboTenLop.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(55)))), ((int)(((byte)(71)))), ((int)(((byte)(79)))));
            this.cboTenLop.FormattingEnabled = true;
            this.cboTenLop.Location = new System.Drawing.Point(3, 3);
            this.cboTenLop.Name = "cboTenLop";
            this.cboTenLop.Size = new System.Drawing.Size(170, 24);
            this.cboTenLop.TabIndex = 6;
            // 
            // cboTenMH
            // 
            this.cboTenMH.BackColor = System.Drawing.Color.White;
            this.cboTenMH.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(55)))), ((int)(((byte)(71)))), ((int)(((byte)(79)))));
            this.cboTenMH.FormattingEnabled = true;
            this.cboTenMH.Location = new System.Drawing.Point(3, 2);
            this.cboTenMH.Name = "cboTenMH";
            this.cboTenMH.Size = new System.Drawing.Size(170, 24);
            this.cboTenMH.TabIndex = 7;
            // 
            // btnInExcel
            // 
            this.btnInExcel.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(176)))), ((int)(((byte)(190)))), ((int)(((byte)(197)))));
            this.btnInExcel.Font = new System.Drawing.Font("Segoe UI", 10.2F);
            this.btnInExcel.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(55)))), ((int)(((byte)(71)))), ((int)(((byte)(79)))));
            this.btnInExcel.Location = new System.Drawing.Point(363, 231);
            this.btnInExcel.Name = "btnInExcel";
            this.btnInExcel.Size = new System.Drawing.Size(120, 40);
            this.btnInExcel.TabIndex = 8;
            this.btnInExcel.Text = "In file Excel";
            this.btnInExcel.UseVisualStyleBackColor = false;
            this.btnInExcel.Click += new System.EventHandler(this.btnInExcel_Click);
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Segoe UI", 10.2F);
            this.label8.ForeColor = System.Drawing.Color.White;
            this.label8.Location = new System.Drawing.Point(646, 200);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(90, 23);
            this.label8.TabIndex = 1;
            this.label8.Text = "Tên học kỳ";
            this.label8.Click += new System.EventHandler(this.label8_Click);
            // 
            // cboHocKy
            // 
            this.cboHocKy.BackColor = System.Drawing.Color.White;
            this.cboHocKy.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(55)))), ((int)(((byte)(71)))), ((int)(((byte)(79)))));
            this.cboHocKy.FormattingEnabled = true;
            this.cboHocKy.Location = new System.Drawing.Point(3, 3);
            this.cboHocKy.Name = "cboHocKy";
            this.cboHocKy.Size = new System.Drawing.Size(170, 24);
            this.cboHocKy.TabIndex = 7;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Segoe UI", 10.2F);
            this.label9.ForeColor = System.Drawing.Color.White;
            this.label9.Location = new System.Drawing.Point(646, 153);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(80, 23);
            this.label9.TabIndex = 1;
            this.label9.Text = "Năm học";
            // 
            // cboNamHoc
            // 
            this.cboNamHoc.BackColor = System.Drawing.Color.White;
            this.cboNamHoc.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(55)))), ((int)(((byte)(71)))), ((int)(((byte)(79)))));
            this.cboNamHoc.FormattingEnabled = true;
            this.cboNamHoc.Location = new System.Drawing.Point(3, 3);
            this.cboNamHoc.Name = "cboNamHoc";
            this.cboNamHoc.Size = new System.Drawing.Size(170, 24);
            this.cboNamHoc.TabIndex = 7;
            this.cboNamHoc.SelectedIndexChanged += new System.EventHandler(this.cboNamHoc_SelectedIndexChanged);
            // 
            // btnBoQua
            // 
            this.btnBoQua.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(176)))), ((int)(((byte)(190)))), ((int)(((byte)(197)))));
            this.btnBoQua.Font = new System.Drawing.Font("Segoe UI", 10.2F);
            this.btnBoQua.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(55)))), ((int)(((byte)(71)))), ((int)(((byte)(79)))));
            this.btnBoQua.Location = new System.Drawing.Point(215, 231);
            this.btnBoQua.Name = "btnBoQua";
            this.btnBoQua.Size = new System.Drawing.Size(120, 40);
            this.btnBoQua.TabIndex = 9;
            this.btnBoQua.Text = "Bỏ qua";
            this.btnBoQua.UseVisualStyleBackColor = false;
            this.btnBoQua.Click += new System.EventHandler(this.btnBoQua_Click);
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(176)))), ((int)(((byte)(190)))), ((int)(((byte)(197)))));
            this.panel1.Controls.Add(this.txtDiemCK);
            this.panel1.Location = new System.Drawing.Point(478, 89);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(136, 36);
            this.panel1.TabIndex = 10;
            // 
            // panel3
            // 
            this.panel3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(176)))), ((int)(((byte)(190)))), ((int)(((byte)(197)))));
            this.panel3.Controls.Add(this.txtDiemGK);
            this.panel3.Location = new System.Drawing.Point(478, 28);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(136, 36);
            this.panel3.TabIndex = 10;
            // 
            // panel4
            // 
            this.panel4.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(176)))), ((int)(((byte)(190)))), ((int)(((byte)(197)))));
            this.panel4.Controls.Add(this.txtDiem45p);
            this.panel4.Location = new System.Drawing.Point(199, 156);
            this.panel4.Name = "panel4";
            this.panel4.Size = new System.Drawing.Size(136, 36);
            this.panel4.TabIndex = 10;
            // 
            // panel5
            // 
            this.panel5.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(176)))), ((int)(((byte)(190)))), ((int)(((byte)(197)))));
            this.panel5.Controls.Add(this.txtDiem15p);
            this.panel5.Location = new System.Drawing.Point(199, 86);
            this.panel5.Name = "panel5";
            this.panel5.Size = new System.Drawing.Size(136, 36);
            this.panel5.TabIndex = 10;
            // 
            // panel6
            // 
            this.panel6.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(176)))), ((int)(((byte)(190)))), ((int)(((byte)(197)))));
            this.panel6.Controls.Add(this.txtDiemM);
            this.panel6.Location = new System.Drawing.Point(199, 25);
            this.panel6.Name = "panel6";
            this.panel6.Size = new System.Drawing.Size(136, 36);
            this.panel6.TabIndex = 10;
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.cboTenLop);
            this.panel2.Location = new System.Drawing.Point(773, 56);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(176, 30);
            this.panel2.TabIndex = 11;
            // 
            // panel7
            // 
            this.panel7.Controls.Add(this.cboTenMH);
            this.panel7.Location = new System.Drawing.Point(773, 104);
            this.panel7.Name = "panel7";
            this.panel7.Size = new System.Drawing.Size(176, 30);
            this.panel7.TabIndex = 11;
            // 
            // panel8
            // 
            this.panel8.Controls.Add(this.cboNamHoc);
            this.panel8.Location = new System.Drawing.Point(773, 154);
            this.panel8.Name = "panel8";
            this.panel8.Size = new System.Drawing.Size(176, 30);
            this.panel8.TabIndex = 12;
            // 
            // panel9
            // 
            this.panel9.Controls.Add(this.cboHocKy);
            this.panel9.Location = new System.Drawing.Point(773, 198);
            this.panel9.Name = "panel9";
            this.panel9.Size = new System.Drawing.Size(176, 30);
            this.panel9.TabIndex = 12;
            // 
            // frmDiemSo
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(24)))), ((int)(((byte)(11)))), ((int)(((byte)(66)))));
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.Controls.Add(this.panel9);
            this.Controls.Add(this.panel8);
            this.Controls.Add(this.panel7);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel6);
            this.Controls.Add(this.panel5);
            this.Controls.Add(this.panel4);
            this.Controls.Add(this.panel3);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.btnBoQua);
            this.Controls.Add(this.btnInExcel);
            this.Controls.Add(this.btnCapNhat);
            this.Controls.Add(this.btnTiemKiem);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.dgvDiemSo);
            this.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(55)))), ((int)(((byte)(71)))), ((int)(((byte)(79)))));
            this.Name = "frmDiemSo";
            this.Size = new System.Drawing.Size(1016, 685);
            this.Load += new System.EventHandler(this.frmDiemSo_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvDiemSo)).EndInit();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.panel3.ResumeLayout(false);
            this.panel3.PerformLayout();
            this.panel4.ResumeLayout(false);
            this.panel4.PerformLayout();
            this.panel5.ResumeLayout(false);
            this.panel5.PerformLayout();
            this.panel6.ResumeLayout(false);
            this.panel6.PerformLayout();
            this.panel2.ResumeLayout(false);
            this.panel7.ResumeLayout(false);
            this.panel8.ResumeLayout(false);
            this.panel9.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dgvDiemSo;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox txtDiemM;
        private System.Windows.Forms.TextBox txtDiem15p;
        private System.Windows.Forms.TextBox txtDiem45p;
        private System.Windows.Forms.TextBox txtDiemGK;
        private System.Windows.Forms.TextBox txtDiemCK;
        private System.Windows.Forms.Button btnTiemKiem;
        private System.Windows.Forms.Button btnCapNhat;
        private System.Windows.Forms.ComboBox cboTenLop;
        private System.Windows.Forms.ComboBox cboTenMH;
        private System.Windows.Forms.Button btnInExcel;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.ComboBox cboHocKy;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.ComboBox cboNamHoc;
        private System.Windows.Forms.Button btnBoQua;
        private System.Windows.Forms.DataGridViewTextBoxColumn STT;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.Panel panel4;
        private System.Windows.Forms.Panel panel5;
        private System.Windows.Forms.Panel panel6;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Panel panel7;
        private System.Windows.Forms.Panel panel8;
        private System.Windows.Forms.Panel panel9;
    }
}
