using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _7_message : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection conn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        string mystr1;
        mystr1 = "用户" + Session["uname"].ToString() + "";
        this.Label1.Text = mystr1;


        string mystr = System.Configuration.ConfigurationManager.ConnectionStrings["NetTest1"].ToString();
        conn.ConnectionString = mystr;
        conn.Open();

    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        select();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        update();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        this.TextBox1.Text = "";
        this.TextBox2.Text = "";
    }

    public void select()//查询函数
    {
        try
        {
            cmd.CommandText = "select * from UserInfo where User_id='" + Session["uname"].ToString().Trim() + "'";
            cmd.Connection = conn;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())//表示用户已存在
            {
                TextBox1.Text = dr[2].ToString();//姓名
                if (dr[3].ToString().Trim() == "男")//男女
                    RadioButton1.Checked = true;
                else
                    RadioButton2.Checked = true;

                TextBox2.Text = dr[4].ToString().Trim();//邮箱

                dr.Close();
            }
            else
                dr.Close();
        }
        catch
        { }
    }


    public void update()//上传信息函数
    {
        string update = "update UserInfo set Name=@name,Sex=@sex,Email=@ewhere User_id='" + Session["uname"].ToString().Trim()+ "'";
        try
        {
            cmd.Parameters.AddWithValue("@name", TextBox1.Text.Trim());
            if (RadioButton1.Checked==true)
            {
                cmd.Parameters.AddWithValue("@sex", RadioButton1.Text);
            }
if(RadioButton2.Checked==true)
            {
                cmd.Parameters.AddWithValue("@sex", RadioButton2.Text);
            }


            cmd.Parameters.AddWithValue("@e", TextBox2.Text.Trim());

            cmd.CommandText = update;
            cmd.Connection = conn;
            cmd.ExecuteNonQuery();
        }
        catch
        {
            Response.Write("<script>alert('修改信息成功!')</script>");
        }
    }
}