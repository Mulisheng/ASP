<%@ Page Language="C#" AutoEventWireup="true" CodeFile="114-7-SelectStu.aspx.cs" Inherits="_114_7_SelectStu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 1052px;
            height: 481px;
        }
        .style2
        {
            width: 112px;
            height: 40px;
        }
        .style6
        {
            width: 258px;
            height: 40px;
        }
        .style7
        {
            width: 155px;
            height: 40px;
        }
        .style8
        {
            width: 282px;
            height: 40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="style1">
            <tr>
                <td colspan="4" style="text-align: center">
                    学生用户信息查询&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td class="style2" style="text-align: center" align="left">
                    输入检索条件：</td>
                <td class="style8" style="text-align: center" align="left">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Value="USER_ID">学号</asp:ListItem>
                        <asp:ListItem Value="Name">姓名</asp:ListItem>
                        <asp:ListItem Value="Tel">联系电话</asp:ListItem>
                        <asp:ListItem Value="Remark">爱好</asp:ListItem>
                    </asp:DropDownList>
                    <asp:TextBox ID="TextBox2" runat="server" Width="99px"></asp:TextBox>
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem Value="0">精确</asp:ListItem>
                        <asp:ListItem Value="1">模糊</asp:ListItem>
                    </asp:DropDownList>
                    性别：</td>
                <td class="style7" style="text-align: center" align="left">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                        RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True">不限</asp:ListItem>
                        <asp:ListItem>男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td style="text-align: left" class="style6" align="left">
                    &nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        style="margin-left: 0px" Text="查询" Width="39px" />
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="查看全部" 
                        Width="64px" />
                </td>
            </tr>
            <tr>
                <td colspan="4" style="text-align: center">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" DataKeyNames="User_id" 
                        DataSourceID="SqlDataSource1" Height="238px" 
                        onrowcommand="GridView1_RowCommand" style="margin-left: 0px" Width="687px" 
                        BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="4">
                        <Columns>
                            <asp:BoundField DataField="User_id" HeaderText="User_id" ReadOnly="True" 
                                SortExpression="User_id" />
                            <asp:BoundField DataField="Pwd" HeaderText="Pwd" SortExpression="Pwd" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="Sex" HeaderText="Sex" 
                                SortExpression="Sex" />
                            <asp:BoundField DataField="Email" HeaderText="Email" 
                                SortExpression="Email" />
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
                        SelectCommand="SELECT * FROM [UserInfo]" 
                        DeleteCommand="DELETE FROM [UserInfo] WHERE [User_id] = @User_id" 
                        InsertCommand="INSERT INTO [UserInfo] ([User_id], [Pwd], [Name], [Sex], [Email]) VALUES (@User_id, @Pwd, @Name, @Sex, @Email)" 
                        UpdateCommand="UPDATE [UserInfo] SET [Pwd] = @Pwd, [Name] = @Name, [Sex] = @Sex, [Email] = @Email WHERE [User_id] = @User_id">
                        <DeleteParameters>
                            <asp:Parameter Name="User_id" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="User_id" Type="String" />
                            <asp:Parameter Name="Pwd" Type="String" />
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Sex" Type="String" />
                            <asp:Parameter Name="Email" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Pwd" Type="String" />
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Sex" Type="String" />
                            <asp:Parameter Name="Email" Type="String" />
                            <asp:Parameter Name="User_id" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
