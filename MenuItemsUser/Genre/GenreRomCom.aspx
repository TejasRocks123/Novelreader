<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GenreRomCom.aspx.cs" Inherits="NovelReader2.MenuItemsUser.GenreAdventure" %>

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
        
        
        .auto-style2 {
            margin: auto;
            width: 69%;
            height: 76px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="flag">
         
        <div>
           <h1>Novel Reader</h1><br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Image], [Name], [Genre], [ContentType], [Rating], [DateTime] FROM [Novels] WHERE ([Genre] = @Genre)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="RomCom" Name="Genre" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:GridView ID="gridview1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Width="1000px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:TemplateField HeaderText="Image">
                        <ItemTemplate>
                            <asp:Image ID="Image2" runat="server" Height="100px" Width="100px" ImageUrl='<%# "Data:Image / png;Base64,"+Convert.ToBase64String((byte[]) Eval("Image")) %>'/>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />

                     <asp:BoundField DataField="Rating" HeaderText="Rating" SortExpression="Rating" />

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
        </div>
    </form>
</body>
</html>
