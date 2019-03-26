<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="donateByGame.aspx.cs" Inherits="DonationProject.donateByGame" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 668px;
            height: 24px;
        }
        .auto-style4 {
            height: 24px;
        }
        .auto-style5 {
            width: 338px;
        }
        .auto-style6 {
            width: 338px;
            height: 24px;
        }
        .auto-style7 {
            width: 668px;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
        <div>

            <table class="auto-style1">
                <tr>
              
                    <td class="auto-style7">Thank you for donating game.. Please go to the github link and post your game.....<br />
                        <br />
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        UserName</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox1" runat="server" BackColor="#CCFFCC"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
           
                <tr>
                    <td class="auto-style7">
                        Email</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        Game category</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                 <tr>
                    <td class="auto-style7">
                        &nbsp;</td>
                    <td class="auto-style5">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://github.com/Manojakoneru/myrepo">Donate</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                 <tr>
                    <td class="auto-style7">
                        &nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                 <tr>
                    <td class="auto-style7">
                        &nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>

                    <td>&nbsp;</td>
                </tr>
                 <tr>
                    <td class="auto-style7">
                        &nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                 <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>