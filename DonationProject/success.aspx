<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="success.aspx.cs" Inherits="DonationProject.success" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #Label1{
            font-size:xx-large;
            font-style:italic;
            position:relative;
            color:saddlebrown;
            margin-left:400px;
            margin-top:300px;
            font-weight:bold;
         }
        #HyperLink1{
            margin-left:400px;
            margin-top:50px;
            color:dodgerblue;
            
        }
    </style>
    
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
          <a href="Games/Game1/2048.aspx">2048</a>
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
    </div><!--end of nav bar-->
    <asp:Label ID="Label1" runat="server" Text="Label" ClientIDMode="Static"></asp:Label><br />
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="ChildMasterPage.aspx" ClientIDMode="Static">Play Again to achieve high score!!</asp:HyperLink>
   
    </asp:Content>