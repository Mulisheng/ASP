using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _7_Sregister : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(this.RadioButtonList1.SelectedIndex==0)
            Response.Redirect("ReaderR.aspx");
        if (this.RadioButtonList1.SelectedIndex == 1)
        {
            if( this.TextBox1.Text.Trim()=="980115")
                Response.Redirect("AdminRegister.aspx");
            else
                Response.Write("<script>alert('邀请码不正确，请重试')</script>");

        }

    }
}