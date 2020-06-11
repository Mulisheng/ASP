<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminRegister.aspx.cs" Inherits="_7_AdminRegister" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 563px;
        }
        .style2
        {
            width: 119px;
        }
        .style3
        {
            width: 119px;
            height: 24px;
        }
        .style4
        {
            height: 24px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table align="center" class="style1" 
        style="text-align: center; background-image: url('image/星空背景图.jpg'); height: 362px;">
        <tr>
            <td colspan="2">
                管理员注册&nbsp;&nbsp;&nbsp;&nbsp; 
                <asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl="~/7/Login.aspx">返回登陆</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
        <tr>
            <td align="right" class="style2">
                用户名</td>
            <td align="left">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="不能为空"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2">
                密码</td>
            <td align="left">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="不能为空"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2">
                确认密码</td>
            <td align="left">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="密码不一致"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="不能为空"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style3">
            </td>
            <td align="left" class="style4">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="确认" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="取消" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
