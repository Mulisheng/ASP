<%@ Page Language="C#" AutoEventWireup="true" CodeFile="madmin.aspx.cs" Inherits="_7_madmin" %>

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
        }
        .style3
        {
            width: 867px;
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
                管理图书管理员</td>
        </tr>
        <tr>
            <td align="center" class="style3" style="font-size: larger">
                图书管理员id：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td align="left">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="查询" 
                    Width="64px" />
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="查看全部" 
                    Width="70px" />
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                    Text="添加图书管理员" />
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:NetTest1 %>" 
                    DeleteCommand="DELETE FROM [Admin] WHERE [Admin_id] = @Admin_id" 
                    InsertCommand="INSERT INTO [Admin] ([Admin_id], [Pwd]) VALUES (@Admin_id, @Pwd)" 
                    SelectCommand="SELECT * FROM [Admin]" 
                    UpdateCommand="UPDATE [Admin] SET [Pwd] = @Pwd WHERE [Admin_id] = @Admin_id">
                    <DeleteParameters>
                        <asp:Parameter Name="Admin_id" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Admin_id" Type="String" />
                        <asp:Parameter Name="Pwd" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Pwd" Type="String" />
                        <asp:Parameter Name="Admin_id" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <asp:GridView ID="GridView1" runat="server" 
    AutoGenerateColumns="False" DataKeyNames="Admin_id" 
    DataSourceID="SqlDataSource1" Width="919px">
                        <Columns>
                            <asp:BoundField DataField="Admin_id" 
            HeaderText="Admin_id" ReadOnly="True" SortExpression="Admin_id" />
                            <asp:BoundField DataField="Pwd" HeaderText="Pwd" 
            SortExpression="Pwd" />
                            <asp:CommandField ShowDeleteButton="True" 
            ShowEditButton="True" />
                        </Columns>
                    </asp:GridView>
                </asp:Panel>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
