using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _7_delebook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "";
        str =  "select *from Book where Bname like '%"+this.TextBox1.Text.Trim()+"%'";
        this.SqlDataSource1.SelectCommand = str;
        this.GridView1.DataBind();
        if(this.TextBox1.Text.Trim()=="")
            Response.Write("<script>alert('请重新输入')</script>");

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string str = "";
        str = "select *from Book ";
        this.SqlDataSource1.SelectCommand = str;
        this.GridView1.DataBind();
    }
}