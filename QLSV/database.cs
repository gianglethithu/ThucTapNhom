using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QLSV
{
    public class database
    {
        private string connetionString = @"Data Source=DESKTOP-GG95D9G;Initial Catalog=QLSV;Integrated Security=True";
        private SqlConnection conn;
        private DataTable dt;
        private SqlCommand cmd;
        public database()
        {
            try
            {
                conn = new SqlConnection(connetionString);
                conn.Open();//mỗi lần tạo biến db là nó vào đây mở kết nối
            }
            catch(Exception ex)
            {
                MessageBox.Show("connected failed: " + ex.Message);
            }
        }

        public DataTable SelectData(string sql,List<CustomParameter> lstPara)
        {
            try
            {
                
                //conn.Open();
                //sql = "exec SelectAllSinhVien";     
                cmd = new SqlCommand(sql, conn);        //nội dung sql được truyền vào
                cmd.CommandType = CommandType.StoredProcedure;      //set commandtype cho cmd
                foreach(var para in lstPara)        //gán các tham số cho cmd
                {
                    cmd.Parameters.AddWithValue(para.key, para.value);
                }
                dt = new DataTable();
                dt.Load(cmd.ExecuteReader());
                return dt;
        }
            catch(Exception ex)
            {
                MessageBox.Show("Lỗi load dữ liệu: " + ex.Message);
                return null;
            }
            finally
            {
                conn.Close();//sau khi thực hiện xong câu lệnh là nó đóng kết nối luôn nên(sang bên kia viết tiếp...)
            }
        }
        public DataRow Select(string sql)
        {
            try
            {
                cmd = new SqlCommand(sql, conn);
                dt = new DataTable();
                dt.Load(cmd.ExecuteReader());
                return dt.Rows[0];
            }
            catch(Exception ex)
            {
                MessageBox.Show("Lỗi load thông tin chi tiết: " + ex.Message);
                return null;
            }
            finally
            {
                conn.Close();
            }
        }
        public int ExeCute(string sql,List<CustomParameter> lstPara)
        {
            try
            {
                cmd = new SqlCommand(sql, conn);        //thực thi câu lệnh sql
                cmd.CommandType = CommandType.StoredProcedure;
                foreach(var p in lstPara)       //gán tham số cho cmd
                {
                    cmd.Parameters.AddWithValue(p.key, p.value);
                }
                var rs = cmd.ExecuteNonQuery();     //lấy kết quả thực thi truy vấn
                return (int)rs;     //trả về kq
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi thực thi câu lệnh: " + ex.Message);
                return -100;
            }
            finally
            {
                conn.Close();
            }
        }
    }
}
