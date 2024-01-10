<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserDetails.aspx.cs" Inherits="NovelReader2.MenuItemsAdmin.UserDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Module</title>
    <style>
        .flag{
            margin:auto;
            width:90%
        }
        body{
            background-color:antiquewhite
        }
        div{
            background-color:azure
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server" class="flag">
        <div>
             <h1>NovelReader</h1>
            <asp:Menu runat="server" BackColor="#66CCFF" ForeColor="Black" CssClass="auto-style1" Orientation="Horizontal" StaticSubMenuIndent="16px" Width="1410px">
                <Items>
                     <asp:MenuItem Text="HomePage" Value="HomePage" NavigateUrl="~/MenuItemsAdmin/HomePage.aspx"></asp:MenuItem>
                    
                    <asp:MenuItem Text="Add" Value="Add" NavigateUrl="~/MenuItemsAdmin/Add.aspx"></asp:MenuItem>
                   
                    <asp:MenuItem Text="Delete" Value="Delete" NavigateUrl="~/MenuItemsAdmin/Delete.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="User Details" Value="User Details" NavigateUrl="~/MenuItemsAdmin/UserDetails.aspx"></asp:MenuItem>
                   <asp:MenuItem Text="Reports" Value="Reports" NavigateUrl="~/MenuItemsAdmin/ReportAdmin.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Feedback" Value="Feedback" NavigateUrl="~/MenuItemsAdmin/Feedback.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Logout" Value="Logout" NavigateUrl="~/Module/Login.aspx"></asp:MenuItem>
                </Items>
                <LevelSelectedStyles>
                    <asp:MenuItemStyle BackColor="#FF9999" Font-Underline="False" />
                </LevelSelectedStyles>
                <StaticMenuItemStyle HorizontalPadding="43px" VerticalPadding="10px" Font-Size="X-Large" />
            </asp:Menu>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [UserName], [Email], [MobileNo], [Image] FROM [UserCredentials]"></asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="1000px" OnRowDeleting="GridView1_RowDeleting" DataKeyNames="MobileNo" HorizontalAlign="Center" CellPadding="4" ForeColor="#333333" GridLines="None" >
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    
                    <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" >
                   
                    
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                   
                    
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="Mobile No">
                        <ItemTemplate>
                            <asp:Label ID="lbl_MobileNo" runat="server" Text='<%# Eval("MobileNo") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:CommandField ShowDeleteButton="True" ButtonType="Button">
                    <ControlStyle BackColor="Red" Font-Bold="True" Font-Names="Arial Black" ForeColor="White" />
                    <ItemStyle Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:CommandField>
                   
                    
                </Columns>
               
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
               
            </asp:GridView>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
