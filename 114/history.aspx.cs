using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _7_history : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        this.Panel1.Visible = true;
        string str;
        str = "select *from history where Borrowman='"+Session["uname"].ToString().Trim()+"'";
        this.SqlDataSource1.SelectCommand = str;
        this.GridView1.DataBind();
    }
}