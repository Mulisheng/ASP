using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class _114_7_SelectStu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str;
        if (DropDownList2.SelectedIndex == 0)
        {
            str = "select *from UserInfo where " + this.DropDownList1.SelectedValue + "='" + this.TextBox2.Text + "'";
        }
        else
        {
            str = "select *from UserInfo where "+this.DropDownList1.SelectedValue+" like '%"+this.TextBox2.Text+"%'";
        }
        this.SqlDataSource1.SelectCommand = str;
        this.GridView1.DataBind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string str;
        str = "select *from UserInfo";
        this.SqlDataSource1.SelectCommand = str;
        this.GridView1.DataBind();
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int k = Convert.ToInt32(e.CommandArgument);
        string Uid = this.GridView1.DataKeys[k].Value.ToString();
        if (e.CommandName == "EditPwd")//初始化密码
        {
            EditPwd(Uid);
        }
        else if (e.CommandName == "EditInfo")//修改
        {
        }
    }
    #region 恢复密码
    public void EditPwd(string UserId)
    {
        string mystr = System.Configuration.ConfigurationManager.ConnectionStrings["NetTest1"].ToString();
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = mystr;
        try
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "update UserInfo set Pwd='1111' where USER_ID='"+UserId+"'";
            cmd.Connection = conn;
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('恢复密码成功，初始化密码为1111')</script>");
            this.GridView1.DataBind();
        }
        catch
        {
            Response.Write("<script>alert('恢复密码失败，请重试')</script>");
        }
        finally 
        {
            conn.Close();
        }
    }
    #endregion
}