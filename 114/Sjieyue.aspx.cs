using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _114_7_main : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection conn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        string mystr = System.Configuration.ConfigurationManager.ConnectionStrings["NetTest1"].ToString();
        conn.ConnectionString = mystr;
        conn.Open();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        this.Panel1.Visible = true;
        string str;
            str = "select *from Book where " + this.DropDownList1.SelectedValue + " like '%" + this.TextBox1.Text + "%'";
        this.SqlDataSource1.SelectCommand = str;
        this.DetailsView1.DataBind();
    }
  
    protected void Button2_Click1(object sender, EventArgs e)
    {
        select(this.TextBox1.Text.Trim());


    }
    public void select(string sql)//查询函数
    {
        try
        {
            cmd.CommandText = "select * from Book where Bname='" + sql + "'";
            cmd.Connection = conn;
            SqlDataReader dr = cmd.ExecuteReader();
         
            if (dr.Read())//表示用户已存在
            {
               /* TextBox1.Text = dr[0].ToString();//姓名*/
                if (dr["Bcase"].ToString().Trim()=="已被借阅")//男女
                {
                    Response.Write("<script>alert('借阅失败!')</script>");
                }

                else
                {
                    string str;
                    str = " update Book set Bcase='已被借阅',Borrowman='"+Session["uname"].ToString().Trim()+"',Borrowtime='"+System.DateTime.Now.Year +System.DateTime.Now.Month  +System.DateTime.Now.Day+"' where Bname='" + this.TextBox1.Text.Trim() + "'";
                    this.SqlDataSource1.SelectCommand = str;
                    history();
                    this.DetailsView1.DataBind();
                 //   string s = Session["uname"].ToString().Trim();
                //    string hstr;
                 //   hstr = "update Book set Borrowman='" + s + "'where Bname='" + this.TextBox1.Text.Trim() + "'";
                    Response.Write("<script>alert('借阅成功!')</script>");
                 
                 //  hstr = "  insert into history values('"+this.TextBox1.Text.Trim()+"','"+dr["Bwriter"].ToString().Trim()+"','"+dr["Bpubtime"].ToString().Trim()+"','"+System.DateTime.Now+"','"+s+"')";
                }

               
                dr.Close();
            }
            else
                dr.Close();
        }
        catch
        { }
    }

    public void history() //记录历史
    {
            
        string mystr1 = System.Configuration.ConfigurationManager.ConnectionStrings["NetTest1"].ToString();
        SqlConnection conn1 = new SqlConnection();
        conn1.ConnectionString = mystr1;
        try
        {
            conn1.Open();
            SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "insert into history values(@Bname,@Borrowtime,@Borrowman)";
                cmd.Parameters.AddWithValue("@Bname", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Borrowtime",System.DateTime.Now );
                cmd.Parameters.AddWithValue("@Borrowman", Session["uname"].ToString().Trim());
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