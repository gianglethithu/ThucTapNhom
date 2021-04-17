using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyQuanAnNhanh.DTO
{
    public class Menu
    {   public Menu(string foodName, int count, int price, int totalPrice)
        {
            this.FoodName = foodName;
            this.Count = count;
            this.Price = price;
            this.TotalPrice = totalPrice;
        }
        public Menu(DataRow row)
        {
            this.FoodName = row["TenDoAn"].ToString();
            this.Count = (int)row["TongTien"];
            this.Price = (int)row["Gia"];
            this.TotalPrice = (int)row["totalPrice"];
        }
        private int price;
        public int Price
        {
            get { return price; }
            set { price = value; }
        }
        private int totalPrice;
        public int TotalPrice
        {
            get { return totalPrice; }
            set { totalPrice = value; }
        }
        private int count;
        public int Count
        {
            get { return count; }
            set { count = value; }
        }
        private string foodName;
        public string FoodName
        {
            get { return foodName; }
            set { foodName = value; }
        }
    }
}
