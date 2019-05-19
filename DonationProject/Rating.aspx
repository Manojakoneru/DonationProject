<%@ Page Language="C#" AutoEventWireup="true"  CodeBehind="Rating.aspx.cs" Inherits="DonationProject.WebForm_r" %>

<script src="https://code.jquery.com/jquery-1.11.3.js" type="text/javascript"></script>
<script type="text/javascript">
   
</script>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Rating</title>
</head>
<body>
    <form id="form_rating" runat="server">
        <div>
            <table align="center">
                <tr>
                    <td colspan="2">
                        <h3>Game Rating</h3>
                    </td>
                </tr>
                <tr>
                    <td bgcolor="#66FFFF">
                     <asp:DropDownList runat="server" ID="ddl1">
        <asp:ListItem Value="Select Game" Selected="True"></asp:ListItem>
        <asp:ListItem Value="Hextris" Text="Hextris"> </asp:ListItem>
        <asp:ListItem Value="Green_Mahjong" Text="Green_Mahjong"> </asp:ListItem>
        <asp:ListItem Value="Dice" Text="Dice"> </asp:ListItem>
        <asp:ListItem Value="Captain_Rogers" Text="Captain_Rogers"> </asp:ListItem>
        <asp:ListItem Value="Shooting" Text="SHooting"> </asp:ListItem>
                         </asp:DropDownList>
                    </td>
                        <td>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" BorderColor="Black" BorderStyle="Solid">
                            <asp:ListItem Value="1">One</asp:ListItem>
                            <asp:ListItem Value="2">Two</asp:ListItem>
                            <asp:ListItem Value="3">Three</asp:ListItem>
                            <asp:ListItem Value="4">Four</asp:ListItem>
                            <asp:ListItem Value="5">Five</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                     <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Select rating" ControlToValidate="RadioButtonList1"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td></td>

                    <td>

                        <asp:Button ID="btn_rate" runat="server" BackColor="#CCFF99" Text="Rate"
                            OnClick="btn_rate_Click" />



                    </td>

                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="LeaderBoard.aspx" ForeColor="#663300">Leaderboard</asp:HyperLink></td>



                </tr>

                <tr>

                    <td align="center" colspan="2">

                        <asp:Label ID="lblmsg" runat="server"></asp:Label>

                    </td>

                </tr>

            </table>





        </div>

    </form>

</body>

</html>
