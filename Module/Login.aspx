<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="NovelReader2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Login Form</title>
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
        }

        form {
            border: 4px solid aqua;
            background-color:grey;
            
            
        }
        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
        button:hover {
            opacity: 0.8;
        }
        span.psw {
            float: right;
            padding-top: 16px;
        }
        .acd {
            margin: auto;
            width: 30%;
        }
        body{
            background-color:antiquewhite
        }
       
        h2{
           text-align:center; 
        }
         h1{
            color:blue;
            font:24px;
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            border:3px;
            text-align:center;
            background-color:aqua;
            margin:auto;
            width:30.5%;
            padding-top:12px
        }

        .auto-style1 {
            font-weight: bold;
        }
        .auto-style2 {
            text-decoration: none;
        }

    </style>

</head>
<body>
    <div><br /><br /><br /><br /><br /><br /><br /><br /></div>
    <div>
        <h1 class="auto-style4">Welcome To Novel Reader</h1>
        <form id="form1" runat="server" class="acd">
            <div class="auto-style1">
            
                <h2 class="auto-style2">&nbsp;Login</h2>
            
                <div>
            
            <label for="uname"><b>Username</b></label>
            <asp:TextBox runat="server" ID="txt_Username" placeholder="Enter Username"></asp:TextBox>
            <label for="psw">Password</label>
            <asp:TextBox runat="server" ID="txt_password" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
                    <br />
                    <asp:HyperLink ID="HyperLinkForpsw" runat="server" CssClass="auto-style2" NavigateUrl="~/Module/ForgetPassword.aspx">Forget Password</asp:HyperLink>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnLogin" runat="server" BackColor="Green" Height="53px" OnClick="btnLogin_Click" Text="Login" Width="192px" />
                    &nbsp;&nbsp;
                    
                    <asp:Button ID="btnRegister" runat="server" BackColor="#CC0000" Height="53px" OnClick="btnRegister_Click" Text="Register" Width="192px" />
                </div>
                <br />
                <br />
            </div>     
        </form>
        <br /><br /><br /><br /><br /><br /><br /><br /><br />

    </div>
</body>
</html>
