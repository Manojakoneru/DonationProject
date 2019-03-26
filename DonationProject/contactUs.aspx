<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contactUs.aspx.cs" Inherits="DonationProject.contactUs" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 246px;
        }
        .auto-style5 {
            margin-left: 255px;
        }
        .auto-style6 {
            width: 246px;
            height: 36px;
        }
        .auto-style7 {
            height: 36px;
        }
        .auto-style8 {
            width: 246px;
            height: 39px;
        }
        .auto-style9 {
            height: 39px;
        }
        .auto-style10 {
            width: 246px;
            height: 21px;
        }
        .auto-style11 {
            height: 21px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style6">Your Name:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="yourname" runat="server" Width="170px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="yourname" ErrorMessage="This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Email</td>
                <td class="auto-style9">
                    <asp:TextBox ID="email" runat="server" TextMode="Email" Width="170px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="email" ErrorMessage="This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Subject</td>
                <td>
                    <asp:TextBox ID="Subject" runat="server" Width="170px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Subject" ErrorMessage="This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Feedback</td>
                <td class="auto-style11">
                    <asp:TextBox ID="Feedback" runat="server" Height="117px" TextMode="MultiLine" Width="319px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Feedback" ErrorMessage="This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style5" Text="Submit" />
    </form>
</body>
</html>
