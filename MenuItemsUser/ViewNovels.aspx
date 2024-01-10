<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewNovels.aspx.cs" Inherits="NovelReader2.MenuItemsUser.ViewNovels" %>

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
        
        body{
            background-color:antiquewhite
        }
     </style>
</head>
<body>
    <form id="form1" runat="server" class="flag">
        <div>
            <h1>Novel Reader</h1>

            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
            <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="1000px" HorizontalAlign="Center" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:TemplateField HeaderText="Image">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" ImageUrl='<%# "Data:Image / png;Base64,"+Convert.ToBase64String((byte[]) Eval("Image")) %>'/>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                     <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" >
                    
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" >
                    
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    
                    <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" >
                    
                     <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    
                     <asp:BoundField DataField="ContentType" HeaderText="ContentType" SortExpression="ContentType" >
                     <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                     <asp:BoundField DataField="Rating" HeaderText="Rating" SortExpression="Rating" >
                     <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                     <asp:BoundField DataField="DateTime" HeaderText="DateTime" SortExpression="DateTime" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkView" runat="server" Text="View" onclick="lnkView_Click" CommandArgument='<%# Eval("ID") %>'></asp:LinkButton>
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Image], [Name], [Genre], [Novel], [Rating], [DateTime], [ID], [ContentType] FROM [Novels] WHERE (([ID] = @ID) AND ([Name] = @Name))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Label1" Name="ID" PropertyName="Text" Type="String" />
                    <asp:QueryStringParameter Name="Name" QueryStringField="Name" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>

            <br />
            <div>
                 <asp:Literal ID="ltEmbed" runat="server"></asp:Literal>
            </div>
            <br /><br />
            <br /><br /><br /><br />
           

        </div>
    </form>
   
</body>
</html>
