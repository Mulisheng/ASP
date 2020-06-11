<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sregister.aspx.cs" Inherits="_7_Sregister" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 1000px;
        }
        .style2
        {
            height: 69px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="style1" 
            style="text-align: center; background-image: url('image/银色星球.jpg');">
            <tr>
                <td class="style2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="99px" 
                        Width="1017px">
                        <asp:ListItem>用户注册</asp:ListItem>
                        <asp:ListItem>管理员注册</asp:ListItem>
                    </asp:RadioButtonList>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;注册管理员需要填邀请码<br />
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="确认" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
