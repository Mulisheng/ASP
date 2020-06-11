using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _114_7_Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string mystr;
        mystr = "管理员" + Session["uname"].ToString() + "欢迎登陆";
        this.Label1.Text = mystr;
    }
}