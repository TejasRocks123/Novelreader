<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserSN.aspx.cs" Inherits="NovelReader2.MenuItemsUser.UserSN" %>

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
            <asp:HyperLink ID="HyperLink1" runat="server" BackColor="#0099FF" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" NavigateUrl="~/MenuItemsUser/profile.aspx">Profile</asp:HyperLink>
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" BackColor="#66FFFF" BorderStyle="None" Font-Bold="True" Font-Names="Bahnschrift Light" Font-Size="XX-Large" ForeColor="Black" Text="Enter All Details" Width="1051px"></asp:Label>
            &nbsp;<br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:Label ID="lbl_Image" runat="server" Text="Image:"></asp:Label>
            &nbsp;&nbsp;
            <asp:FileUpload ID="UploadImage" runat="server" Width="229px" />
            &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lvl_ID" runat="server" Text="Novel Id:"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txt_ID" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="lbl_Name" runat="server" Text="Name:"></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="txt_Name" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lbl_Genre" runat="server" Text="Genre:"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txt_Genre" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="lbl_Novel" runat="server" Text="Novel:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_Submit" runat="server" BackColor="#33CC33" BorderColor="Black" BorderStyle="Inset" Font-Bold="False" Font-Names="Dubai" Font-Size="X-Large" ForeColor="Red" Height="43px" OnClick="btn_Submit_Click" Text="Submit" Width="116px" />
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
