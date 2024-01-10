<%@ Page Language="C#"  AutoEventWireup="true" CodeBehind="pdfopen.aspx.cs"  Inherits="NovelReader2.pdfopen" %>

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
             <asp:Label ID="Label2" runat="server" Text="label"></asp:Label>
            <asp:FileUpload ID="FileUpload1" runat="server" Width="217px" />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="Upload" />
            <asp:Button ID="Button2" runat="server" Text="View Files" onclick="Button2_Click" style="height: 26px" /> 
<hr />
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [DT]"></asp:SqlDataSource>
 <asp:GridView ID="GridView1" runat="server" Caption="Excel Files " CaptionAlign="Top" HorizontalAlign="Justify" DataKeyNames="id"  ToolTip="Excel FIle DownLoad Tool" CellPadding="4" ForeColor="#333333" GridLines="None" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" >  
            <RowStyle BackColor="#E3EAEB" />  
            <Columns>  
                <asp:CommandField ShowSelectButton="True" SelectText="Download" ControlStyle-ForeColor="Blue" ButtonType="Button" > 
<ControlStyle ForeColor="Blue"></ControlStyle>
                </asp:CommandField>
                <asp:TemplateField ItemStyle-HorizontalAlign="Center">
            <ItemTemplate>
                <asp:LinkButton ID="lnkView" runat="server" Text="View" OnClick="View" CommandArgument='<%# Eval("id")+","+ Eval("Name")+","+Eval("data")%>'></asp:LinkButton>
            </ItemTemplate>

<ItemStyle HorizontalAlign="Center"></ItemStyle>
        </asp:TemplateField>
        
                 
                <asp:TemplateField HeaderText="id">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
        
                 
        <asp:BoundField ItemStyle-Width="150px" DataField="Name" HeaderText="Name" >
                
<ItemStyle Width="150px"></ItemStyle>
                </asp:BoundField>
                <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="view.aspx?id={0}" Text="Pass Single Value" />
                <asp:HyperLinkField DataNavigateUrlFields="id, Name, data" DataNavigateUrlFormatString="view.aspx?id={0}&Name={1}&data={2}" Text="Pass Multiple Values" />
                
                </Columns>  
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />  
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />  
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />  
            <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="White" />  
            <EditRowStyle BackColor="#7C6F57" />  
            <AlternatingRowStyle BackColor="White" /> </asp:GridView>  
             <br />
             <br />
            <asp:Button ID="btn_send" runat="server" Text="send" OnClick="btn_send_Click" />
 
<hr />
<div>
    
</div>
        </div>
        </form>
        </body></html>
 
