<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="Game4.aspx.cs" Inherits="DonationProject.Games.Game4.Game4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainPageContentPlaceHolder" runat="server">
     <div class="navbar">
        <table style="width:100%; height: 100%">
      <tr>
      <td  style="width:15%"><a href="#home">Home</a></td>
      <td  style="width:15%">
         <div class="dropdown">
                      <button class="dropbtn">Games</button>
                        <div class="dropdown-content">
          <a href="../Game1/2048.aspx">2048</a>
          <a href="../Game2/hextris.aspx">Hextris</a>
          <a href="../Game3/rogers.aspx">Captain Rogers</a>
          <a href="#">Green Mahjong</a>
          <%--<a href="../Game5/index.html">Dice</a> --%>
        </div>
                  </div>
          </td>
          <td  style="width:15%">
            <a href="../../LeaderBoard.aspx">Leader Board</a>
              </td>        
          <%--<td  style="width:15%">
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
          <td  style="width:15%"><a href="/Support/contactUs.aspx">Contact Us</a></td>--%>
          <td  style="width:15%">
      <a href="./../../logout.aspx">Logout</a>
            </td>
          <td>
    <asp:Label ID="lb1" runat="server" Text="Label"></asp:Label>
    </td>
          </tr>

        </table>
    </div><!--end of nav bar-->
    <div></div>
    <div style="float:right;position:relative;margin-top:50px">
        <iframe src="index.html" border="0" frameborder="0" height="850" width="800" ></iframe>
    </div>
</asp:Content>