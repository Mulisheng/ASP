<%@ Page Language="C#" AutoEventWireup="true" CodeFile="borrow.aspx.cs" Inherits="_7_borrow" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style1
        {
            width: 1000px;
        }
        .style9
        {
            width: 170px;
        }
        .style11
        {
            width: 157px;
        }
        .style12
        {
            width: 201px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <div>
    
        <table align="center" class="style1">
            <tr>
                <td colspan="3" style="text-align: center">
                    图书查询</td>
            </tr>
            <tr>
                <td align="left" class="style11">
                    输入检索条件：</td>
                <td class="style12" align="left">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Value="Bname">书名</asp:ListItem>
                    </asp:DropDownList>
                    <asp:TextBox ID="TextBox1" runat="server" Width="99px"></asp:TextBox>
                    </td>
                <td class="style9" align="left">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        style="margin-left: 0px" Text="查询" Width="39px" />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <br />
                    <asp:Panel ID="Panel1" runat="server" Visible="False">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" 
    BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
    DataSourceID="SqlDataSource1" 
    onselectedindexchanged="GridView1_SelectedIndexChanged" Width="674px">
                            <Columns>
                                <asp:BoundField DataField="Bpubtime" 
                                HeaderText="Bpubtime" SortExpression="Bpubtime" />
                                <asp:BoundField DataField="Bwriter" HeaderText="Bwriter" 
                                SortExpression="Bwriter" />
                                <asp:BoundField DataField="Bname" HeaderText="Bname" 
                                SortExpression="Bname" />
                                <asp:BoundField DataField="Bcase" HeaderText="Bcase" 
                                SortExpression="Bcase" />
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
    
 
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:NetTest1 %>" 
            SelectCommand="SELECT [Bpubtime], [Bwriter], [Bname], [Bcase] FROM [Book]">
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
