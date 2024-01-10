<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="NovelReader2.User_Credentials.ForgetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
         body {
            font-family: Arial, Helvetica, sans-serif;
        }

        form {
            border: 4px solid aqua;
            background-color:grey;
            
            
        }
        input[type=email], input[type=password] {
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
        h1{
            text-align:center
        }
        body{
            background-color:antiquewhite
        }
       
    </style>
</head>
<body>
    <div><br /><br /><br /><br /><br /><br /><br /><br /></div>
    <form id="form1" runat="server" class="acd">
        <div>
            <h1>Forget Password</h1>
            <div>
                <label for="Email"><b>Email</b></label><br />
                <asp:TextBox runat="server" ID="txt_Email" placeholder="Enter Your Email Id" TextMode="Email"></asp:TextBox><br />
                <label for="psw"><b>New Password</b></label><br />
                <asp:TextBox runat="server" ID="txt_psw" placeholder="Enter New Password" TextMode="Password"></asp:TextBox><br />
                <label for="repsw"><b>RePassword</b></label><br />
                <asp:TextBox runat="server" ID="txt_Repsw" placeholder="Confirm Password" TextMode="Password"></asp:TextBox><br /><br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button runat="server" ID="btn_Cngpsw" text="Change Password" BackColor="#33CC33" Height="40px" Width="150px" OnClick="btn_Cngpsw_Click"/><br /><br />
            </div>
        </div>
    </form>
</body>
</html>
