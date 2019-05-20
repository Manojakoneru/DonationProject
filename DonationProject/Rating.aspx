<%--<%@ Page Language="C#" AutoEventWireup="true"  CodeBehind="Rating.aspx.cs" Inherits="DonationProject.WebForm_r" %>--%>
<%@ Page Language="C#"  AutoEventWireup="true" MasterPageFile="~/Site1.Master"  CodeBehind="Rating.aspx.cs" Inherits="DonationProject.WebForm_r" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script src="https://code.jquery.com/jquery-1.11.3.js" type="text/javascript"></script>
<script type="text/javascript">
   
</script>
</asp:Content>
<%--<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Rating</title>
</head>
<body>
    <form id="form_rating" runat="server">--%>

<%--</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="MainPageContentPlaceHolder" runat="server">
    <div class="navbar">
         <table style="width:100%; height: 100%">
      <tr>
          <td  style="width:15%">
      <a href="#home">Home</a>
              </td>         
              <td  style="width:15%">
      
                  <div class="dropdown">
                      <button class="dropbtn">Games</button>
                        <div class="dropdown-content">
          <a href="Games/Game1/2048.aspx">2048</a>
          <a href="Games/Game2/hextris.aspx">Hextris</a>
          <a href="Games/Game3/rogers.aspx">Captain Rogers</a>
          <a href="Games/Game4/Game4.aspx">Green Mahjong</a>
          <%--<a href="Games/Game5/index.html">Dice</a>--%>
        </div>
                  </div>
               </td>
        <td  style="width:15%">
      <a href="LeaderBoard.aspx">Leader Board</a>
            </td>
      <%--  <td  style="width:15%">
      <div class="dropdown">
        <button class="dropbtn">Support 
        </button>
        <div class="dropdown-content">
          <a href="/Support/donateByGame.aspx">Donate A Game</a>
          <a href="/Support/donateByAmount.aspx">Donate Funds</a>
          <a href="/Support/adSubmitPage.aspx">Post AD</a>         
        </div>
      </div>  
        </td>
        <td  style="width:15%">
      <a href="#news">Contact Us</a>    
           </td>--%>
          <td  style="width:15%">
      <a href="logout.aspx">Logout</a>
            </td>
          <td>
    <asp:Label ID="lb1" runat="server" Text="Label"></asp:Label>
    </td>
          </tr>
        </table>
    </div><!--end of nav bar-->
</asp:Content>    
<asp:content id="content3" contentplaceholderid="contentplaceholder1" runat="server">
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
        <%--<asp:ListItem Value="Dice" Text="Dice"> </asp:ListItem>--%>
        <asp:ListItem Value="Captain_Rogers" Text="Captain_Rogers"> </asp:ListItem>
        <asp:ListItem Value="SHooting" Text="2048"> </asp:ListItem>
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

   <%-- </form>

</body>

</html>--%>
</asp:Content>