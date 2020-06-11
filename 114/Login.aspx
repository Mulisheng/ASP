<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_114_7_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 545px;
        }
        .style2
        {
            width: 100px;
            height: 96px;
        }
        .style4
        {
            height: 47px;
        }
        .style5
        {
            width: 233px;
        }
        .style6
        {
            width: 233px;
            height: 96px;
        }
    </style>
</head>
<body background="image/纯蓝.jpg">
    <form id="form1" runat="server">
    <div>
    
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
        <table align="center" class="style1" 
            
            style="border: medium inset #0000FF; padding: 10px; text-align: center; height: 482px; margin-left: 634px; margin-right: 0px; margin-top: 10px;">
            <tr>
                <td colspan="2" align="left" style="text-align: center">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    用户登录</td>
            </tr>
            <tr>
                <td align="right">
                    用户名
                </td>
                <td align="left" class="style5">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="不能为空">不能为空</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right">
                    密码</td>
                <td align="left" class="style5">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="不能为空"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2" align="right">
                    
                    用户类型 
                </td>
                <td align="left" class="style6">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                        RepeatDirection="Horizontal" 
                        onselectedindexchanged="RadioButtonList1_SelectedIndexChanged" 
                        Width="274px">
                        <asp:ListItem Selected="True">学生用户</asp:ListItem>
                        <asp:ListItem>图书管理员</asp:ListItem>
                        <asp:ListItem>管理员</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="style2" align="right">
                    验证码</td>
                <td align="left" class="style6">
                    <asp:TextBox ID="TextBox3" runat="server" Width="117px"></asp:TextBox>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    <asp:Button ID="Button3" runat="server" CausesValidation="False" 
                        onclick="Button3_Click" Text="换一个" />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="left">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="登录" onclick="Button1_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="取消" onclick="Button2_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="left" class="style4">
                    还没有账号 
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/7/Sregister.aspx">注册</asp:HyperLink>
                </td>
            </tr>
            </table>
    
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    </div>
    </form>
</body>
</html>
