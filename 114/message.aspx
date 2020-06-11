<%@ Page Language="C#" AutoEventWireup="true" CodeFile="message.aspx.cs" Inherits="_7_message" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 146px;
        }
        .style2
        {
            width: 798px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="style1" style="text-align: center">
            <tr>
                <td align="center" colspan="2">
                    信息</td>
            </tr>
            <tr>
                <td align="right" class="style2">
                    学号：</td>
                <td align="left">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="查询" />
                </td>
            </tr>
            <tr>
                <td align="right" class="style2">
                    姓名</td>
                <td align="left">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="不能为空"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style2">
                    性别</td>
                <td align="left">
                    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="1" Text="男" />
                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="1" Text="女" />
                </td>
            </tr>
            <tr>
                <td align="right" class="style2">
                    电子邮箱</td>
                <td align="left">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="格式不正确" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style2">
                    &nbsp;</td>
                <td align="left">
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="修改" 
                        Width="74px" />
                    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="取消" 
                        Width="68px" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
