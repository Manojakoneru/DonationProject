<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adSubmitPage.aspx.cs" Inherits="DonationProject.WebForm2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Adverting page details</title>
 <style type="text/css">
.Gridview
{
font-family:Verdana;
font-size:10pt;
font-weight:normal;
color:black; 
}
</style>
    
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table class="auto-style1">
                <tr>
              
                    <td class="auto-style7">Thank you for choosing our page to post your AD...<br />
                        <br />
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>

                    <td align="center" colspan="2">

                        <asp:Label ID="lblmsg" ForeColor="#CCFFCC" runat="server"></asp:Label>

                    </td>

                </tr>
                <tr>
                    <td class="auto-style7">
                        Username</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox1" runat="server" BackColor="#CCFFCC"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        Email</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        Advertisement category</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        Advertisement Description </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <br />
                    </td>
                </tr>
                
                <tr>
                    <td class="auto-style7">
                        URL of Advertisement  </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                 
                </tr>
                
                <tr>
                    <td>
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" onclick="btnSubmit_Click" />

                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Cancel" />

                    </td>
      
                    </tr>
    </table>
                </div>
    <!--<div>
    <asp:GridView runat="server" ID="gvImages" AutoGenerateColumns="false" DataSourceID="sqldataImages" CssClass="Gridview" HeaderStyle-BackColor="#61A6F8" >
    <Columns>
    <asp:BoundField DataField="ID" HeaderText="ID" />
    <asp:BoundField DataField="ImageName" HeaderText="Image Name" />
    <asp:ImageField HeaderText="Image" DataImageUrlField="ImagePath" />
    </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="sqldataImages" runat="server"  ConnectionString="<%$ConnectionStrings:dbconnection %>"
    SelectCommand="select * from ImagesPath" >
    </asp:SqlDataSource>
    </div>-->
    </form>
      
</body>
</html>
