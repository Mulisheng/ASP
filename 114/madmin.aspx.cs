using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _7_madmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        this.Panel1.Visible = true;
        string str;
        str = "select *from Admin where Admin_id='"+this.TextBox1.Text.Trim()+"' ";
        this.SqlDataSource1.SelectCommand = str;
        this.GridView1.DataBind();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        this.Panel1.Visible = true;
        string str;
        str = "select *from Admin ";
        this.SqlDataSource1.SelectCommand = str;
        this.GridView1.DataBind();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminRegister.aspx");
    }
}