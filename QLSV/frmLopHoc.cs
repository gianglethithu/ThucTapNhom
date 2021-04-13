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
    public partial class frmLopHoc : Form
    {
        public frmLopHoc(string malophoc)
        {
            this.malophoc = malophoc;
            InitializeComponent();
        }
        private string malophoc;
        private database db;
        private string nguoithuchien = "admin";
        private void btnHuy_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }

        private void frmLopHoc_Load(object sender, EventArgs e)
        {
            db = new database();//(tiếp nè) ở đây nó mở kết nối
            List<CustomParameter> lst = new List<CustomParameter>()
            {
                new CustomParameter()
                {
                    key="@tukhoa",
                    value=""
                }
            };
            //load dữ liệu cho 2 cbb môn học và giáo viên
            cbbMonHoc.DataSource = db.SelectData("selectAllMonHoc", lst);//thực hiện xong câu này nó đóng kết nối mất rồi
            cbbMonHoc.DisplayMember = "tenmonhoc";       //thuộc tính hiển thị của cbb
            cbbMonHoc.ValueMember = "mamonhoc";     //giá trị key của cbb
            cbbMonHoc.SelectedIndex = -1;
            db = new database();//nên muốn thực hiện câu query khác thì phải mở lại kết nối
            cbbGiaoVien.DataSource = db.SelectData("selectAllGV", lst);//thực hiện xong câu này nó lại đóng kết nối
            cbbGiaoVien.DisplayMember = "hoten";
            cbbGiaoVien.ValueMember = "magiaovien";
            cbbGiaoVien.SelectedIndex = -1;     //cbb không chọn giá trị nào

            if (string.IsNullOrEmpty(malophoc))
            {
                this.Text = "Thêm mới lớp học";
            }
            else
            {
                this.Text = "Cập nhật lớp học";
                var r = db.Select("exec selectLopHoc '" + malophoc + "'");
                cbbGiaoVien.SelectedValue = r["magiaovien"].ToString();
                cbbMonHoc.SelectedValue = r["mamonhoc"].ToString();

            }
        }

        private void btnLuu_Click(object sender, EventArgs e)
        {
            string sql = "";
            //ràng buộc điều kiện phải chọn môn học và giáo viên
            if (cbbMonHoc.SelectedIndex < 0)
            {
                MessageBox.Show("Chọn môn học");
                return;
            }
            if (cbbGiaoVien.SelectedIndex < 0)
            {
                MessageBox.Show("Chọn giáo viên");
                return;
            }

            List<CustomParameter> lst = new List<CustomParameter>();
            if (string.IsNullOrEmpty(malophoc))
            {
                sql = "insertLopHoc";
                lst.Add(new CustomParameter()
                {
                    key = "@nguoitao",
                    value = nguoithuchien
                });
            }
            else
            {
                sql = "updateLopHoc";
                lst.Add(new CustomParameter()
                {
                    key = "@nguoicapnhat",
                    value = nguoithuchien
                });
                lst.Add(new CustomParameter()
                {
                    key = "@malophoc",
                    value = malophoc
                });
            }
            lst.Add(new CustomParameter()
            {
                key = "@mamonhoc",
                value = cbbMonHoc.SelectedValue.ToString()
            });
            lst.Add(new CustomParameter()
            {
                key = "@magiaovien",
                value = cbbGiaoVien.SelectedValue.ToString()        //lấy giá trị được chọn của ccb Giáo viên
            });
            db = new database();
            var kq = db.ExeCute(sql, lst);
            if (kq == 1)
            {
                if (string.IsNullOrEmpty(malophoc))
                {
                    MessageBox.Show("Thêm mới lớp học thành công");
                }
                else
                {
                    MessageBox.Show("Cập nhật lớp học thành công");
                }
                this.Dispose();
            }
            else
            {
                MessageBox.Show("Lưu dữ liệu thất bại");
            }
        }
    }
}
