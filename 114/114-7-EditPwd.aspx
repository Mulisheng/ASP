<%@ Page Language="C#" AutoEventWireup="true" CodeFile="114-7-EditPwd.aspx.cs" Inherits="_114_7_EditPwd" %>

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
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="style1">
            <tr>
                <td style="text-align: center">
                    修改密码</td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    <br />
                    输入登录时的密码：<asp:TextBox ID="TextBox1" runat="server" Height="36px" 
                        TextMode="Password"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Height="37px" onclick="Button1_Click" 
                        Text="查看" />
                    <br />
&nbsp;&nbsp;&nbsp; 输 入 新 密 码：<asp:TextBox ID="TextBox2" runat="server" Height="36px" 
                        TextMode="Password"></asp:TextBox>
                    <asp:Button ID="Button2" runat="server" Height="35px" onclick="Button2_Click" 
                        Text="修改" Width="48px" />
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Panel ID="Panel1" runat="server" Visible="False">
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:NetTest1 %>" 
                            SelectCommand="SELECT [User_id], [Pwd], [Name] FROM [UserInfo]">
                        </asp:SqlDataSource>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
                            CellPadding="4" DataKeyNames="User_id" DataSourceID="SqlDataSource2" 
                            Width="750px">
                            <Columns>
                                <asp:BoundField DataField="User_id" HeaderText="User_id" ReadOnly="True" 
                                    SortExpression="User_id" />
                                <asp:BoundField DataField="Pwd" HeaderText="Pwd" SortExpression="Pwd" />
                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
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
    
    </div>
    </form>
</body>
</html>
