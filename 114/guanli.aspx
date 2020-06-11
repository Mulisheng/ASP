<%@ Page Language="C#" AutoEventWireup="true" CodeFile="guanli.aspx.cs" Inherits="_7_guanli" %>

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
            width: 435px;
        }
    </style>
</head>
<body background="image/timg.jpg">
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="style1">
            <tr>
                <td class="style2">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    <asp:TreeView ID="TreeView1" runat="server" Height="545px" 
                        ImageSet="WindowsHelp" Width="427px">
                        <HoverNodeStyle Font-Underline="True" ForeColor="#6666AA" />
                        <Nodes>
                            <asp:TreeNode Text="查看读者" Value="查看读者" Target="f2" 
                                NavigateUrl="~/114/114-7-SelectStu.aspx"></asp:TreeNode>
                            <asp:TreeNode Text="借阅查询" Value="借阅查询" Target="f2" 
                                NavigateUrl="~/114/Ajieyue.aspx"></asp:TreeNode>
                            <asp:TreeNode Text="修改图书" Value="读者管理" Target="f2" 
                                NavigateUrl="~/114/delebook.aspx"></asp:TreeNode>
                            <asp:TreeNode NavigateUrl="~/114/addbook.aspx" Text="添加图书" Value="添加图书" 
                                Target="f2">
                            </asp:TreeNode>
                            <asp:TreeNode NavigateUrl="~/114/Login.aspx" Text="退出" Value="退出"></asp:TreeNode>
                        </Nodes>
                        <NodeStyle Font-Names="Tahoma" Font-Size="8pt" ForeColor="Black" 
                            HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="1px" />
                        <ParentNodeStyle Font-Bold="False" />
                        <SelectedNodeStyle Font-Underline="False" 
                            HorizontalPadding="0px" VerticalPadding="0px" BackColor="#B5B5B5" />
                    </asp:TreeView>
                </td>
                <td>
                    <iframe name="f2" style="height: 572px; width: 907px; margin-left: 0px;"></iframe></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
