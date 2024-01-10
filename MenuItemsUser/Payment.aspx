<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="NovelReader2.Payment" %>

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
        h2{
            text-align:center
        }
        .panel{
            margin:auto;
            width:40%
        }
        .auto-style2 {
            font-size: large;
            color: #00CCFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="flag">
        <div>
            
            <h1>NovelReader</h1>
            <asp:Menu runat="server" BackColor="#66CCFF" ForeColor="Black" CssClass="auto-style1" Orientation="Horizontal" StaticSubMenuIndent="16px" Width="1410px">
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
            <asp:Label ID="Label5" runat="server" Text="Label" Visible="False"></asp:Label>
            <asp:Label ID="Label6" runat="server" Text="Label" Visible="False"></asp:Label>
            <br />
            <asp:Panel ID="Panel1" runat="server" CssClass="panel">
                <br />
                <strong>
                <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="CardHolder's Name:"></asp:Label>
                </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="140px"></asp:TextBox>
                &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red">*</asp:RequiredFieldValidator>
                <br />
                <br />
                <strong>
                <asp:Label ID="Label2" runat="server" CssClass="auto-style2" Text="Card Number:"></asp:Label>
                </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="140px"></asp:TextBox>
                &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red">*</asp:RequiredFieldValidator>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                <asp:Label ID="Label3" runat="server" CssClass="auto-style2" Text="Expiry Date"></asp:Label>
                </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                <asp:Label ID="Label4" runat="server" CssClass="auto-style2" Text="CVV"></asp:Label>
                </strong>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:TextBox ID="TextBox3" runat="server" Height="20px" Width="140px"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red">*</asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox4" runat="server" Height="20px" Width="140px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="Red">*</asp:RequiredFieldValidator>
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                <asp:Label ID="Label9" runat="server" CssClass="auto-style2" Text="Pin:"></asp:Label>
                </strong>&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Novel
                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                &nbsp;Price is
                <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                .<br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Height="31px" Text="Pay" Width="73px" OnClick="Button1_Click" />
            </asp:Panel>
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Image], [ID], [Name], [ContentType], [Genre], [Rating], [DateTime] FROM [Novels] WHERE (([ID] = @ID) AND ([Name] = @Name))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Label5" Name="ID" PropertyName="Text" Type="String" />
                    <asp:QueryStringParameter Name="Name" QueryStringField="Name" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Visible="False" Width="1000px" >
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
                     <asp:TemplateField ItemStyle-HorizontalAlign = "Center">
            <ItemTemplate>
                <asp:LinkButton ID="lnkDownload" runat="server" Text="Download" onclick="lnkDownload_Click"
                    CommandArgument='<%# Eval("ID") %>'></asp:LinkButton>
            </ItemTemplate>

<ItemStyle HorizontalAlign="Center"></ItemStyle>
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
