using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using QUANLYKHACHSAN.UserInterface;
using QUANLYKHACHSAN.Controller;
using QUANLYKHACHSAN.BusinessObject;
using QUANLYKHACHSAN.DataPlayer;

namespace QUANLYKHACHSAN
{
    public partial class frmMain : Form
    {
        public frmMain()
        {
            InitializeComponent();
            GiaoDien m_giaodien = new GiaoDien();
            m_giaodien.Show();
            System.Threading.Thread.Sleep(1000);
            m_giaodien.Close();            
        }
        
        NguoiDungControl nguoiDungctrl ;
        NguoiDungInFo nguoidunginfo;

        //private NguoiDungInFo m_NguoiDung= new NguoiDungInFo();

        //public NguoiDungInFo NguoiDung
        //{
        //    get { return m_NguoiDung; }
        //    set { m_NguoiDung = value; }
        //}

        private void frmMain_Load(object sender, EventArgs e)
        {
            
            Default();
            PhongData data = new PhongData();
            listViewEx1.Items.Clear();
            foreach (DataRow dr in data.LayMaPhong().Rows)
            {
                PhongInFo phong = new PhongInFo();
                phong.MaLoaiPhong = (string)dr.ItemArray[1];
                phong.MaPhong = (string)dr.ItemArray[0];
                phong.TinhTrangPhong = (int)dr.ItemArray[2];
                ListViewItem item = new ListViewItem(phong.MaPhong);

                if (phong.TinhTrangPhong == 1)
                {
                    item.ImageIndex = 0;

                }
                else if (phong.TinhTrangPhong == 2)
                {
                    item.ImageIndex = 1;
                }
                else
                {
                    item.ImageIndex = 2;
                }

                listViewEx1.Items.Add(item);
            }
            //ds.ShowDialog();
        }

        DangNHap dangnhap = null;
        private void DangNhap()
        {
        TiepTuc:
            if (dangnhap == null || dangnhap.IsDisposed)
            {
                dangnhap = new DangNHap();
            }
            if (dangnhap.ShowDialog() == DialogResult.OK)
            {
                String tenDangnhap = dangnhap.txtTenDangNhap.Text;
                String matKhau = dangnhap.txtMatKhau.Text;
                //this.toolStripStatusLabel1.Text = dangNhap.lay_TenNguoiDung;
                NguoiDungControl ctrlNguoiDung = new NguoiDungControl();
                int ketQua = ctrlNguoiDung.DangNhap(tenDangnhap, matKhau);

                switch (ketQua)
                {
                    case 0:
                        MessageBox.Show("Không tồn tại người dùng trong hệ thống");
                        goto TiepTuc;

                    case 1:
                        MessageBox.Show("Mật khẩu sai");
                        goto TiepTuc;

                    case 2:
                        MessageBox.Show("Đăng nhập thành công");
                        if (ctrlNguoiDung.PhanQuyen == 1)
                            Admin();
                        else
                            User();
                        break;
                }
            }
            else this.Close();
        }

        DoiMatKhau doimatkhau = null;
        public void DoiMatKhau()
        {
        tt:
            if (doimatkhau == null || doimatkhau.IsDisposed)
            {
                doimatkhau = new DoiMatKhau();

            }
            if (doimatkhau.ShowDialog() == DialogResult.OK)
            {
                String tenDangNhap = dangnhap.txtTenDangNhap.Text;
                String matKhau = dangnhap.txtMatKhau.Text;
                String matKhauCu = doimatkhau.txtMatKhauCu.Text;
                String matKhauMoi = doimatkhau.txtMatKhauMoi.Text;
                String xacNhanMatKhau = doimatkhau.txtXacNhanMatKhau.Text;
                if (matKhau != matKhauCu)
                {
                    MessageBox.Show("Mật khẩu hiện tại không phù hợp!");
                    goto tt;
                }

                else if (matKhauMoi != xacNhanMatKhau)
                {
                    MessageBox.Show(" Sai mật khẩu xác nhận");
                    goto tt;
                }
                else
                {
                    NguoiDungControl ctrlND = new NguoiDungControl();
                    ctrlND.UpdatePassword(tenDangNhap, matKhauMoi);
                    //DoiMatKhau(tenDangNhap,matKhauMoi);
                    MessageBox.Show("Đổi mật khẩu thành công!");
                }

            }
                     
        }

               
        private void buttonDangNhap_Click(object sender, EventArgs e)
        {
            DangNhap();
        }
        
        private void buttonDangKy_Click(object sender, EventArgs e)
        {
            KhachHang kh = new KhachHang();
            kh.ShowDialog();
        }        

