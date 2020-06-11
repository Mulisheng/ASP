<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="_114_7_Admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 1000px;
        }
    </style>
</head>
<body background="image/摩天轮.jpg">
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="style1">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <asp:TreeView ID="TreeView1" runat="server" ImageSet="BulletedList2" 
        ShowExpandCollapse="False" Height="513px" Width="326px" style="margin-top: 49px">
        <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
        <Nodes>
            <asp:TreeNode Text="用户管理模块" Value="学生用户管理模块">
                <asp:TreeNode Text="查看和修改用户信息" Value="新建节点" NavigateUrl="~/114/114-7-SelectStu.aspx" 
                    Target="if"></asp:TreeNode>
            </asp:TreeNode>
            <asp:TreeNode Text="管理图书管理员" Value="新建节点" NavigateUrl="~/114/madmin.aspx" 
                Target="if"></asp:TreeNode>
            <asp:TreeNode NavigateUrl="~/114/addbook.aspx" Target="if" Text="添加图书" 
                Value="添加图书"></asp:TreeNode>
            <asp:TreeNode NavigateUrl="~/114/borrow.aspx" Target="if" Text="查看图书" 
                Value="查看图书"></asp:TreeNode>
            <asp:TreeNode NavigateUrl="~/114/Login.aspx" Text="退出" Value="退出"></asp:TreeNode>
        </Nodes>
        <NodeStyle Font-Names="Tahoma" Font-Size="10pt" ForeColor="Black" 
            HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
        <ParentNodeStyle Font-Bold="False" />
        <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" 
            HorizontalPadding="0px" VerticalPadding="0px" />
    </asp:TreeView>
    
 
    
                </td>
                <td>
                    <iframe name="if" 
                 
                    style="height: 524px; width: 646px; margin-right: 0px; margin-top: 0px;"> 
   
        </iframe></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
