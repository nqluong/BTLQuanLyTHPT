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
			this.cb_MaLop = new System.Windows.Forms.ComboBox();
			this.cb_GioiTinh = new System.Windows.Forms.ComboBox();
			this.dtp_NgaySinh = new System.Windows.Forms.DateTimePicker();
			this.tb_DiaChi = new System.Windows.Forms.TextBox();
			this.tb_HoTen = new System.Windows.Forms.TextBox();
			this.tb_MaHocSinh = new System.Windows.Forms.TextBox();
			this.label6 = new System.Windows.Forms.Label();
			this.label5 = new System.Windows.Forms.Label();
			this.label4 = new System.Windows.Forms.Label();
			this.label3 = new System.Windows.Forms.Label();
			this.label2 = new System.Windows.Forms.Label();
			this.label1 = new System.Windows.Forms.Label();
			this.btn_Sua = new System.Windows.Forms.Button();
			this.btn_Xoa = new System.Windows.Forms.Button();
			this.btn_Them = new System.Windows.Forms.Button();
			this.groupBox1.SuspendLayout();
			((System.ComponentModel.ISupportInitialize)(this.dgv)).BeginInit();
			this.groupBox2.SuspendLayout();
			this.SuspendLayout();
			// 
			// groupBox1
			// 
			this.groupBox1.Controls.Add(this.dgv);
			this.groupBox1.Location = new System.Drawing.Point(4, 3);
			this.groupBox1.Name = "groupBox1";
			this.groupBox1.Size = new System.Drawing.Size(621, 309);
			this.groupBox1.TabIndex = 21;
			this.groupBox1.TabStop = false;
			this.groupBox1.Text = "Thông tin học sinh";
			this.groupBox1.Enter += new System.EventHandler(this.groupBox1_Enter);
			// 
			// dgv
			// 
			this.dgv.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
			this.dgv.Location = new System.Drawing.Point(6, 19);
			this.dgv.Name = "dgv";
			this.dgv.Size = new System.Drawing.Size(609, 284);
			this.dgv.TabIndex = 0;
			this.dgv.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgv_CellContentClick);
			// 
			// groupBox2
			// 
			this.groupBox2.Controls.Add(this.cb_MaLop);
			this.groupBox2.Controls.Add(this.cb_GioiTinh);
			this.groupBox2.Controls.Add(this.dtp_NgaySinh);
			this.groupBox2.Controls.Add(this.tb_DiaChi);
			this.groupBox2.Controls.Add(this.tb_HoTen);
			this.groupBox2.Controls.Add(this.tb_MaHocSinh);
			this.groupBox2.Controls.Add(this.label6);
			this.groupBox2.Controls.Add(this.label5);
			this.groupBox2.Controls.Add(this.label4);
			this.groupBox2.Controls.Add(this.label3);
			this.groupBox2.Controls.Add(this.label2);
			this.groupBox2.Controls.Add(this.label1);
			this.groupBox2.Location = new System.Drawing.Point(10, 318);
			this.groupBox2.Name = "groupBox2";
			this.groupBox2.Size = new System.Drawing.Size(473, 216);
			this.groupBox2.TabIndex = 22;
			this.groupBox2.TabStop = false;
			this.groupBox2.Text = "Thông tin chi tiết";
			// 
			// cb_MaLop
			// 
			this.cb_MaLop.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
			this.cb_MaLop.FormattingEnabled = true;
			this.cb_MaLop.Items.AddRange(new object[] {
            "L001",
            "L002",
            "L003",
            "L004"});
			this.cb_MaLop.Location = new System.Drawing.Point(358, 112);
			this.cb_MaLop.Name = "cb_MaLop";
			this.cb_MaLop.Size = new System.Drawing.Size(85, 21);
			this.cb_MaLop.TabIndex = 12;
			this.cb_MaLop.SelectedIndexChanged += new System.EventHandler(this.cb_MaLop_SelectedIndexChanged);
			// 
			// cb_GioiTinh
			// 
			this.cb_GioiTinh.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
			this.cb_GioiTinh.FormattingEnabled = true;
			this.cb_GioiTinh.Items.AddRange(new object[] {
            "Nam",
            "Nữ"});
			this.cb_GioiTinh.Location = new System.Drawing.Point(358, 166);
			this.cb_GioiTinh.Name = "cb_GioiTinh";
			this.cb_GioiTinh.Size = new System.Drawing.Size(85, 21);
			this.cb_GioiTinh.TabIndex = 11;
			this.cb_GioiTinh.SelectedIndexChanged += new System.EventHandler(this.cb_GioiTinh_SelectedIndexChanged);
			// 
			// dtp_NgaySinh
			// 
			this.dtp_NgaySinh.Format = System.Windows.Forms.DateTimePickerFormat.Short;
			this.dtp_NgaySinh.Location = new System.Drawing.Point(358, 57);
			this.dtp_NgaySinh.Name = "dtp_NgaySinh";
			this.dtp_NgaySinh.Size = new System.Drawing.Size(85, 20);
			this.dtp_NgaySinh.TabIndex = 10;
			this.dtp_NgaySinh.ValueChanged += new System.EventHandler(this.dtp_NgaySinh_ValueChanged);
			// 
			// tb_DiaChi
			// 
			this.tb_DiaChi.Location = new System.Drawing.Point(91, 167);
			this.tb_DiaChi.Name = "tb_DiaChi";
			this.tb_DiaChi.Size = new System.Drawing.Size(151, 20);
			this.tb_DiaChi.TabIndex = 9;
			this.tb_DiaChi.TextChanged += new System.EventHandler(this.tb_DiaChi_TextChanged);
			// 
			// tb_HoTen
			// 
			this.tb_HoTen.Location = new System.Drawing.Point(91, 109);
			this.tb_HoTen.Name = "tb_HoTen";
			this.tb_HoTen.Size = new System.Drawing.Size(151, 20);
			this.tb_HoTen.TabIndex = 7;
			this.tb_HoTen.TextChanged += new System.EventHandler(this.tb_HoTen_TextChanged);
			// 
			// tb_MaHocSinh
			// 
			this.tb_MaHocSinh.Location = new System.Drawing.Point(91, 57);
			this.tb_MaHocSinh.Name = "tb_MaHocSinh";
			this.tb_MaHocSinh.Size = new System.Drawing.Size(151, 20);
			this.tb_MaHocSinh.TabIndex = 6;
			this.tb_MaHocSinh.TextChanged += new System.EventHandler(this.tb_MaHocSinh_TextChanged);
			// 
			// label6
			// 
			this.label6.AutoSize = true;
			this.label6.Location = new System.Drawing.Point(19, 170);
			this.label6.Name = "label6";
			this.label6.Size = new System.Drawing.Size(40, 13);
			this.label6.TabIndex = 5;
			this.label6.Text = "Địa chỉ";
			// 
			// label5
			// 
			this.label5.AutoSize = true;
			this.label5.Location = new System.Drawing.Point(286, 112);
			this.label5.Name = "label5";
			this.label5.Size = new System.Drawing.Size(43, 13);
			this.label5.TabIndex = 4;
			this.label5.Text = "Mã Lớp";
			// 
			// label4
			// 
			this.label4.AutoSize = true;
			this.label4.Location = new System.Drawing.Point(19, 112);
			this.label4.Name = "label4";
			this.label4.Size = new System.Drawing.Size(39, 13);
			this.label4.TabIndex = 3;
			this.label4.Text = "Họ tên";
			// 
			// label3
			// 
			this.label3.AutoSize = true;
			this.label3.Location = new System.Drawing.Point(286, 57);
			this.label3.Name = "label3";
			this.label3.Size = new System.Drawing.Size(54, 13);
			this.label3.TabIndex = 2;
			this.label3.Text = "Ngày sinh";
			// 
			// label2
			// 
			this.label2.AutoSize = true;
			this.label2.Location = new System.Drawing.Point(286, 170);
			this.label2.Name = "label2";
			this.label2.Size = new System.Drawing.Size(47, 13);
			this.label2.TabIndex = 1;
			this.label2.Text = "Giới tính";
			// 
			// label1
			// 
			this.label1.AutoSize = true;
			this.label1.Location = new System.Drawing.Point(19, 57);
			this.label1.Name = "label1";
			this.label1.Size = new System.Drawing.Size(65, 13);
			this.label1.TabIndex = 0;
			this.label1.Text = "Mã học sinh";
			// 
			// btn_Sua
			// 
			this.btn_Sua.Location = new System.Drawing.Point(524, 425);
			this.btn_Sua.Name = "btn_Sua";
			this.btn_Sua.Size = new System.Drawing.Size(75, 23);
			this.btn_Sua.TabIndex = 24;
			this.btn_Sua.Text = "Sửa";
			this.btn_Sua.UseVisualStyleBackColor = true;
			this.btn_Sua.Click += new System.EventHandler(this.btn_Sua_Click);
			// 
			// btn_Xoa
			// 
			this.btn_Xoa.Location = new System.Drawing.Point(524, 485);
			this.btn_Xoa.Name = "btn_Xoa";
			this.btn_Xoa.Size = new System.Drawing.Size(75, 23);
			this.btn_Xoa.TabIndex = 25;
			this.btn_Xoa.Text = "Xóa";
			this.btn_Xoa.UseVisualStyleBackColor = true;
			this.btn_Xoa.Click += new System.EventHandler(this.btn_Xoa_Click);
			// 
			// btn_Them
			// 
			this.btn_Them.Location = new System.Drawing.Point(524, 375);
			this.btn_Them.Name = "btn_Them";
			this.btn_Them.Size = new System.Drawing.Size(75, 23);
			this.btn_Them.TabIndex = 23;
			this.btn_Them.Text = "Thêm";
			this.btn_Them.UseVisualStyleBackColor = true;
			this.btn_Them.Click += new System.EventHandler(this.btn_Them_Click);
			// 
			// frmHocSinh
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.Controls.Add(this.groupBox1);
			this.Controls.Add(this.groupBox2);
			this.Controls.Add(this.btn_Sua);
			this.Controls.Add(this.btn_Xoa);
			this.Controls.Add(this.btn_Them);
			this.Name = "frmHocSinh";
			this.Size = new System.Drawing.Size(634, 537);
			this.Load += new System.EventHandler(this.frmHocSinh_Load);
			this.groupBox1.ResumeLayout(false);
			((System.ComponentModel.ISupportInitialize)(this.dgv)).EndInit();
			this.groupBox2.ResumeLayout(false);
			this.groupBox2.PerformLayout();
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
		private System.Windows.Forms.TextBox tb_MaHocSinh;
		private System.Windows.Forms.Label label6;
		private System.Windows.Forms.Label label5;
		private System.Windows.Forms.Label label4;
		private System.Windows.Forms.Label label3;
		private System.Windows.Forms.Label label2;
		private System.Windows.Forms.Label label1;
		private System.Windows.Forms.Button btn_Sua;
		private System.Windows.Forms.Button btn_Xoa;
		private System.Windows.Forms.Button btn_Them;
	}
}
