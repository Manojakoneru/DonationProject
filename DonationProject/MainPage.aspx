<%@ Page Title="TechGames" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="DonationProject.MainPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="navbar">
        <table style="width:100%; height: 100%">
      <tr>

      <td style="width:15%"><a href="#home">Home</a></td>
     <td  style="width:15%"><a href="Register.aspx">Signup</a></td>
     <td  style="width:15%"><a href="login.aspx">Signin</a></td>
           
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
    </div>
    <div>
        <hr></hr>
                <hr></hr>
 

            <img src="game1.PNG" height="200px" width="200px" /> &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        <img src="game2.PNG" height="200px" width="200px"/> &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        <img src="game3.PNG" height="200px" width="200px"/> &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        <img src="game4.PNG" height="200px" width="200px"/>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        <img src="game5.PNG" height="200px" width="200px"/>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
    </div>
</asp:Content>

