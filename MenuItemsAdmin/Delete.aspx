<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="NovelReader2.MenuItemsAdmin.Delete" %>

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
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Novels]"></asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="377px" Width="598px" OnRowDeleting="GridView1_RowDeleting1" CellPadding="4" ForeColor="#333333" GridLines="None" HorizontalAlign="Center"  >
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" Height="100px" Width="100px"  ImageUrl='<%# "Data:Image / png;Base64,"+Convert.ToBase64String((byte[]) Eval("Image")) %>'/>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ID">
                        <ItemTemplate>
                            <asp:Label ID="lbl_ID" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:CommandField ShowDeleteButton="True" ButtonType="Button" >
                    <ControlStyle BackColor="Red" Font-Bold="True" ForeColor="White" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
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
        </div>
    </form>
</body>
</html>
