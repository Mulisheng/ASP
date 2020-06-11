<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addhistory.aspx.cs" Inherits="_7_addhistory" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="style1" style="text-align: center">
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        Text="显示图书添加纪录" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Panel ID="Panel1" runat="server" Visible="False">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                            AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" 
                            BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Bname" 
                            DataSourceID="SqlDataSource1" Width="1433px">
                            <Columns>
                                <asp:BoundField DataField="Bname" HeaderText="Bname" ReadOnly="True" 
                                    SortExpression="Bname" />
                                <asp:BoundField DataField="Bwriter" HeaderText="Bwriter" 
                                    SortExpression="Bwriter" />
                                <asp:BoundField DataField="Bpub" HeaderText="Bpub" SortExpression="Bpub" />
                                <asp:BoundField DataField="Btype" HeaderText="Btype" SortExpression="Btype" />
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:NetTest1 %>" 
                            SelectCommand="SELECT * FROM [addbook]"></asp:SqlDataSource>
                    </asp:Panel>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
