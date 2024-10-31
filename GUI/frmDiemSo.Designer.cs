namespace GUI
{
    partial class frmDiemSo
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
            this.dgvDiemSo = new System.Windows.Forms.DataGridView();
            this.STT = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Edit = new System.Windows.Forms.DataGridViewButtonColumn();
            this.Cancel = new System.Windows.Forms.DataGridViewButtonColumn();
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
            ((System.ComponentModel.ISupportInitialize)(this.dgvDiemSo)).BeginInit();
            this.SuspendLayout();
            // 
            // dgvDiemSo
            // 
            this.dgvDiemSo.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvDiemSo.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.STT,
            this.Edit,
            this.Cancel});
            this.dgvDiemSo.Location = new System.Drawing.Point(18, 236);
            this.dgvDiemSo.Name = "dgvDiemSo";
            this.dgvDiemSo.RowHeadersWidth = 51;
            this.dgvDiemSo.RowTemplate.Height = 24;
            this.dgvDiemSo.Size = new System.Drawing.Size(808, 366);
            this.dgvDiemSo.TabIndex = 0;
            this.dgvDiemSo.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvDiemSo_CellClick);
            this.dgvDiemSo.RowPrePaint += new System.Windows.Forms.DataGridViewRowPrePaintEventHandler(this.dgvDiemSo_RowPrePaint);
            // 
            // STT
            // 
            this.STT.HeaderText = "STT";
            this.STT.MinimumWidth = 6;
            this.STT.Name = "STT";
            this.STT.Width = 125;
            // 
            // Edit
            // 
            this.Edit.HeaderText = "Edit";
            this.Edit.MinimumWidth = 6;
            this.Edit.Name = "Edit";
            this.Edit.Text = "Edit";
            this.Edit.UseColumnTextForButtonValue = true;
            this.Edit.Width = 125;
            // 
            // Cancel
            // 
            this.Cancel.HeaderText = "Cancel";
            this.Cancel.MinimumWidth = 6;
            this.Cancel.Name = "Cancel";
            this.Cancel.Text = "Cancel";
            this.Cancel.UseColumnTextForButtonValue = true;
            this.Cancel.Visible = false;
            this.Cancel.Width = 125;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(564, 67);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(53, 16);
            this.label1.TabIndex = 1;
            this.label1.Text = "Tên lớp";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(15, 37);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(78, 16);
            this.label2.TabIndex = 1;
            this.label2.Text = "Điểm miệng";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(18, 98);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(63, 16);
            this.label3.TabIndex = 1;
            this.label3.Text = "Điểm 15p";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(18, 168);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(63, 16);
            this.label4.TabIndex = 1;
            this.label4.Text = "Điểm 45p";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(564, 117);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(85, 16);
            this.label5.TabIndex = 1;
            this.label5.Text = "Tên môn học";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(278, 37);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(84, 16);
            this.label6.TabIndex = 1;
            this.label6.Text = "Điểm giữa kỳ";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(279, 98);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(83, 16);
            this.label7.TabIndex = 1;
            this.label7.Text = "Điểm cuối kỳ";
            // 
            // txtDiemM
            // 
            this.txtDiemM.Location = new System.Drawing.Point(113, 34);
            this.txtDiemM.Name = "txtDiemM";
            this.txtDiemM.Size = new System.Drawing.Size(127, 22);
            this.txtDiemM.TabIndex = 2;
            this.txtDiemM.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtDiemM_KeyPress);
            // 
            // txtDiem15p
            // 
            this.txtDiem15p.Location = new System.Drawing.Point(113, 95);
            this.txtDiem15p.Name = "txtDiem15p";
            this.txtDiem15p.Size = new System.Drawing.Size(127, 22);
            this.txtDiem15p.TabIndex = 2;
            this.txtDiem15p.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtDiem15p_KeyPress);
            // 
            // txtDiem45p
            // 
            this.txtDiem45p.Location = new System.Drawing.Point(113, 165);
            this.txtDiem45p.Name = "txtDiem45p";
            this.txtDiem45p.Size = new System.Drawing.Size(127, 22);
            this.txtDiem45p.TabIndex = 2;
            this.txtDiem45p.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtDiem45p_KeyPress);
            // 
            // txtDiemGK
            // 
            this.txtDiemGK.Location = new System.Drawing.Point(384, 34);
            this.txtDiemGK.Name = "txtDiemGK";
            this.txtDiemGK.Size = new System.Drawing.Size(127, 22);
            this.txtDiemGK.TabIndex = 2;
            this.txtDiemGK.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtDiemGK_KeyPress);
            // 
            // txtDiemCK
            // 
            this.txtDiemCK.Location = new System.Drawing.Point(384, 95);
            this.txtDiemCK.Name = "txtDiemCK";
            this.txtDiemCK.Size = new System.Drawing.Size(127, 22);
            this.txtDiemCK.TabIndex = 2;
            this.txtDiemCK.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtDiemCK_KeyPress);
            // 
            // btnTiemKiem
            // 
            this.btnTiemKiem.Location = new System.Drawing.Point(544, 19);
            this.btnTiemKiem.Name = "btnTiemKiem";
            this.btnTiemKiem.Size = new System.Drawing.Size(109, 23);
            this.btnTiemKiem.TabIndex = 3;
            this.btnTiemKiem.Text = "Tìm kiếm";
            this.btnTiemKiem.UseVisualStyleBackColor = true;
            this.btnTiemKiem.Click += new System.EventHandler(this.btnTimKiem_Click);
            // 
            // btnCapNhat
            // 
            this.btnCapNhat.Location = new System.Drawing.Point(544, 168);
            this.btnCapNhat.Name = "btnCapNhat";
            this.btnCapNhat.Size = new System.Drawing.Size(109, 23);
            this.btnCapNhat.TabIndex = 3;
            this.btnCapNhat.Text = "Cập nhật";
            this.btnCapNhat.UseVisualStyleBackColor = true;
            this.btnCapNhat.Click += new System.EventHandler(this.btnCapNhat_Click);
            // 
            // cboTenLop
            // 
            this.cboTenLop.FormattingEnabled = true;
            this.cboTenLop.Location = new System.Drawing.Point(655, 64);
            this.cboTenLop.Name = "cboTenLop";
            this.cboTenLop.Size = new System.Drawing.Size(171, 24);
            this.cboTenLop.TabIndex = 6;
            // 
            // cboTenMH
            // 
            this.cboTenMH.FormattingEnabled = true;
            this.cboTenMH.Location = new System.Drawing.Point(655, 114);
            this.cboTenMH.Name = "cboTenMH";
            this.cboTenMH.Size = new System.Drawing.Size(171, 24);
            this.cboTenMH.TabIndex = 7;
            // 
            // btnInExcel
            // 
            this.btnInExcel.Location = new System.Drawing.Point(706, 168);
            this.btnInExcel.Name = "btnInExcel";
            this.btnInExcel.Size = new System.Drawing.Size(93, 23);
            this.btnInExcel.TabIndex = 8;
            this.btnInExcel.Text = "In file Excel";
            this.btnInExcel.UseVisualStyleBackColor = true;
            this.btnInExcel.Click += new System.EventHandler(this.btnInExcel_Click);
            // 
            // frmDiemSo
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.btnInExcel);
            this.Controls.Add(this.cboTenMH);
            this.Controls.Add(this.cboTenLop);
            this.Controls.Add(this.btnCapNhat);
            this.Controls.Add(this.btnTiemKiem);
            this.Controls.Add(this.txtDiemCK);
            this.Controls.Add(this.txtDiemGK);
            this.Controls.Add(this.txtDiem45p);
            this.Controls.Add(this.txtDiem15p);
            this.Controls.Add(this.txtDiemM);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.dgvDiemSo);
            this.Name = "frmDiemSo";
            this.Size = new System.Drawing.Size(1161, 676);
            this.Load += new System.EventHandler(this.frmDiemSo_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvDiemSo)).EndInit();
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
        private System.Windows.Forms.DataGridViewTextBoxColumn STT;
        private System.Windows.Forms.DataGridViewButtonColumn Edit;
        private System.Windows.Forms.DataGridViewButtonColumn Cancel;
        private System.Windows.Forms.ComboBox cboTenLop;
        private System.Windows.Forms.ComboBox cboTenMH;
        private System.Windows.Forms.Button btnInExcel;
    }
}
