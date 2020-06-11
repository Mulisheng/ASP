<%@ Page Language="C#" AutoEventWireup="true" CodeFile="114-7-EditStu.aspx.cs" Inherits="_114_7_EditStu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

    .style1
    {
        width: 100%;
    }
    .style2
    {
        width: 192px;
    }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <table class="style1" style="text-align: center">
    <tr>
        <td colspan="2">
            修改学生信息</td>
    </tr>
    <tr>
        <td class="style2" align="right">
            学号</td>
        <td align="left">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="查询" />
        </td>
    </tr>
    <tr>
        <td class="style2" align="right">
            姓名</td>
        <td align="left">
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ErrorMessage="姓名不能为空" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style2" align="right">
            性别</td>
        <td align="left">
            &nbsp;<asp:RadioButton 
                ID="RadioButton3" runat="server" GroupName="1" Text="男" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="RadioButton4" runat="server" GroupName="1" Text="女" />
        </td>
    </tr>
    <tr>
        <td class="style2" align="right">
            电子邮箱</td>
        <td align="left">
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            &nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="TextBox7" ErrorMessage="邮箱格式不正确" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td align="left">
            <asp:Button ID="Button1" runat="server" Text="修改" onclick="Button1_Click" 
                style="margin-top: 0px;" Height="30px" />
            <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="取消" 
                Height="30px" />
        </td>
    </tr>
</table>
    
    </div>
    </form>
</body>
</html>