        private void ToolStripMenuItemDangKy_Click(object sender, EventArgs e)
        {
            PhieuDangKy ds = new PhieuDangKy();
            ds.maphong = this.mahphong;
            ds.ShowDialog();
        }

        private void ToolStripMenuItemNhanPhong_Click(object sender, EventArgs e)
        {
            PhieuNhanPhong dsnp = new PhieuNhanPhong();
            dsnp.maphong = this.mahphong;
            dsnp.Show();             
        }

        private void ToolStripMenuItemTraPhong_Click(object sender, EventArgs e)
        {
            ChiTietHoaDon hd = new ChiTietHoaDon();
            hd.maphong = this.mahphong;
            hd.ShowDialog();
        }

        private void buttonDichVu_Click(object sender, EventArgs e)
        {
            DichVu dv = new DichVu();
            dv.ShowDialog();
        }

        private void buttonPhong_Click(object sender, EventArgs e)
        {
            Phong phong = new Phong();
            phong.ShowDialog();
        }

        private void btnThietBiTrongPhong_Click(object sender, EventArgs e)
        {
            ThietBiTrongPhong tb = new ThietBiTrongPhong();
            tb.ShowDialog();
        }

        private void buttonDoiMatKhau_Click(object sender, EventArgs e)
        {
            DoiMatKhau();
        }

        private void buttonDangXuat_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void toolStripThemPhong_Click(object sender, EventArgs e)
        {
            Phong p = new Phong();
            p.ShowDialog();
        }

        public void Default()
        {
            this.btnThanhToan.Enabled = false;
            this.btnThietBi.Enabled = false;
            this.buttonItemThietBi.Enabled = false;
            this.btnLoaiPhong.Enabled = true;
            this.btnLoaiDichVu.Enabled = true;
            this.buttonItemLoaiDVu.Enabled = true;
            this.buttonItemLoaiPhong.Enabled = true;
            this.buttonDangKy.Enabled = false;
            this.buttonDangNhap.Enabled = true;
            this.buttonDangXuat.Enabled = false;
            this.buttonDichVu.Enabled = false;
            this.buttonDoiMatKhau.Enabled = false;
            this.buttonHuongDan.Enabled = false;
            this.buttonKHDangKy.Enabled = false;
            this.buttonKHNhanPhong.Enabled = false;
            this.buttonNguoiDung.Enabled = false;
            this.buttonPhong.Enabled = false;
            this.buttonQuiDinh.Enabled = true;
            this.buttonThongTin.Enabled = true;
            //this.buttonTraPhong.Enabled = false;
            this.toolStripThemPhong.Enabled = false;
            this.ToolStripMenuItemTraPhong.Enabled = false;
            this.ToolStripMenuItemNhanPhong.Enabled = false;
            this.ToolStripMenuItemDangKy.Enabled = false;
            this.ToolStripCapNhat.Enabled = false;
        }


        public void Admin()
        {
            
            this.btnThanhToan.Enabled = true;
            this.buttonItemThietBi.Enabled = true;
            this.btnThietBi.Enabled = true;
            this.btnLoaiPhong.Enabled = true;
            this.btnLoaiDichVu.Enabled = true;
            this.buttonItemLoaiPhong.Enabled = true;
            this.buttonItemLoaiDVu.Enabled = true;
            this.buttonDangKy.Enabled = true;
            this.buttonDangNhap.Enabled = false;
            this.buttonDangXuat.Enabled = true;
            this.buttonDichVu.Enabled = true;
            this.buttonDoiMatKhau.Enabled = true;
            this.buttonHuongDan.Enabled = true;
            this.buttonKHDangKy.Enabled = true;
            this.buttonKHNhanPhong.Enabled = true;
            this.buttonNguoiDung.Enabled = true;
            this.buttonPhong.Enabled = true;
            this.buttonQuiDinh.Enabled = true;
            this.buttonThongTin.Enabled = true;
        //    this.buttonPhieuDichVu.Enable = true;
            //this.buttonTraPhong.Enabled = true;
            this.toolStripThemPhong.Enabled = true;
            this.ToolStripMenuItemTraPhong.Enabled = true;
            this.ToolStripMenuItemNhanPhong.Enabled = true;
            this.ToolStripMenuItemDangKy.Enabled = true;
            this.ToolStripCapNhat.Enabled = true;
            
        }

