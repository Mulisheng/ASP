<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addbook.aspx.cs" Inherits="_7_addbook" %>

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
            width: 144px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <table align="center" class="style1" style="text-align: center">
        <tr>
            <td colspan="2">
                图书添加</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                书 名</td>
            <td align="left">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="不能为空"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2">
                作 者</td>
            <td align="left">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="不能为空"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2">
                出版社</td>
            <td align="left">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="不能为空"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2">
                出版时间</td>
            <td align="left">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="不能为空"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2">
                类 型</td>
            <td align="left">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem>文学</asp:ListItem>
                    <asp:ListItem>应用</asp:ListItem>
                    <asp:ListItem>科学</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td align="left">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="添加" />
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="取消" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
