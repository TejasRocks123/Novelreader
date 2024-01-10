<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="NovelReader2.User_Credentials.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Register</title>
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
        }
        form{
            border:5px solid aqua;
            background-color:gray;
        }
        input[type=text], input[type=password], input[type=email]{
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
        .flag{
            margin:auto;
            width:30%
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
    <form id="form1" runat="server" class="flag">
        <div class="auto-style1">

            <h1 class="auto-style2">Register</h1>
            <div class="auto-style3">
                <label for="Uname"><b>UserName</b></label><br />
                <asp:TextBox runat="server" ID="txt_Uname" placeholder="Enter Username"></asp:TextBox>
                <br />
                <br />
                <label for="Email"><b>Email</b></label><br />
                <asp:TextBox runat="server" ID="txt_Email" placeholder="Enter Your Email Id" TextMode="Email"></asp:TextBox>
                <br />
                <br />
                <label for="psw"><b>Password</b></label><br />
                <asp:TextBox runat="server" ID="txt_psw" placeholder="Enter Password" TextMode="Password"></asp:TextBox><br />
                <br />
                <label for="MNO"><b>Mobile Number</b></label><br />
                <asp:TextBox runat="server" ID="txt_MNO" placeholder="Enter Mobile Number" ></asp:TextBox><br />
                <br /><br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button runat="server" ID="btn_Signup" text="Sign up" BackColor="#33CC33" Height="40px" Width="150px" OnClick="btn_Signup_Click"/><br /><br />
            </div>
        </div>
    </form>
</body>
</html>
