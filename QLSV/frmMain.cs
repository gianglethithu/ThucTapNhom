using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QLSV
{
    public partial class frmMain : Form
    {
        
        public frmMain()
        {
            InitializeComponent();
        }
        private string taikhoan;
        private string loaitk;
        private void frmMain_Load(object sender, EventArgs e)
        {
            var fa = new frmmDangNhap();
            fa.ShowDialog();        //Load form đăng nhập khi form main được gọi
            taikhoan = fa.tendangnhap;
            loaitk = fa.loaitk;
            if (loaitk.Equals("admin"))
            {
                //nếu là admin
                //ẩn 2 menu chấm điểm và đk môn học
                //chỉ để lại quản lý
                chamDiemToolStripMenuItem.Visible = false;
                chucNangToolStripMenuItem.Visible = false;
            }
            else
            {
                //ẩn menu quản lý
                quanLyToolStripMenuItem.Visible = false; 
                if(loaitk.Equals("Giáo viên"))
                {
                    chucNangToolStripMenuItem.Visible = false;

                }
                else
                {
                    chamDiemToolStripMenuItem.Visible = false;
                }
            }
            frmWelcome f = new frmWelcome();
            AddForm(f);
        }
        private void AddForm(Form f)
        {
            this.pnlContent.Controls.Clear();
            f.TopLevel = false;
            f.AutoScroll = true;
            f.FormBorderStyle = FormBorderStyle.None;
            f.Dock = DockStyle.Fill;
            this.Text = f.Text;
            this.pnlContent.Controls.Add(f);
            f.Show();
        }

        private void thoatToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void sinhVienToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmDSSV f = new frmDSSV();
            AddForm(f);
        }

        private void monHocToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmDSMH f = new frmDSMH();
            AddForm(f);
        }

        private void diemThiToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmDSDiemThi f = new frmDSDiemThi();
            AddForm(f);
        }

        private void giaoVienToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmDSGV f = new frmDSGV();
            AddForm(f);
        }

        private void LopHocToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmDSLopHoc f = new frmDSLopHoc();
            AddForm(f);
        }

        private void dangKyMHToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var f = new frmDsMHDaDKy(taikhoan);
            AddForm(f);
        }

        private void traCuuDiemToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var f = new frmKetQuaHocTap(taikhoan);     //Truyền tài khoản đăng nhập bằng msv
            AddForm(f);
        }
    }
}
