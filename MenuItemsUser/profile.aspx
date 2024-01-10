<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="NovelReader2.MenuItemsAdmin.profile" %>

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
                <StaticMenuItemStyle Font-Size="X-Large" HorizontalPadding="35px" VerticalPadding="10px" />
            </asp:Menu>
       
             <asp:HyperLink ID="HyperLink1" runat="server" BackColor="#0099FF" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" NavigateUrl="~/MenuItemsUser/UserSN.aspx">Submit Your Novels</asp:HyperLink>
       
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" Font-Size="Large" NavigateUrl="~/MenuItemsUser/Report.aspx">Report</asp:HyperLink>
       
             <br />
            <asp:Image ID="Image1" runat="server" Height="43px" />
            <br />
            <asp:FileUpload ID="FileUpload1" runat="server" />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Please upload a Image"></asp:Label>
            <br />
            <br />
            UserName&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txt_Username" runat="server" Width="140px"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="btn_Save" runat="server" Font-Size="Medium" Height="33px" OnClick="btn_Save_Click" Text="Save Changes" Width="117px" />
             <br />
            <br />
            <br />

            <br />
            &nbsp;<br />
            <br />
             </div>
    </form>
</body>
</html>
