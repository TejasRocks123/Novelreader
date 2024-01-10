<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="view.aspx.cs" Inherits="NovelReader2.view" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:GridView ID="gridview1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="gridview1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
                    <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
                     <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkView" runat="server" Text="View" OnClick="lnkView_Click" CommandArgument='<%# Eval("Id") %>'></asp:LinkButton>
                    </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
</asp:GridView>
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name], [id], [type] FROM [DT] WHERE (([Name] = @Name) AND ([id] = @id))">
                <SelectParameters>
                    <asp:QueryStringParameter Name="Name" QueryStringField="Name" Type="String" />
                    <asp:ControlParameter ControlID="Label1" Name="id" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">LinkButton</asp:LinkButton>
            
            <br />
            <asp:Literal ID="ltEmbed" runat="server" />
            <br />
        </div>
    </form>
</body>
</html>
