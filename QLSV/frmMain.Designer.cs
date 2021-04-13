namespace QLSV
{
    partial class frmMain
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
            this.components = new System.ComponentModel.Container();
            this.taiKhoanBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.qLSVDataSet5 = new QLSV.QLSVDataSet5();
            this.qLSVDataSet4 = new QLSV.QLSVDataSet4();
            this.tblSinhVienBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.tblSinhVienTableAdapter = new QLSV.QLSVDataSet4TableAdapters.tblSinhVienTableAdapter();
            this.taiKhoanTableAdapter = new QLSV.QLSVDataSet5TableAdapters.TaiKhoanTableAdapter();
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.menuStrip2 = new System.Windows.Forms.MenuStrip();
            this.hệThốngToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.doiMatKhauToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.thoatToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.quanLyToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.sinhVienToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.monHocToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.LopHocToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.giaoVienToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.dangKyToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.chucNangToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.chamDiemToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.pnlContent = new System.Windows.Forms.Panel();
            this.dangKyMonHocToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.traCuuDiemToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            ((System.ComponentModel.ISupportInitialize)(this.taiKhoanBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.qLSVDataSet5)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.qLSVDataSet4)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.tblSinhVienBindingSource)).BeginInit();
            this.menuStrip2.SuspendLayout();
            this.SuspendLayout();
            // 
            // taiKhoanBindingSource
            // 
            this.taiKhoanBindingSource.DataMember = "TaiKhoan";
            this.taiKhoanBindingSource.DataSource = this.qLSVDataSet5;
            // 
            // qLSVDataSet5
            // 
            this.qLSVDataSet5.DataSetName = "QLSVDataSet5";
            this.qLSVDataSet5.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // qLSVDataSet4
            // 
            this.qLSVDataSet4.DataSetName = "QLSVDataSet4";
            this.qLSVDataSet4.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // tblSinhVienBindingSource
            // 
            this.tblSinhVienBindingSource.DataMember = "tblSinhVien";
            this.tblSinhVienBindingSource.DataSource = this.qLSVDataSet4;
            // 
            // tblSinhVienTableAdapter
            // 
            this.tblSinhVienTableAdapter.ClearBeforeFill = true;
            // 
            // taiKhoanTableAdapter
            // 
            this.taiKhoanTableAdapter.ClearBeforeFill = true;
            // 
            // menuStrip1
            // 
            this.menuStrip1.Location = new System.Drawing.Point(0, 24);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(800, 24);
            this.menuStrip1.TabIndex = 0;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // menuStrip2
            // 
            this.menuStrip2.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.hệThốngToolStripMenuItem,
            this.quanLyToolStripMenuItem,
            this.dangKyToolStripMenuItem,
            this.chucNangToolStripMenuItem,
            this.chamDiemToolStripMenuItem});
            this.menuStrip2.Location = new System.Drawing.Point(0, 0);
            this.menuStrip2.Name = "menuStrip2";
            this.menuStrip2.Size = new System.Drawing.Size(800, 24);
            this.menuStrip2.TabIndex = 1;
            this.menuStrip2.Text = "menuStrip2";
            // 
            // hệThốngToolStripMenuItem
            // 
            this.hệThốngToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.doiMatKhauToolStripMenuItem,
            this.thoatToolStripMenuItem});
            this.hệThốngToolStripMenuItem.Name = "hệThốngToolStripMenuItem";
            this.hệThốngToolStripMenuItem.Size = new System.Drawing.Size(69, 20);
            this.hệThốngToolStripMenuItem.Text = "Hệ thống";
            // 
            // doiMatKhauToolStripMenuItem
            // 
            this.doiMatKhauToolStripMenuItem.Name = "doiMatKhauToolStripMenuItem";
            this.doiMatKhauToolStripMenuItem.Size = new System.Drawing.Size(145, 22);
            this.doiMatKhauToolStripMenuItem.Text = "Đổi mật khẩu";
            // 
            // thoatToolStripMenuItem
            // 
            this.thoatToolStripMenuItem.Name = "thoatToolStripMenuItem";
            this.thoatToolStripMenuItem.Size = new System.Drawing.Size(145, 22);
            this.thoatToolStripMenuItem.Text = "Thoát";
            this.thoatToolStripMenuItem.Click += new System.EventHandler(this.thoatToolStripMenuItem_Click);
            // 
            // quanLyToolStripMenuItem
            // 
            this.quanLyToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.sinhVienToolStripMenuItem,
            this.monHocToolStripMenuItem,
            this.LopHocToolStripMenuItem,
            this.giaoVienToolStripMenuItem});
            this.quanLyToolStripMenuItem.Name = "quanLyToolStripMenuItem";
            this.quanLyToolStripMenuItem.Size = new System.Drawing.Size(60, 20);
            this.quanLyToolStripMenuItem.Text = "Quản lý";
            // 
            // sinhVienToolStripMenuItem
            // 
            this.sinhVienToolStripMenuItem.Name = "sinhVienToolStripMenuItem";
            this.sinhVienToolStripMenuItem.Size = new System.Drawing.Size(123, 22);
            this.sinhVienToolStripMenuItem.Text = "Sinh viên";
            this.sinhVienToolStripMenuItem.Click += new System.EventHandler(this.sinhVienToolStripMenuItem_Click);
            // 
            // monHocToolStripMenuItem
            // 
            this.monHocToolStripMenuItem.Name = "monHocToolStripMenuItem";
            this.monHocToolStripMenuItem.Size = new System.Drawing.Size(123, 22);
            this.monHocToolStripMenuItem.Text = "Môn học";
            this.monHocToolStripMenuItem.Click += new System.EventHandler(this.monHocToolStripMenuItem_Click);
            // 
            // LopHocToolStripMenuItem
            // 
            this.LopHocToolStripMenuItem.Name = "LopHocToolStripMenuItem";
            this.LopHocToolStripMenuItem.Size = new System.Drawing.Size(123, 22);
            this.LopHocToolStripMenuItem.Text = "Lớp học";
            this.LopHocToolStripMenuItem.Click += new System.EventHandler(this.LopHocToolStripMenuItem_Click);
            // 
            // giaoVienToolStripMenuItem
            // 
            this.giaoVienToolStripMenuItem.Name = "giaoVienToolStripMenuItem";
            this.giaoVienToolStripMenuItem.Size = new System.Drawing.Size(123, 22);
            this.giaoVienToolStripMenuItem.Text = "Giáo viên";
            this.giaoVienToolStripMenuItem.Click += new System.EventHandler(this.giaoVienToolStripMenuItem_Click);
            // 
            // dangKyToolStripMenuItem
            // 
            this.dangKyToolStripMenuItem.Name = "dangKyToolStripMenuItem";
            this.dangKyToolStripMenuItem.Size = new System.Drawing.Size(12, 20);
            // 
            // chucNangToolStripMenuItem
            // 
            this.chucNangToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.dangKyMonHocToolStripMenuItem,
            this.traCuuDiemToolStripMenuItem});
            this.chucNangToolStripMenuItem.Name = "chucNangToolStripMenuItem";
            this.chucNangToolStripMenuItem.Size = new System.Drawing.Size(77, 20);
            this.chucNangToolStripMenuItem.Text = "Chức năng";
            this.chucNangToolStripMenuItem.Click += new System.EventHandler(this.dangKyMHToolStripMenuItem_Click);
            // 
            // chamDiemToolStripMenuItem
            // 
            this.chamDiemToolStripMenuItem.Name = "chamDiemToolStripMenuItem";
            this.chamDiemToolStripMenuItem.Size = new System.Drawing.Size(81, 20);
            this.chamDiemToolStripMenuItem.Text = "Chấm điểm";
            // 
            // pnlContent
            // 
            this.pnlContent.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pnlContent.Location = new System.Drawing.Point(0, 48);
            this.pnlContent.Name = "pnlContent";
            this.pnlContent.Size = new System.Drawing.Size(800, 402);
            this.pnlContent.TabIndex = 2;
            // 
            // dangKyMonHocToolStripMenuItem
            // 
            this.dangKyMonHocToolStripMenuItem.Name = "dangKyMonHocToolStripMenuItem";
            this.dangKyMonHocToolStripMenuItem.Size = new System.Drawing.Size(180, 22);
            this.dangKyMonHocToolStripMenuItem.Text = "Đăng ký môn học";
            this.dangKyMonHocToolStripMenuItem.Click += new System.EventHandler(this.dangKyMHToolStripMenuItem_Click);
            // 
            // traCuuDiemToolStripMenuItem
            // 
            this.traCuuDiemToolStripMenuItem.Name = "traCuuDiemToolStripMenuItem";
            this.traCuuDiemToolStripMenuItem.Size = new System.Drawing.Size(180, 22);
            this.traCuuDiemToolStripMenuItem.Text = "Tra cứu điểm";
            this.traCuuDiemToolStripMenuItem.Click += new System.EventHandler(this.traCuuDiemToolStripMenuItem_Click);
            // 
            // frmMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.pnlContent);
            this.Controls.Add(this.menuStrip1);
            this.Controls.Add(this.menuStrip2);
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "frmMain";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Main form";
            this.Load += new System.EventHandler(this.frmMain_Load);
            ((System.ComponentModel.ISupportInitialize)(this.taiKhoanBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.qLSVDataSet5)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.qLSVDataSet4)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.tblSinhVienBindingSource)).EndInit();
            this.menuStrip2.ResumeLayout(false);
            this.menuStrip2.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private QLSVDataSet4 qLSVDataSet4;
        private System.Windows.Forms.BindingSource tblSinhVienBindingSource;
        private QLSVDataSet4TableAdapters.tblSinhVienTableAdapter tblSinhVienTableAdapter;
        private QLSVDataSet5 qLSVDataSet5;
        private System.Windows.Forms.BindingSource taiKhoanBindingSource;
        private QLSVDataSet5TableAdapters.TaiKhoanTableAdapter taiKhoanTableAdapter;
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.MenuStrip menuStrip2;
        private System.Windows.Forms.ToolStripMenuItem hệThốngToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem doiMatKhauToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem thoatToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem quanLyToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem sinhVienToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem monHocToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem LopHocToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem dangKyToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem giaoVienToolStripMenuItem;
        private System.Windows.Forms.Panel pnlContent;
        private System.Windows.Forms.ToolStripMenuItem chamDiemToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem chucNangToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem dangKyMonHocToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem traCuuDiemToolStripMenuItem;
    }
}

