<%@ Page Language="C#" AutoEventWireup="true" CodeFile="history.aspx.cs" Inherits="_7_history" %>

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
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="style1" style="text-align: center">
            <tr>
                <td>
                    借阅历史查询</td>
            </tr>
            <tr>
                <td align="left">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Height="53px" onclick="Button1_Click" 
                        Text="查询" Width="128px" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:NetTest1 %>" 
                        SelectCommand="SELECT * FROM [history]"></asp:SqlDataSource>
                    <br />
                    <asp:Panel ID="Panel1" runat="server" Visible="False">
                        <asp:GridView ID="GridView1" runat="server" 
    AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" 
    BorderStyle="None" BorderWidth="1px" CellPadding="4" 
    DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="Bname" HeaderText="Bname" 
            SortExpression="Bname" />
                                <asp:BoundField DataField="Borrowtime" 
            HeaderText="Borrowtime" SortExpression="Borrowtime" />
                                <asp:BoundField DataField="Borrowman" 
            HeaderText="Borrowman" SortExpression="Borrowman" />
                            </Columns>
                            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                            <HeaderStyle BackColor="#003399" Font-Bold="True" 
        ForeColor="#CCCCFF" />
                            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" 
        HorizontalAlign="Left" />
                            <RowStyle BackColor="White" ForeColor="#003399" />
                            <SelectedRowStyle BackColor="#009999" Font-Bold="True" 
        ForeColor="#CCFF99" />
                            <SortedAscendingCellStyle BackColor="#EDF6F6" />
                            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                            <SortedDescendingCellStyle BackColor="#D6DFDF" />
                            <SortedDescendingHeaderStyle BackColor="#002876" />
                        </asp:GridView>
                    </asp:Panel>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
