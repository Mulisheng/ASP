<%@ Page Language="C#" AutoEventWireup="true" CodeFile="return.aspx.cs" Inherits="_7_return" %>

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
            width: 900px;
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
                还书</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="查询" />
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="还书" />
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:NetTest1 %>" 
                    SelectCommand="SELECT [Bname], [Bwriter], [Bpubtime], [Bcase], [Borrowman] FROM [Book]">
                </asp:SqlDataSource>
                <br />
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="4" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="Bname" HeaderText="Bname" SortExpression="Bname" />
                            <asp:BoundField DataField="Bwriter" HeaderText="Bwriter" 
                                SortExpression="Bwriter" />
                            <asp:BoundField DataField="Bpubtime" HeaderText="Bpubtime" 
                                SortExpression="Bpubtime" />
                            <asp:BoundField DataField="Bcase" HeaderText="Bcase" SortExpression="Bcase" />
                            <asp:BoundField DataField="Borrowman" HeaderText="Borrowman" 
                                SortExpression="Borrowman" />
                        </Columns>
                        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" ForeColor="#003399" />
                        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SortedAscendingCellStyle BackColor="#EDF6F6" />
                        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                        <SortedDescendingCellStyle BackColor="#D6DFDF" />
                        <SortedDescendingHeaderStyle BackColor="#002876" />
                    </asp:GridView>
                </asp:Panel>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
