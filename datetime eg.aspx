<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="datetime eg.aspx.cs" Inherits="NovelReader2.datetime_eg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .asd{
            background-color:aqua;

        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Storing Date And Time in Database</h1>

            <label id="label1" runat="server" >Name</label>
            <asp:TextBox ID="txt_Name" runat="server" ></asp:TextBox>

            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="submit" />
            <br />
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [DT]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="DateTime" HeaderText="DateTime" SortExpression="DateTime" />
                </Columns>
            </asp:GridView>

        </div>
    </form>
</body>
</html>
