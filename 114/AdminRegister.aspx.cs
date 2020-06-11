using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _7_AdminRegister : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        reg(this.TextBox1.Text.Trim());
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        this.TextBox1.Text = "";
        this.TextBox2.Text = "";
        this.TextBox3.Text = "";
    }
    public void reg(string sql)
    {
        string mystr = System.Configuration.ConfigurationManager.ConnectionStrings["NetTest1"].ToString();
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = mystr;
        try
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from Admin where Admin_id='" + sql + "'";
            cmd.Connection = conn;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())//表示用户已存在
            {
                dr.Close();
                Response.Write("<script>alert('该用户已存在')</script>");
            }
            else
            {
                cmd.CommandText = "insert into Admin values(@Admin_id,@Pwd)";
                cmd.Parameters.AddWithValue("@Admin_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Pwd", TextBox2.Text.Trim());
      
                dr.Close();

                cmd.Connection = conn;
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('注册成功')</script>");
               
            }
        }
        catch (Exception e)
        {
            Response.Write("<script>alert('注册失败，原因：" + e + "')</script>");
        }
        finally
        {
            conn.Close();

        }
    }
}