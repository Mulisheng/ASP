using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _114_7_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Random r=new Random ();
       
                this.Label1.Text = System.Guid.NewGuid().ToString().Substring(0, 4);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       // Session["uname"] = this.TextBox1.Text.Trim();
       Session["upwd"] = this.TextBox2.Text.Trim();
        if(this.RadioButtonList1.SelectedIndex==0)
            Login(0);
        if (this.RadioButtonList1.SelectedIndex == 1)
            Login(1);
          if(this.RadioButtonList1.SelectedIndex==2)
              Login(2);
  
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";

    }
    #region 登陆
    public void Login(int K)
    {
        string mystr = System.Configuration.ConfigurationManager.ConnectionStrings["NetTest1"].ToString();
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = mystr;
        try
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            if(K==0)
            cmd.CommandText = "select * from UserInfo  where USER_ID='" + this.TextBox1.Text.Trim()+ "'";
            if(K==1)
                cmd.CommandText = "select * from Admin  where Admin_id='" + this.TextBox1.Text.Trim() + "'";
            if(K==2)
                cmd.CommandText = "select * from boss  where id='" + this.TextBox1.Text.Trim() + "'";
            cmd.Connection = conn;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
              
                
                    if (this.TextBox2.Text.Trim() == dr[1].ToString().Trim())
                    {
                        if (K == 0)
                        {
                            if (this.TextBox3.Text.Trim() == this.Label1.Text)
                            {
                                Session["uname"] = this.TextBox1.Text.Trim();
                                Session["upwd"] = this.TextBox2.Text.Trim();
                                Response.Redirect("Smain.aspx");
                            }
                            else
                                Response.Write("<script>alert('验证码错误')</script>");
                        }
                        if(K==1)
                        {
                            if (this.TextBox3.Text.Trim() == this.Label1.Text)
                            {
                                Session["uname"] = this.TextBox1.Text.Trim();
                                Session["upwd"] = this.TextBox2.Text.Trim();
                                Response.Redirect("guanli.aspx");
                            }
                            else
                                Response.Write("<script>alert('验证码错误')</script>");
                        }
                        if (K == 2)
                        {
                            if (this.TextBox3.Text.Trim() == this.Label1.Text)
                            {
                                Session["uname"] = this.TextBox1.Text.Trim();
                                Session["upwd"] = this.TextBox2.Text.Trim();
                                Response.Redirect("Admin.aspx");
                            }
                            else
                                Response.Write("<script>alert('验证码错误')</script>");
                        }

                    
                }
                dr.Close();
            }
            else
            {

                Response.Write("<script>alert('登陆失败')</script>");
                dr.Close();
            }
        }
        catch
        {
            Response.Write("<script>alert('登陆失败，请重试')</script>");
        }
        finally
        {
            conn.Close();
        }
    
    }
    #endregion

    protected void Button3_Click(object sender, EventArgs e)
    {

        this.Label1.Text = System.Guid.NewGuid().ToString().Substring(0, 4);

    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}