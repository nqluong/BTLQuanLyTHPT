﻿namespace GUI
{
	partial class frmHocSinh
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
			this.groupBox1 = new System.Windows.Forms.GroupBox();
			this.dgv = new System.Windows.Forms.DataGridView();
			this.groupBox2 = new System.Windows.Forms.GroupBox();
			this.panel4 = new System.Windows.Forms.Panel();
			this.dtp_NgaySinh = new System.Windows.Forms.DateTimePicker();
			this.panel5 = new System.Windows.Forms.Panel();
			this.cb_MaLop = new System.Windows.Forms.ComboBox();
			this.panel6 = new System.Windows.Forms.Panel();
			this.cb_GioiTinh = new System.Windows.Forms.ComboBox();
			this.panel3 = new System.Windows.Forms.Panel();
			this.tb_DiaChi = new System.Windows.Forms.TextBox();
			this.panel2 = new System.Windows.Forms.Panel();
			this.tb_HoTen = new System.Windows.Forms.TextBox();
			this.label6 = new System.Windows.Forms.Label();
			this.label5 = new System.Windows.Forms.Label();
			this.label4 = new System.Windows.Forms.Label();
			this.label3 = new System.Windows.Forms.Label();
			this.label2 = new System.Windows.Forms.Label();
			this.btn_Sua = new System.Windows.Forms.Button();
			this.btn_Xoa = new System.Windows.Forms.Button();
			this.btn_Them = new System.Windows.Forms.Button();
			this.groupBox1.SuspendLayout();
			((System.ComponentModel.ISupportInitialize)(this.dgv)).BeginInit();
			this.groupBox2.SuspendLayout();
			this.panel4.SuspendLayout();
			this.panel5.SuspendLayout();
			this.panel6.SuspendLayout();
			this.panel3.SuspendLayout();
			this.panel2.SuspendLayout();
			this.SuspendLayout();
			// 
			// groupBox1
			// 
			this.groupBox1.Controls.Add(this.dgv);
			this.groupBox1.Location = new System.Drawing.Point(5, 4);
			this.groupBox1.Margin = new System.Windows.Forms.Padding(4);
			this.groupBox1.Name = "groupBox1";
			this.groupBox1.Padding = new System.Windows.Forms.Padding(4);
			this.groupBox1.Size = new System.Drawing.Size(1050, 380);
			this.groupBox1.TabIndex = 21;
			this.groupBox1.TabStop = false;
			this.groupBox1.Text = "Thông tin học sinh";
			this.groupBox1.Enter += new System.EventHandler(this.groupBox1_Enter);
			// 
			// dgv
			// 
			this.dgv.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(24)))), ((int)(((byte)(11)))), ((int)(((byte)(66)))));
			this.dgv.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
			this.dgv.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(189)))), ((int)(((byte)(189)))), ((int)(((byte)(189)))));
			this.dgv.Location = new System.Drawing.Point(8, 23);
			this.dgv.Margin = new System.Windows.Forms.Padding(4);
			this.dgv.Name = "dgv";
			this.dgv.RowHeadersWidth = 51;
			this.dgv.Size = new System.Drawing.Size(1038, 350);
			this.dgv.TabIndex = 0;
			this.dgv.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgv_CellContentClick);
			// 
			// groupBox2
			// 
			this.groupBox2.Controls.Add(this.panel4);
			this.groupBox2.Controls.Add(this.panel5);
			this.groupBox2.Controls.Add(this.panel6);
			this.groupBox2.Controls.Add(this.panel3);
			this.groupBox2.Controls.Add(this.panel2);
			this.groupBox2.Controls.Add(this.label6);
			this.groupBox2.Controls.Add(this.label5);
			this.groupBox2.Controls.Add(this.label4);
			this.groupBox2.Controls.Add(this.label3);
			this.groupBox2.Controls.Add(this.label2);
			this.groupBox2.ForeColor = System.Drawing.Color.White;
			this.groupBox2.Location = new System.Drawing.Point(13, 392);
			this.groupBox2.Margin = new System.Windows.Forms.Padding(4);
			this.groupBox2.Name = "groupBox2";
			this.groupBox2.Padding = new System.Windows.Forms.Padding(4);
			this.groupBox2.Size = new System.Drawing.Size(631, 266);
			this.groupBox2.TabIndex = 22;
			this.groupBox2.TabStop = false;
			this.groupBox2.Text = "Thông tin chi tiết";
			// 
			// panel4
			// 
			this.panel4.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(176)))), ((int)(((byte)(190)))), ((int)(((byte)(197)))));
			this.panel4.Controls.Add(this.dtp_NgaySinh);
			this.panel4.Location = new System.Drawing.Point(473, 63);
			this.panel4.Name = "panel4";
			this.panel4.Size = new System.Drawing.Size(118, 30);
			this.panel4.TabIndex = 26;
			// 
			// dtp_NgaySinh
			// 
			this.dtp_NgaySinh.Format = System.Windows.Forms.DateTimePickerFormat.Short;
			this.dtp_NgaySinh.Location = new System.Drawing.Point(4, 4);
			this.dtp_NgaySinh.Margin = new System.Windows.Forms.Padding(4);
			this.dtp_NgaySinh.Name = "dtp_NgaySinh";
			this.dtp_NgaySinh.Size = new System.Drawing.Size(112, 22);
			this.dtp_NgaySinh.TabIndex = 10;
			this.dtp_NgaySinh.ValueChanged += new System.EventHandler(this.dtp_NgaySinh_ValueChanged);
			// 
			// panel5
			// 
			this.panel5.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(176)))), ((int)(((byte)(190)))), ((int)(((byte)(197)))));
			this.panel5.Controls.Add(this.cb_MaLop);
			this.panel5.Location = new System.Drawing.Point(473, 130);
			this.panel5.Name = "panel5";
			this.panel5.Size = new System.Drawing.Size(118, 30);
			this.panel5.TabIndex = 26;
			// 
			// cb_MaLop
			// 
			this.cb_MaLop.BackColor = System.Drawing.Color.WhiteSmoke;
			this.cb_MaLop.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
			this.cb_MaLop.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(69)))), ((int)(((byte)(90)))), ((int)(((byte)(100)))));
			this.cb_MaLop.FormattingEnabled = true;
			this.cb_MaLop.Location = new System.Drawing.Point(2, 2);
			this.cb_MaLop.Margin = new System.Windows.Forms.Padding(4);
			this.cb_MaLop.Name = "cb_MaLop";
			this.cb_MaLop.Size = new System.Drawing.Size(112, 24);
			this.cb_MaLop.TabIndex = 12;
			this.cb_MaLop.SelectedIndexChanged += new System.EventHandler(this.cb_MaLop_SelectedIndexChanged);
			// 
			// panel6
			// 
			this.panel6.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(176)))), ((int)(((byte)(190)))), ((int)(((byte)(197)))));
			this.panel6.Controls.Add(this.cb_GioiTinh);
			this.panel6.Location = new System.Drawing.Point(123, 211);
			this.panel6.Name = "panel6";
			this.panel6.Size = new System.Drawing.Size(118, 30);
			this.panel6.TabIndex = 26;
			// 
			// cb_GioiTinh
			// 
			this.cb_GioiTinh.BackColor = System.Drawing.Color.WhiteSmoke;
			this.cb_GioiTinh.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
			this.cb_GioiTinh.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(69)))), ((int)(((byte)(90)))), ((int)(((byte)(100)))));
			this.cb_GioiTinh.FormattingEnabled = true;
			this.cb_GioiTinh.Items.AddRange(new object[] {
            "Nam",
            "Nữ"});
			this.cb_GioiTinh.Location = new System.Drawing.Point(2, 4);
			this.cb_GioiTinh.Margin = new System.Windows.Forms.Padding(4);
			this.cb_GioiTinh.Name = "cb_GioiTinh";
			this.cb_GioiTinh.Size = new System.Drawing.Size(112, 24);
			this.cb_GioiTinh.TabIndex = 11;
			this.cb_GioiTinh.SelectedIndexChanged += new System.EventHandler(this.cb_GioiTinh_SelectedIndexChanged);
			// 
			// panel3
			// 
			this.panel3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(176)))), ((int)(((byte)(190)))), ((int)(((byte)(197)))));
			this.panel3.Controls.Add(this.tb_DiaChi);
			this.panel3.Location = new System.Drawing.Point(121, 130);
			this.panel3.Name = "panel3";
			this.panel3.Size = new System.Drawing.Size(226, 36);
			this.panel3.TabIndex = 13;
			// 
			// tb_DiaChi
			// 
			this.tb_DiaChi.BackColor = System.Drawing.Color.WhiteSmoke;
			this.tb_DiaChi.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(69)))), ((int)(((byte)(90)))), ((int)(((byte)(100)))));
			this.tb_DiaChi.Location = new System.Drawing.Point(4, 4);
			this.tb_DiaChi.Margin = new System.Windows.Forms.Padding(4);
			this.tb_DiaChi.Multiline = true;
			this.tb_DiaChi.Name = "tb_DiaChi";
			this.tb_DiaChi.Size = new System.Drawing.Size(220, 30);
			this.tb_DiaChi.TabIndex = 9;
			this.tb_DiaChi.TextChanged += new System.EventHandler(this.tb_DiaChi_TextChanged);
			// 
			// panel2
			// 
			this.panel2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(176)))), ((int)(((byte)(190)))), ((int)(((byte)(197)))));
			this.panel2.Controls.Add(this.tb_HoTen);
			this.panel2.Location = new System.Drawing.Point(121, 63);
			this.panel2.Name = "panel2";
			this.panel2.Size = new System.Drawing.Size(226, 36);
			this.panel2.TabIndex = 13;
			// 
			// tb_HoTen
			// 
			this.tb_HoTen.BackColor = System.Drawing.Color.WhiteSmoke;
			this.tb_HoTen.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(69)))), ((int)(((byte)(90)))), ((int)(((byte)(100)))));
			this.tb_HoTen.Location = new System.Drawing.Point(2, 2);
			this.tb_HoTen.Margin = new System.Windows.Forms.Padding(4);
			this.tb_HoTen.Multiline = true;
			this.tb_HoTen.Name = "tb_HoTen";
			this.tb_HoTen.Size = new System.Drawing.Size(220, 30);
			this.tb_HoTen.TabIndex = 7;
			this.tb_HoTen.TextChanged += new System.EventHandler(this.tb_HoTen_TextChanged);
			// 
			// label6
			// 
			this.label6.AutoSize = true;
			this.label6.Font = new System.Drawing.Font("Segoe UI", 10.2F);
			this.label6.ForeColor = System.Drawing.Color.White;
			this.label6.Location = new System.Drawing.Point(25, 130);
			this.label6.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
			this.label6.Name = "label6";
			this.label6.Size = new System.Drawing.Size(62, 23);
			this.label6.TabIndex = 5;
			this.label6.Text = "Địa chỉ";
			// 
			// label5
			// 
			this.label5.AutoSize = true;
			this.label5.Font = new System.Drawing.Font("Segoe UI", 10.2F);
			this.label5.ForeColor = System.Drawing.Color.White;
			this.label5.Location = new System.Drawing.Point(381, 139);
			this.label5.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
			this.label5.Name = "label5";
			this.label5.Size = new System.Drawing.Size(38, 23);
			this.label5.TabIndex = 4;
			this.label5.Text = "Lớp";
			// 
			// label4
			// 
			this.label4.AutoSize = true;
			this.label4.Font = new System.Drawing.Font("Segoe UI", 10.2F);
			this.label4.ForeColor = System.Drawing.Color.White;
			this.label4.Location = new System.Drawing.Point(25, 63);
			this.label4.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
			this.label4.Name = "label4";
			this.label4.Size = new System.Drawing.Size(62, 23);
			this.label4.TabIndex = 3;
			this.label4.Text = "Họ tên";
			// 
			// label3
			// 
			this.label3.AutoSize = true;
			this.label3.Font = new System.Drawing.Font("Segoe UI", 10.2F);
			this.label3.ForeColor = System.Drawing.Color.White;
			this.label3.Location = new System.Drawing.Point(381, 70);
			this.label3.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
			this.label3.Name = "label3";
			this.label3.Size = new System.Drawing.Size(86, 23);
			this.label3.TabIndex = 2;
			this.label3.Text = "Ngày sinh";
			// 
			// label2
			// 
			this.label2.AutoSize = true;
			this.label2.Font = new System.Drawing.Font("Segoe UI", 10.2F);
			this.label2.ForeColor = System.Drawing.Color.White;
			this.label2.Location = new System.Drawing.Point(25, 211);
			this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
			this.label2.Name = "label2";
			this.label2.Size = new System.Drawing.Size(75, 23);
			this.label2.TabIndex = 1;
			this.label2.Text = "Giới tính";
			// 
			// btn_Sua
			// 
			this.btn_Sua.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(176)))), ((int)(((byte)(190)))), ((int)(((byte)(197)))));
			this.btn_Sua.Font = new System.Drawing.Font("Segoe UI", 10.2F);
			this.btn_Sua.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(55)))), ((int)(((byte)(71)))), ((int)(((byte)(79)))));
			this.btn_Sua.Location = new System.Drawing.Point(843, 522);
			this.btn_Sua.Margin = new System.Windows.Forms.Padding(4);
			this.btn_Sua.Name = "btn_Sua";
			this.btn_Sua.Size = new System.Drawing.Size(120, 36);
			this.btn_Sua.TabIndex = 24;
			this.btn_Sua.Text = "Sửa";
			this.btn_Sua.UseVisualStyleBackColor = false;
			this.btn_Sua.Click += new System.EventHandler(this.btn_Sua_Click);
			// 
			// btn_Xoa
			// 
			this.btn_Xoa.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(176)))), ((int)(((byte)(190)))), ((int)(((byte)(197)))));
			this.btn_Xoa.Font = new System.Drawing.Font("Segoe UI", 10.2F);
			this.btn_Xoa.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(55)))), ((int)(((byte)(71)))), ((int)(((byte)(79)))));
			this.btn_Xoa.Location = new System.Drawing.Point(843, 588);
			this.btn_Xoa.Margin = new System.Windows.Forms.Padding(4);
			this.btn_Xoa.Name = "btn_Xoa";
			this.btn_Xoa.Size = new System.Drawing.Size(120, 38);
			this.btn_Xoa.TabIndex = 25;
			this.btn_Xoa.Text = "Xóa";
			this.btn_Xoa.UseVisualStyleBackColor = false;
			this.btn_Xoa.Click += new System.EventHandler(this.btn_Xoa_Click);
			// 
			// btn_Them
			// 
			this.btn_Them.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(176)))), ((int)(((byte)(190)))), ((int)(((byte)(197)))));
			this.btn_Them.Font = new System.Drawing.Font("Segoe UI", 10.2F);
			this.btn_Them.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(55)))), ((int)(((byte)(71)))), ((int)(((byte)(79)))));
			this.btn_Them.Location = new System.Drawing.Point(843, 455);
			this.btn_Them.Margin = new System.Windows.Forms.Padding(4);
			this.btn_Them.Name = "btn_Them";
			this.btn_Them.Size = new System.Drawing.Size(120, 36);
			this.btn_Them.TabIndex = 23;
			this.btn_Them.Text = "Thêm";
			this.btn_Them.UseVisualStyleBackColor = false;
			this.btn_Them.Click += new System.EventHandler(this.btn_Them_Click);
			// 
			// frmHocSinh
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(24)))), ((int)(((byte)(11)))), ((int)(((byte)(66)))));
			this.Controls.Add(this.groupBox1);
			this.Controls.Add(this.groupBox2);
			this.Controls.Add(this.btn_Sua);
			this.Controls.Add(this.btn_Xoa);
			this.Controls.Add(this.btn_Them);
			this.ForeColor = System.Drawing.Color.Black;
			this.Margin = new System.Windows.Forms.Padding(4);
			this.Name = "frmHocSinh";
			this.Size = new System.Drawing.Size(1069, 672);
			this.Load += new System.EventHandler(this.frmHocSinh_Load);
			this.groupBox1.ResumeLayout(false);
			((System.ComponentModel.ISupportInitialize)(this.dgv)).EndInit();
			this.groupBox2.ResumeLayout(false);
			this.groupBox2.PerformLayout();
			this.panel4.ResumeLayout(false);
			this.panel5.ResumeLayout(false);
			this.panel6.ResumeLayout(false);
			this.panel3.ResumeLayout(false);
			this.panel3.PerformLayout();
			this.panel2.ResumeLayout(false);
			this.panel2.PerformLayout();
			this.ResumeLayout(false);

		}

		#endregion

		private System.Windows.Forms.GroupBox groupBox1;
		private System.Windows.Forms.DataGridView dgv;
		private System.Windows.Forms.GroupBox groupBox2;
		private System.Windows.Forms.ComboBox cb_MaLop;
		private System.Windows.Forms.ComboBox cb_GioiTinh;
		private System.Windows.Forms.DateTimePicker dtp_NgaySinh;
		private System.Windows.Forms.TextBox tb_DiaChi;
		private System.Windows.Forms.TextBox tb_HoTen;
		private System.Windows.Forms.Label label6;
		private System.Windows.Forms.Label label5;
		private System.Windows.Forms.Label label4;
		private System.Windows.Forms.Label label3;
		private System.Windows.Forms.Label label2;
		private System.Windows.Forms.Button btn_Sua;
		private System.Windows.Forms.Button btn_Xoa;
		private System.Windows.Forms.Button btn_Them;
        private System.Windows.Forms.Panel panel4;
        private System.Windows.Forms.Panel panel5;
        private System.Windows.Forms.Panel panel6;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.Panel panel2;
    }
}
