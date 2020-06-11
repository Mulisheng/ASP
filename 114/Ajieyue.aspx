<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ajieyue.aspx.cs" Inherits="_7_jieyue" %>

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
    
        <table align="center" class="style1" style="text-align: center">
            <tr>
                <td>
                    借阅查询</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Text="查询" onclick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:NetTest1 %>" 
                        
                        SelectCommand="SELECT [Bname], [Bwriter], [Bpubtime], [Bcase], [Borrowman] FROM [Book]"></asp:SqlDataSource>
                  
                        <asp:Panel ID="Panel1" runat="server" Visible="False">
                            <asp:DetailsView ID="DetailsView1" runat="server" 
    AutoGenerateRows="False" DataSourceID="SqlDataSource1" Height="76px" 
    Width="677px" DataKeyNames="Bname">
                                <Fields>
                                    <asp:BoundField DataField="Bname" HeaderText="Bname" 
            SortExpression="Bname" ReadOnly="True" />
                                    <asp:BoundField DataField="Bwriter" HeaderText="Bwriter" 
            SortExpression="Bwriter" />
                                    <asp:BoundField DataField="Bpubtime" 
            HeaderText="Bpubtime" SortExpression="Bpubtime" />
                                    <asp:BoundField DataField="Bcase" HeaderText="Bcase" 
            SortExpression="Bcase" />
                                    <asp:BoundField DataField="Borrowman" HeaderText="Borrowman" 
                                        SortExpression="Borrowman" />
                                </Fields>
                            </asp:DetailsView>
                    </asp:Panel>
                   
                    <br />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
