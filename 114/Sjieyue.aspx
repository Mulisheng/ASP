<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sjieyue.aspx.cs" Inherits="_114_7_main" %>

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
        .style10
        {
            width: 220px;
        }
        .style11
        {
            width: 180px;
        }
    </style>
</head>

    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="style1">
            <tr>
                <td colspan="3" style="text-align: center">
                    图书查询</td>
            </tr>
            <tr>
                <td class="style11">
                    输入检索条件：</td>
                <td class="style10">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Value="Bname">书名</asp:ListItem>
                    </asp:DropDownList>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                <td class="style9">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        style="margin-left: 0px" Text="查询" Width="39px" />
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click1" Text="借阅" />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Panel ID="Panel1" runat="server" Visible="False">
                        <asp:DetailsView ID="DetailsView1" runat="server" 
    CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
    GridLines="None" Height="50px" Width="502px" AutoGenerateRows="False">
                            <AlternatingRowStyle BackColor="White" />
                            <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                            <EditRowStyle BackColor="#7C6F57" />
                            <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                            <Fields>
                                <asp:BoundField DataField="Bname" HeaderText="Bname" SortExpression="Bname" />
                                <asp:BoundField DataField="Bwriter" HeaderText="Bwriter" 
                                    SortExpression="Bwriter" />
                                <asp:BoundField DataField="Bpubtime" HeaderText="Bpubtime" 
                                    SortExpression="Bpubtime" />
                                <asp:BoundField DataField="Bcase" HeaderText="Bcase" SortExpression="Bcase" />
                            </Fields>
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" 
        ForeColor="White" />
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" 
        ForeColor="White" />
                            <PagerStyle BackColor="#666666" ForeColor="White" 
        HorizontalAlign="Center" />
                            <RowStyle BackColor="#E3EAEB" />
                        </asp:DetailsView>
                    </asp:Panel>
                </td>
            </tr>
        </table>
    
    </div>
    
 
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:NetTest1 %>" 
        SelectCommand="SELECT [Bname], [Bwriter], [Bpubtime], [Bcase] FROM [Book]">
    </asp:SqlDataSource>
    
 
    
    </form>

</html>
