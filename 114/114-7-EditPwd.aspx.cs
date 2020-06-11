using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class _114_7_EditPwd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        


        string mystr2;
        mystr2 = "用户" + Session["uname"].ToString().Trim() + "欢迎登陆";
        this.Label1.Text = mystr2;

    }






    protected void Button1_Click(object sender, EventArgs e)
    {
        if (this.TextBox1.Text.Trim() == Session["upwd"].ToString().Trim())
        {
       
            string str2 = "";
            str2 = "  select *from UserInfo where User_id='" + Session["uname"].ToString().Trim() + "'";
            this.SqlDataSource2.SelectCommand = str2;
            this.Panel1.Visible = true;
            this.GridView1.DataBind();
        }

    }


    protected void Button2_Click(object sender, EventArgs e)
    {

        string str3 = "";
        str3 = "  update  UserInfo set Pwd='"+this.TextBox2.Text.Trim()+"' where User_id='" + Session["uname"].ToString().Trim() + "'";
        this.SqlDataSource2.SelectCommand = str3;
        Response.Write("<script>alert('修改成功')</script>");
        
    }
}