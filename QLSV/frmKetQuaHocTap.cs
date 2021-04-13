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
    public partial class frmKetQuaHocTap : Form
    {
        public frmKetQuaHocTap(string msv)
        {
            this.msv = msv;
            InitializeComponent();
        }
        private string msv;

        private void frmKetQuaHocTap_Load(object sender, EventArgs e)
        {
            LoadKQHT();
            dgvKQHT.Columns["mamonhoc"].HeaderText = "Mã học phần";
            dgvKQHT.Columns["tenmonhoc"].HeaderText = "Tên học phần";
            dgvKQHT.Columns["lanhoc"].HeaderText = "Lần học";
            dgvKQHT.Columns["gvien"].HeaderText = "Giáo viên";
            dgvKQHT.Columns["diemlan1"].HeaderText = "Điểm lần 1";
            dgvKQHT.Columns["diemlan2"].HeaderText = "Điểm lần 2";
        }
        private void LoadKQHT()
        {
            List<CustomParameter> lstPara = new List<CustomParameter>();
            lstPara.Add(new CustomParameter()
            {
                key = "@masinhvien",
                value = msv
            });
            lstPara.Add(new CustomParameter()
            {
                key = "@tukhoa",
                value = txtTuKhoa.Text
            });
            dgvKQHT.DataSource = new database().SelectData("tracuudiem", lstPara);
        }

        private void btnTracuu_Click(object sender, EventArgs e)
        {
            LoadKQHT();
        }
    }
}
