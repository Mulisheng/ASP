using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _7_return : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        select();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        returns();
    }

    public void select()
    {
        string mystr = System.Configuration.ConfigurationManager.ConnectionStrings["NetTest1"].ToString();
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = mystr;
        try
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand();
     
                cmd.CommandText = "select * from Book  where Bname='" + this.TextBox1.Text.Trim() + "'";
            cmd.Connection = conn;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {


                if (Session["uname"].ToString().Trim() == dr[5].ToString().Trim())
                {
                    this.Panel1.Visible = true;
                      string str;
        str = "select *from Book where Bname='"+this.TextBox1.Text.Trim()+"'";
        this.SqlDataSource1.SelectCommand = str;
        this.GridView1.DataBind();

                }
                    
                        else
                            Response.Write("<script>alert('你没有借阅此书')</script>");
                            dr.Close();
            }
              
                    
           
     
            else
            {

                Response.Write("<script>alert('无此书')</script>");
                dr.Close();
            }
        }
        catch
        {
            Response.Write("<script>alert('查询失败，请重试')</script>");
        }
        finally
        {
            conn.Close();
        }

    }



    public void returns()
    {
        string mystr2 = System.Configuration.ConfigurationManager.ConnectionStrings["NetTest1"].ToString();
        SqlConnection conn2 = new SqlConnection();
        conn2.ConnectionString = mystr2;
        try
        {
            conn2.Open();
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "select * from Book  where Bname='" + this.TextBox1.Text.Trim() + "'";
            cmd.Connection = conn2;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {


                if (Session["uname"].ToString().Trim() == dr[5].ToString().Trim())
                {

                    string str1;
                    str1 = "  update Book set Bcase='未被借阅',Borrowman='Null' where Borrowman='"+Session["uname"].ToString().Trim()+"'";
                    this.SqlDataSource1.SelectCommand = str1;
                    Response.Write("<script>alert('还书成功')</script>");
                    this.GridView1.DataBind();

                }

                else
                    Response.Write("<script>alert('你没有借阅此书')</script>");
                dr.Close();
            }




            else
            {

                Response.Write("<script>alert('无此书')</script>");
                dr.Close();
            }
        }
        catch
        {
            Response.Write("<script>alert('无此书，请重试')</script>");
        }
        finally
        {
            conn2.Close();
        }

    }
    
}