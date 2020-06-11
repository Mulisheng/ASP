<%@ Page Language="C#" AutoEventWireup="true" CodeFile="delebook.aspx.cs" Inherits="_7_delebook" %>

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
            width: 493px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="style1" style="text-align: center">
            <tr>
                <td colspan="2">
                    编辑图书</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="查询" 
                        Width="84px" />
&nbsp;<asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="查看全部" />
                    &nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:NetTest1 %>" 
                        DeleteCommand="DELETE FROM [Book] WHERE [Bname] = @Bname" 
                        InsertCommand="INSERT INTO [Book] ([Bname], [Bwriter], [Bpubtime], [Bcase], [Btype], [Borrowman], [Borrowtime]) VALUES (@Bname, @Bwriter, @Bpubtime, @Bcase, @Btype, @Borrowman, @Borrowtime)" 
                        SelectCommand="SELECT * FROM [Book]" 
                        
                        UpdateCommand="UPDATE [Book] SET [Bwriter] = @Bwriter, [Bpubtime] = @Bpubtime, [Bcase] = @Bcase, [Btype] = @Btype, [Borrowman] = @Borrowman, [Borrowtime] = @Borrowtime WHERE [Bname] = @Bname">
                        <DeleteParameters>
                            <asp:Parameter Name="Bname" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Bname" Type="String" />
                            <asp:Parameter Name="Bwriter" Type="String" />
                            <asp:Parameter Name="Bpubtime" Type="String" />
                            <asp:Parameter Name="Bcase" Type="String" />
                            <asp:Parameter Name="Btype" Type="String" />
                            <asp:Parameter Name="Borrowman" Type="String" />
                            <asp:Parameter Name="Borrowtime" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Bwriter" Type="String" />
                            <asp:Parameter Name="Bpubtime" Type="String" />
                            <asp:Parameter Name="Bcase" Type="String" />
                            <asp:Parameter Name="Btype" Type="String" />
                            <asp:Parameter Name="Borrowman" Type="String" />
                            <asp:Parameter Name="Borrowtime" Type="String" />
                            <asp:Parameter Name="Bname" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" DataKeyNames="Bname" DataSourceID="SqlDataSource1" 
                        Height="274px" Width="869px">
                        <Columns>
                            <asp:BoundField DataField="Bname" HeaderText="Bname" ReadOnly="True" 
                                SortExpression="Bname" />
                            <asp:BoundField DataField="Bwriter" HeaderText="Bwriter" 
                                SortExpression="Bwriter" />
                            <asp:BoundField DataField="Bpubtime" HeaderText="Bpubtime" 
                                SortExpression="Bpubtime" />
                            <asp:BoundField DataField="Bcase" HeaderText="Bcase" SortExpression="Bcase" />
                            <asp:BoundField DataField="Btype" HeaderText="Btype" SortExpression="Btype" />
                            <asp:BoundField DataField="Borrowman" HeaderText="Borrowman" 
                                SortExpression="Borrowman" />
                            <asp:BoundField DataField="Borrowtime" HeaderText="Borrowtime" 
                                SortExpression="Borrowtime" />
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        </Columns>
                    </asp:GridView>
                    <br />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
    <p>
        s</p>
</body>
</html>
