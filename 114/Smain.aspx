<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Smain.aspx.cs" Inherits="_7_Smain" %>

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
            width: 126px;
        }
    </style>
</head>
<body background="image/BAIYUN.jpg">
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="style1">
            <tr>
                <td class="style2">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    <asp:TreeView ID="TreeView1" runat="server" Height="559px" Width="362px" 
                        style="margin-top: 158px" ImageSet="Simple">
                        <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
                        <Nodes>
                            <asp:TreeNode Text="图书查询" Value="图书查询" Target="f3" 
                                NavigateUrl="~/114/borrow.aspx"></asp:TreeNode>
                            <asp:TreeNode Text="图书借阅" Value="借阅" Target="f3" 
                                NavigateUrl="~/114/Sjieyue.aspx"></asp:TreeNode>
                            <asp:TreeNode Text="修改信息" Value="修改信息" Target="f3" 
                                NavigateUrl="~/114/114-7-EditStu.aspx"></asp:TreeNode>
                            <asp:TreeNode NavigateUrl="~/114/history.aspx" Target="f3" Text="借阅历史" 
                                Value="借阅历史"></asp:TreeNode>
                            <asp:TreeNode NavigateUrl="~/114/114-7-EditPwd.aspx" Target="f3" Text="修改密码" 
                                Value="修改密码"></asp:TreeNode>
                            <asp:TreeNode NavigateUrl="~/114/return.aspx" Target="f3" Text="还书" Value="还书">
                            </asp:TreeNode>
                            <asp:TreeNode NavigateUrl="~/114/Login.aspx" Text="退出" Value="退出"></asp:TreeNode>
                        </Nodes>
                        <NodeStyle Font-Names="Tahoma" Font-Size="10pt" ForeColor="Black" 
                            HorizontalPadding="0px" NodeSpacing="0px" VerticalPadding="0px" />
                        <ParentNodeStyle Font-Bold="False" />
                        <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" 
                            HorizontalPadding="0px" VerticalPadding="0px" />
                    </asp:TreeView>
                </td>
                <td>
                    <iframe name="f3" style="height: 662px; width: 857px"></iframe></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
