using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _7_addbook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        add(this.TextBox1.Text.Trim());
   

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        this.TextBox1.Text = "";
        this.TextBox2.Text = "";
        this.TextBox3.Text = "";
        
    }
    public void add(string sql)
    {
        string mystr = System.Configuration.ConfigurationManager.ConnectionStrings["NetTest1"].ToString();
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = mystr;
        try
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from addbook where Bname='" + sql + "'";
            cmd.Connection = conn;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())//表示用户已存在
            {
                    dr.Close();
                    Response.Write("<script>alert('该图书已存在')</script>");
                
            }
            else
            {
                cmd.CommandText = "insert into addbook values(@Bname,@Bwriter,@Bpub,@Btype)";
                cmd.Parameters.AddWithValue("@Bname", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Bwriter", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@Bpub", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@Btype", RadioButtonList1.SelectedValue);
          
                dr.Close();

          
                cmd.Connection = conn;
                cmd.ExecuteNonQuery();
                abook();
                Response.Write("<script>alert('添加成功')</script>");

            }
        }
        catch (Exception e)
        {
            Response.Write("<script>alert('添加失败，原因：" + e + "')</script>");
        }
        finally
        {
            conn.Close();

        }
    }

    public void abook() //tianjia
    {

        string mystr1 = System.Configuration.ConfigurationManager.ConnectionStrings["NetTest1"].ToString();
        SqlConnection conn1 = new SqlConnection();
        conn1.ConnectionString = mystr1;
        try
        {
            conn1.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "insert into Book values(@Bname,@Bwriter,@Bpubtime,'未被借阅',@Btype,Null,Null)";
            cmd.Parameters.AddWithValue("@Bname", TextBox1.Text.Trim());
            cmd.Parameters.AddWithValue("@Bwriter", TextBox2.Text.Trim());
            cmd.Parameters.AddWithValue("@Bpubtime",TextBox4.Text.Trim());
            cmd.Parameters.AddWithValue("@Btype", RadioButtonList1.SelectedValue);
            cmd.Connection = conn1;
            cmd.ExecuteNonQuery();

        }
        catch (Exception e)
        {
            Response.Write("<script>alert('注册失败，原因：" + e + "')</script>");
        }
        finally
        {
            conn1.Close();

        }


    }

   
}