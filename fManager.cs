using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;
using QuanLyQuanAnNhanh.DAO;
using QuanLyQuanAnNhanh.DTO;

namespace QuanLyQuanAnNhanh
{
    public partial class fManager : Form
    {
        public fManager()
        {
            InitializeComponent();
            LoadTable();
            
        }
            void LoadTable()
            {
                List<Table> tableList = TableDAO.Instance.LoadTableList();

                foreach (Table item in tableList)
                {
                    Button btn = new Button() { Width = TableDAO.TableWidth, Height = TableDAO.TableHeight };
                    btn.Text = item.Name + Environment.NewLine + item.Status;
                    btn.Click += btn_Click;
                btn.Tag = item;

                    switch (item.Status)
                    {
                        case "Trống":
                            btn.BackColor = Color.Aqua;
                            break;
                        default:
                            btn.BackColor = Color.LightPink;
                            break;
                    }

                    flpTable.Controls.Add(btn);
                }
            }

        void ShowBill(int id)
        {
            lwBill.Items.Clear();
            int totalPrice = 0;
            List<QuanLyQuanAnNhanh.DTO.Menu> listBillInfo = MenuDAO.Instance.GetListMenuByTable(id);

            foreach (QuanLyQuanAnNhanh.DTO.Menu item in listBillInfo)
            {
                ListViewItem lsvItem = new ListViewItem(item.FoodName.ToString());
                lsvItem.SubItems.Add(item.Count.ToString());
                lsvItem.SubItems.Add(item.Price.ToString());
                lsvItem.SubItems.Add(item.TotalPrice.ToString());
                totalPrice += item.TotalPrice;
                lwBill.Items.Add(lsvItem);
            }
            CultureInfo culture = NewMethod();
            txbTotalPrice.Text = totalPrice.ToString("c", culture);
        }

        private static CultureInfo NewMethod()
        {
            return new CultureInfo("vi-VN");
        }

        void btn_Click(object sender, EventArgs e)
        {
            int tableID = ((sender as Button).Tag as Table).ID;
            ShowBill(tableID);
        }

        private void btAddFood_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {

        }

        private void button3_Click(object sender, EventArgs e)
        {

        }

        private void đăngXuấtToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void thôngTinCáNhânToolStripMenuItem_Click(object sender, EventArgs e)
        {
            fAccountProfile f = new fAccountProfile();
            f.ShowDialog();

        }

        private void adminToolStripMenuItem_Click(object sender, EventArgs e)
        {
            fAdmin f = new fAdmin();
            f.ShowDialog();
        }

        private void lwBill_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void menuStrip1_ItemClicked(object sender, ToolStripItemClickedEventArgs e)
        {

        }
    }
}