        public void User()
        {
            this.btnThanhToan.Enabled = true;
            this.buttonItemThietBi.Enabled = true;
            this.btnThietBi.Enabled = true;
            this.buttonItemLoaiPhong.Enabled = true;
            this.buttonItemLoaiDVu.Enabled = true;
            this.btnLoaiDichVu.Enabled = true;
            this.btnLoaiPhong.Enabled = true; 
            this.buttonDangKy.Enabled = true;
            this.buttonDangNhap.Enabled = false;
            this.buttonDangXuat.Enabled = true;
            this.buttonDichVu.Enabled = true;
            this.buttonDoiMatKhau.Enabled = true;
            this.buttonHuongDan.Enabled = true;
            this.buttonKHDangKy.Enabled = true;
            this.buttonKHNhanPhong.Enabled = true;
            this.buttonNguoiDung.Enabled = false;
            this.buttonPhong.Enabled = true;
            this.buttonQuiDinh.Enabled = false;
            this.buttonThongTin.Enabled = true;
            //this.buttonTraPhong.Enabled = true;
            this.toolStripThemPhong.Enabled = false;
            this.ToolStripMenuItemTraPhong.Enabled = true;
            this.ToolStripMenuItemNhanPhong.Enabled = true;
            this.ToolStripMenuItemDangKy.Enabled = true;
            this.ToolStripCapNhat.Enabled = false;
        }

        private void buttonNguoiDung_Click(object sender, EventArgs e)
        {
            NguoiDung ndctrl = new NguoiDung();
            ndctrl.ShowDialog();
        }

        private void buttonKHDangKy_Click(object sender, EventArgs e)
        {
            DanhSachKhachHangDangKyThuePhong dk = new DanhSachKhachHangDangKyThuePhong();
            dk.ShowDialog();
        }

        private void buttonKHNhanPhong_Click(object sender, EventArgs e)
        {
            DanhSachKhachHangNhanPhong np = new DanhSachKhachHangNhanPhong();
            np.ShowDialog();
            NguoiDungInFo ndctrl = new NguoiDungInFo();
            if (ndctrl.LoaiNguoiDung == 2)
            {
                np.bindingNavigatorDeleteItem.Enabled = false;
            }
        }

        private void btnThanhToan_Click(object sender, EventArgs e)
        {
            HoaDon hd = new HoaDon();
            hd.ShowDialog();
        }

        private void ToolStripCapNhat_Click(object sender, EventArgs e)
        {
            PhongData data = new PhongData();
            listViewEx1.Items.Clear();
            foreach (DataRow dr in data.LayMaPhong().Rows)
            {
                PhongInFo phong = new PhongInFo();
                phong.MaLoaiPhong = (string)dr.ItemArray[1];
                phong.MaPhong = (string)dr.ItemArray[0];
                phong.TinhTrangPhong = (int)dr.ItemArray[2];
                ListViewItem item = new ListViewItem(phong.MaPhong);

                if (phong.TinhTrangPhong == 1)
                {
                    item.ImageIndex = 0;

                }
                else if (phong.TinhTrangPhong == 2)
                {
                    item.ImageIndex = 1;
                }
                else
                {
                    item.ImageIndex = 2;
                }

                listViewEx1.Items.Add(item);
            }

        }

        private void buttonQuiDinh_Click(object sender, EventArgs e)
        {
            QuiDinh qd = new QuiDinh();
            qd.ShowDialog();
        }

        private void buttonThongTin_Click(object sender, EventArgs e)
        {
            LienHe lh = new LienHe();
            lh.ShowDialog();
        }

        private void listViewEx1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        string mahphong = "";
        private void listViewEx1_MouseClick(object sender, MouseEventArgs e)
        {
           mahphong=listViewEx1.SelectedItems[0].Text;
        }

        private void buttonItemThietBi_Click(object sender, EventArgs e)
        {
            ThietBiTrongPhong tb = new ThietBiTrongPhong();
            tb.ShowDialog();
        }

        private void buttonItemLoaiPhong_Click(object sender, EventArgs e)
        {
            LoaiPhong lp = new LoaiPhong();
            lp.ShowDialog();
        }

        private void buttonItemLoaiDVu_Click(object sender, EventArgs e)
        {
            LoaiDichVu ldvu = new LoaiDichVu();
            ldvu.ShowDialog();
        }

        private void btnDoanhThu_Click(object sender, EventArgs e)
        {
            BaoCaoDoanhThu bc = new BaoCaoDoanhThu();
            bc.ShowDialog();
        }

        private void buttonPhieuDichVu_Click(object sender, EventArgs e)
        {
            PhieuDichVu  pdv= new PhieuDichVu();
            pdv.ShowDialog();
        }

        private void ribbonBar1_ItemClick(object sender, EventArgs e)
        {

        }
    }
}