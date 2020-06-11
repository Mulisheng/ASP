using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _7_borrow : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection conn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        this.Panel1.Visible = true;
        string str;
        str = "select *from Book where Bname like '%" + this.TextBox1.Text.Trim() + "%'";
        this.SqlDataSource1.SelectCommand = str;
        this.GridView1.DataBind();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

       cmd.CommandText = "select * from Book ";
        cmd.Connection = conn;
        SqlDataReader dr = cmd.ExecuteReader();
        string str;
        if (dr[3] == "未借阅")
        {
            str = "update Book set Bcase='已借阅' where Bname='"+this.TextBox1.Text.Trim()+"'";
            this.SqlDataSource1.SelectCommand = str;
            this.GridView1.DataBind();
        }
    }
}