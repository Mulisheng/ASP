using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _114_7_EditStu : System.Web.UI.Page
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
    protected void Page_Unload()
    {
        conn.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        update();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        select();
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
                TextBox4.Text = dr[2].ToString();//姓名
                if (dr[3].ToString().Trim() == "男")//男女
                 RadioButton3.Checked=true;
                else
                   RadioButton4.Checked=true;
              
                TextBox7.Text = dr[4].ToString().Trim();//邮箱
               
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
        string update = "update UserInfo set Name=@name,Sex=@sex,Email=@e where User_id='" + Session["uname"].ToString().Trim()+ "'";
        try
        {
            cmd.Parameters.AddWithValue("@name", TextBox4.Text.Trim());
            if (RadioButton3.Checked==true)
            {
                cmd.Parameters.AddWithValue("@sex", RadioButton3.Text);
            }
  if(RadioButton4.Checked==true)
            {
                cmd.Parameters.AddWithValue("@sex", RadioButton4.Text);
            }
         
        
            cmd.Parameters.AddWithValue("@e", TextBox7.Text.Trim());
      
            cmd.CommandText = update;
            cmd.Connection = conn;
            cmd.ExecuteNonQuery();
        }
        catch
        { }
        Response.Write("<script>alert('修改信息成功!')</script>");
    }






    protected void Button4_Click(object sender, EventArgs e)
    {
 
        this.TextBox4.Text = "";
        this.TextBox7.Text = "";
    }
   
}