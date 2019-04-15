<%@ Page Title="Hextris" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="DonationProject.MainPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="navbar">
        <table style="width:100%; height: 100%">
      <tr>
      <td  style="width:15%"><a href="#home">Home</a></td>
      <td  style="width:15%">
          <div class="dropdown">
        <button class="dropbtn">Sign Up 
        </button>
        <div class="dropdown-content">
          <a href="../Game1/index.html">Parents</a>
          <a href="../Game2/Game2.aspx">Child</a>
          <a href="#">Captain Rogers</a>
          <a href="../green-mahjong/Game4.aspx">Green Mahjong</a>  
        </div>
      </div> 
          </td>
          <td  style="width:15%">
      <div class="dropdown">
       <button class="dropbtn">Sign In 
        </button>
        <div class="dropdown-content">
          <a href="#">Parents</a>
          <a href="#">Child</a>         
        </div>
      </div> 
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
          <td  style="width:15%"><a href="/Support/contactUs.aspx">Contact Us</a></td>
          </tr>

        </table>
    </div><!--end of nav bar-->
    <div style="float:right;position:relative">
        <iframe src="index.html" border="0" frameborder="0" height="600" width="800" ></iframe>
    </div>
</asp:Content>

