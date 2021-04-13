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
    public partial class frmDangkyMonhoc : Form
    {
        public frmDangkyMonhoc(string masv)
        {
            this.masv = masv;
            InitializeComponent();
        }
        private string masv;
        private void frmDangkyMonhoc_Load(object sender, EventArgs e)
        {
            LoadDSLH();
            dgvDSLH.Columns["malophoc"].HeaderText = "Mã lớp";
            dgvDSLH.Columns["tenmonhoc"].HeaderText = "Tên học phần";
            dgvDSLH.Columns["sotinchi"].HeaderText = "Số TC";
            dgvDSLH.Columns["gvien"].HeaderText = "Giáo viên";
            dgvDSLH.Columns["mamonhoc"].Visible = false;
        }
        private void LoadDSLH()
        {
            List<CustomParameter> lst = new List<CustomParameter>();
            lst.Add(new CustomParameter()
            {
                key = "@masinhvien",
                value = masv
            });
            dgvDSLH.DataSource = new database().SelectData("dsLopChuaDky", lst);
        }

        private void dgvDSLH_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (dgvDSLH.Rows[e.RowIndex].Index > 0)
            {
                if(DialogResult.Yes== 
                    MessageBox.Show("Tên môn học được chọn: [" + dgvDSLH.Rows[e.RowIndex].Cells["tenmonhoc"].Value.ToString()+"]?",
                    "Xác nhận đăng ký",MessageBoxButtons.YesNo,MessageBoxIcon.Question))
                {
                    List<CustomParameter> lstPara = new List<CustomParameter>();
                    lstPara.Add(new CustomParameter()
                    {
                        key = "@masinhvien",
                        value = masv
                    });
                    lstPara.Add(new CustomParameter()
                    {
                        key = "@malophoc",
                        value = dgvDSLH.Rows[e.RowIndex].Cells["mamonhoc"].Value.ToString()
                    });
                    var rs = new database().ExeCute("Dkyhoc", lstPara);
                    if(rs == -1)
                    {
                        MessageBox.Show("Học phần này bạn đã đăng ký", "Cảnh báo!!!");
                    }
                    if (rs == 1)
                    {
                        MessageBox.Show("Đã đăng ký học phần thành công", "Thành công!!!");
                        LoadDSLH();
                    }
                }
            }
        }
    }
}
