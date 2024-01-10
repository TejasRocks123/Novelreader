<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetailedSearch.aspx.cs" Inherits="NovelReader2.MenuItemsUser.DetailedSearch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title></title>
    <style>
        .flag{
            margin:auto;
            width:90%
        }
        div{
            background-color:azure
        }
        
        .auto-style1 {
            font-size: x-large;
        }
        body{
            background-color:antiquewhite
        }
        
        </style>
</head>
<body>
    <form id="form1" runat="server" class="flag">
        <div>
            <h1>NovelReader</h1>
            <asp:Menu runat="server" BackColor="#66CCFF" ForeColor="Black" CssClass="auto-style1" Orientation="Horizontal" StaticSubMenuIndent="16px" Width="1424px">
                <Items>
                     <asp:MenuItem NavigateUrl="~/MenuItemsUser/HomePage.aspx" Text="HomePage" Value="HomePage"></asp:MenuItem>
                    <asp:MenuItem Text="Novel List" Value="Novel List" NavigateUrl="~/MenuItemsUser/NovelList.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Category" Value="Category" NavigateUrl="~/MenuItemsUser/Category.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Latest Update" Value="Latest Update" NavigateUrl="~/MenuItemsUser/LatestUpdate.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Detailed Search" Value="Detailed Search" NavigateUrl="~/MenuItemsUser/DetailedSearch.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Payment" Value="Payment" NavigateUrl="~/MenuItemsUser/Payment.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Settings" Value="Settings" NavigateUrl="~/MenuItemsUser/profile.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Logout" Value="Logout" NavigateUrl="~/Module/Login.aspx"></asp:MenuItem>
                </Items>
                <LevelSelectedStyles>
                    <asp:MenuItemStyle BackColor="#FF9999" Font-Underline="False" />
                </LevelSelectedStyles>
                <StaticMenuItemStyle Font-Size="X-Large" HorizontalPadding="32px" VerticalPadding="10px" />
            </asp:Menu>
            <asp:Label ID="lbl_Keyword" runat="server" Text="Keyword:"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txt_Search" runat="server" Height="23px" Width="295px" PlaceHolder="Search"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Genre:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
           
          
           
            <div class="auto-style3">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/MenuItemsUser/Genre/GenreAdventure.aspx" Font-Bold="True" Font-Names="Calibri" Font-Size="Larger" ForeColor="Black">Adventure</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/MenuItemsUser/Genre/GenreSci-Fi.aspx" Font-Bold="True" Font-Names="Calibri" Font-Size="Larger" ForeColor="Black">Sci-Fiction</asp:HyperLink>
           
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/MenuItemsUser/Genre/GenreHorror.aspx" Font-Bold="True" Font-Names="Calibri" Font-Size="Larger" ForeColor="Black">Horror</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/MenuItemsUser/Genre/GenreRomCom.aspx" Font-Bold="True" Font-Names="Calibri" Font-Size="Larger" ForeColor="Black">Romentic Comedy</asp:HyperLink>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/MenuItemsUser/Genre/GenreMecha.aspx" Font-Bold="True" Font-Names="Calibri" Font-Size="Larger" ForeColor="Black">Mecha</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/MenuItemsUser/Genre/GenreIsekai.aspx" Font-Bold="True" Font-Names="Calibri" Font-Size="Larger" ForeColor="Black">Isekai</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/MenuItemsUser/Genre/GenrePsycological.aspx" Font-Bold="True" Font-Names="Calibri" Font-Size="Larger" ForeColor="Black">Psycological</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/MenuItemsUser/Genre/GenreSports.aspx" Font-Bold="True" Font-Names="Calibri" Font-Size="Larger" ForeColor="Black">Sports</asp:HyperLink>
            </div>
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="btn_Search" runat="server" Height="30px" Text="Search" Width="102px" OnClick="btn_Search_Click" />
            <br />
            <br />
            <br />
           
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Width="1000px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:TemplateField HeaderText="Image">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" ImageUrl='<%# "Data:Image / png;Base64,"+Convert.ToBase64String((byte[]) Eval("Image")) %>'/>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ID">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                    </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name">
                        <ItemTemplate>
                            <asp:Label ID="lbl_Name" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle ForeColor="Black" HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Genre">
                        <ItemTemplate>
                            <asp:Label ID="lbl_Genre" runat="server" Text='<%# Eval("Genre") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
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
        </div>
    </form>
</body>
</html>
