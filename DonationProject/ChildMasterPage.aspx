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
      <a href="#news">Games</a>        
               </td>
        <td  style="width:15%">
      <a href="#news">Leader Board</a>
            </td>
        <td  style="width:15%">
      <div class="dropdown">
        <button class="dropbtn">Support 
        </button>
        <div class="dropdown-content">
          <a href="donateByGame">Donate A Game</a>
          <a href="donateByAmount">Donate Funds</a>         
        </div>
      </div>  
        </td>
        <td  style="width:15%">
      <a href="#news">Contact Us</a>    
           </td>
         
        </tr>
        </table>
    </div>
</asp:Content>




