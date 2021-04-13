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
    public partial class frmmDangNhap : Form
    {
        public frmmDangNhap()
        {
            InitializeComponent();
        }
        public string tendangnhap = "";
        public string loaitk;
        private void btnThoat_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void btnDangNhap_Click(object sender, EventArgs e)
        {
            #region ktra_rangbuoc
            //Kiểm tra ràng buộc
            if (cbbLoaiTaiKhoan.SelectedIndex < 0)
            {
                MessageBox.Show("Chọn loại tài khoản");
                return;
            }
            if (string.IsNullOrEmpty(txtTendangnhap.Text))
            {
                MessageBox.Show("Nhập tên đăng nhập","Tài khoản không được để trống");
                txtTendangnhap.Select();
                return;
            }
            if (string.IsNullOrEmpty(txtMatkhau.Text))
            {
                MessageBox.Show("Nhập mật khẩu","Mật khẩu không được để trống");
            }
            #endregion
            tendangnhap = txtTendangnhap.Text;
            loaitk = "";
            #region swtk 
            switch (cbbLoaiTaiKhoan.Text)
            {
                case "Quản trị viên":
                    loaitk = "admin";
                    break;
                case "Giáo viên":
                    loaitk = "Giáo viên";
                    break;
                case "Sinh viên":
                    loaitk = "Sinh viên";
                    break;
            }
            #endregion
            List<CustomParameter> lst = new List<CustomParameter>()
            {
                new CustomParameter()
                {
                    key="@loaitaikhoan",
                    value=loaitk
                },
                new CustomParameter()
                {
                    key="@taikhoan",
                    value=txtTendangnhap.Text
                },
                new CustomParameter()
                {
                    key="@matkhau",
                    value=txtMatkhau.Text
                },
            };
            var rs = new database().SelectData("Dangnhap", lst);
            if (rs.Rows.Count > 0)
            {
               
                this.Hide();
            }
            else
            {
                MessageBox.Show("Kiểm tra lại tên đăng nhập hoặc mật khẩu","Tên đăng nhập hoặc mật khẩu không hợp lệ");
            }
        }

        private void frmmDangNhap_Load(object sender, EventArgs e)
        {

        }
    }
}
