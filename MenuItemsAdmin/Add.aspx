<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="NovelReader2.MenuItemsAdmin.Add" %>

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
          input[type=text], input[type=file]{
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
            
        }      
        .acd{
            margin:auto;
            width:60%;
        }
       
        
        
    </style>
</head>
<body>
    <form id="form1" runat="server" class="flag" enctype="multipart/form-data">
        <div class="auto-style1">
             <h1>NovelReader</h1>
            <asp:Menu runat="server" BackColor="#66CCFF" ForeColor="Black" CssClass="flag" Orientation="Horizontal" StaticSubMenuIndent="16px" Width="1345px">
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
            <asp:Label ID="Label1" runat="server" Text="Enter All Details" BackColor="#66FFFF" BorderStyle="None" Font-Bold="True" Font-Names="Bahnschrift Light" Font-Size="XX-Large" ForeColor="Black" Width="1347px" CssClass="flag"></asp:Label>
            &nbsp;<br />
            <br />
            <asp:Panel ID="Panel1" runat="server" CssClass="acd" Font-Bold="True" Font-Size="Large">
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <asp:Label ID="lbl_Image0" runat="server" Text="Image:"></asp:Label>
                &nbsp;<br /> <asp:FileUpload ID="UploadImage" runat="server" Width="625px" />
                <br />
                <asp:Label ID="lvl_ID0" runat="server" Text="Novel Id:"></asp:Label>
                &nbsp;<asp:TextBox ID="txt_ID" runat="server"></asp:TextBox>
                <asp:Label ID="lbl_Name0" runat="server" Text="Name:"></asp:Label>
                &nbsp;&nbsp;
                <asp:TextBox ID="txt_Name" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="lbl_Genre0" runat="server" Text="Genre:"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_Genre" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="lbl_Novel0" runat="server" Text="Novel:"></asp:Label>
                <br />
                <asp:FileUpload ID="FileUpload1" runat="server" Width="623px" />
                <br />
                <asp:Label ID="Label4" runat="server" Text="Ratings:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtNumber" runat="server"></asp:TextBox>
                &nbsp;<asp:Label ID="Label5" runat="server" Text="Price:"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_Price" runat="server"></asp:TextBox>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_Submit" runat="server" BackColor="#33CC33" BorderColor="Black" BorderStyle="Inset" Font-Bold="False" Font-Names="Dubai" Font-Size="X-Large" ForeColor="Red" Height="43px" OnClick="btn_Submit_Click" Text="Submit" Width="116px" />
                <br />
                <br />
                <br />
            </asp:Panel>
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
