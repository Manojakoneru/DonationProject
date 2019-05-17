<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ChildMasterPage.aspx.cs" Inherits="DonationProject.ChildMasterPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
          <a href="Games/Game1/index.html">Shooting</a>
          <a href="Games/Game2/hextris.aspx">Hextris</a>
          <a href="Games/Game3/rogers.aspx">Captain Rogers</a>
          <a href="Games/Game4/Game4.aspx">Green Mahjong</a>
          <a href="Games/Game5/index.html">Dice</a>
        </div>
                  </div>
               </td>
        <td  style="width:15%">
      <a href="LeaderBoard.aspx">Leader Board</a>
            </td>
        <td  style="width:15%">
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
           </td>
          <td  style="width:15%">
      <a href="logout.aspx">Logout</a>
            </td>
          <td>
    <asp:Label ID="lb1" runat="server" Text="Label"></asp:Label>
    </td>
          
          
    
        </tr>
        </table>
    </div>

</asp:Content>




