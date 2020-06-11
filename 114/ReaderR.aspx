<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ReaderR.aspx.cs" Inherits="_114_7_Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style1
    {
        width: 77%;
    }
    .style2
    {
            width: 932px;
        }
        .style3
        {
            width: 932px;
            height: 25px;
        }
        .style4
        {
            height: 25px;
            width: 1177px;
        }
        .style5
        {
            width: 1177px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1" 
        style="text-align: center; background-image: url('image/蓝天白云.jpg'); height: 230px;">
    <tr>
        <td colspan="2">
            用户注册&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:HyperLink ID="HyperLink1" runat="server" 
                NavigateUrl="~/7/Login.aspx">返回登陆</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="style2" align="right">
            用户名</td>
        <td class="style5" align="left">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="姓名不能为空"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style2" align="right">
            用户密码</td>
        <td class="style5" align="left">
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="密码不能为空"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style3" align="right">
            确认密码</td>
        <td class="style4" align="left">
            <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="TextBox2" ControlToValidate="TextBox3" 
                ErrorMessage="密码不一致"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="style2" align="right">
            姓名</td>
        <td class="style5" align="left">
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ErrorMessage="姓名不能为空" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style2" align="right">
            性别</td>
        <td class="style5" align="left">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="31px" 
                RepeatDirection="Horizontal" Width="230px">
                <asp:ListItem>女</asp:ListItem>
                <asp:ListItem Selected="True">男</asp:ListItem>
            </asp:RadioButtonList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
    </tr>
    <tr>
        <td class="style2" align="right">
            电子邮箱</td>
        <td class="style5" align="left">
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="TextBox7" ErrorMessage="邮箱格式不正确" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="style3">
            </td>
        <td class="style4" align="left">
            <asp:Button ID="Button1" runat="server" Text="注册" onclick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="取消" 
                style="height: 21px" />
        </td>
    </tr>
</table>
    <div>
    
    </div>
    </form>
</body>
</html>
