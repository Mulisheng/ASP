<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ReaderS.aspx.cs" Inherits="_114_7_Stu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">


p.MsoNormal{
margin-bottom:.0001pt;
text-align:justify;
text-justify:inter-ideograph;
font-family:'Times New Roman';
font-size:12.0000pt;
            margin-left: 0pt;
            margin-right: 0pt;
            margin-top: 0pt;
        }

        .style3
        {
            width: 1000px;
        }
        .style6
        {
            width: 268px;
        }
    </style>
</head>
<body style="width: 1092px">
    <form id="form1" runat="server">
    <table align="center" class="style3" style="text-align: center">
        <tr>
            <td>
&nbsp;输入检索条件：</td>
            <td class="style6">
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem Value="Bname">书名</asp:ListItem>
                        <asp:ListItem Value="Bwriter">作者</asp:ListItem>
                        <asp:ListItem Value="Bpubtime">出版时间</asp:ListItem>
                        <asp:ListItem Value="Bcase">借阅情况</asp:ListItem>
                    </asp:DropDownList>
                    <asp:TextBox ID="TextBox2" runat="server" Width="99px"></asp:TextBox>
                    <asp:DropDownList ID="DropDownList2" runat="server" 
                    onselectedindexchanged="DropDownList2_SelectedIndexChanged">
                        <asp:ListItem Value="0">精确</asp:ListItem>
                        <asp:ListItem Value="1">模糊</asp:ListItem>
                    </asp:DropDownList>
                    </td>
            <td>
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        style="margin-left: 0px" Text="查询" Width="39px" />
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="查看全部" 
                        Width="65px" />
                </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:NetTest1 %>" 
                    SelectCommand="SELECT * FROM [Book]"></asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" 
                    BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                    DataSourceID="SqlDataSource1" Height="311px" Width="710px">
                    <Columns>
                        <asp:BoundField DataField="Bname" HeaderText="书名" SortExpression="Bname" />
                        <asp:BoundField DataField="Bwriter" HeaderText="作者" SortExpression="Bwriter" />
                        <asp:BoundField DataField="Bpubtime" HeaderText="出版时间" 
                            SortExpression="Bpubtime" />
                        <asp:BoundField DataField="Bcase" HeaderText="借阅情况" SortExpression="Bcase" />
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
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
