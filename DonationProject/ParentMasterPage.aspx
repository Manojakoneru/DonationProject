<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ParentMasterPage.aspx.cs" Inherits="DonationProject.ParentMasterPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainPageContentPlaceHolder" runat="server">
     <div class="navbar">
         <table style="width:100%; height: 100%">
      <tr>
          <td  style="width:15%">
      <a href="#home">Home</a>
          </td>      
        <td  style="width:15%">
      <a href="Gamesplayed.aspx">Games Played</a>      
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
            <a href="#news">About Us</a>  
           </td>
          <td  style="width:15%">
      <a href="logout.aspx">Logout</a>
            </td>
          </tr>
        </table>
    </div>
</asp:Content>
