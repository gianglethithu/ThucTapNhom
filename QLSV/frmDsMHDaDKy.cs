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
    public partial class frmDsMHDaDKy : Form
    {
        private string masv;
        public frmDsMHDaDKy(string masv)
        {
            this.masv = masv;
            InitializeComponent();
        }

        private void frmDsMHDaDKy_Load(object sender, EventArgs e)
        {
            LoadMonDk();
        }
        private void LoadMonDk()
        {
            List<CustomParameter> lst = new List<CustomParameter>()
            {
                new CustomParameter()
                {
                    key="@masinhvien",
                    value=masv
                }
            };
            dgvDSMHDky.DataSource = new database().SelectData("monDaDKy", lst); 
        }

        private void btnDangky_Click(object sender, EventArgs e)
        {
            new frmDangkyMonhoc(masv).ShowDialog();
            LoadMonDk();
        }
    }
}
