<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contactUs.aspx.cs" Inherits="DonationProject.contactUs" %>--%>
<%@ Page Title="TechGames" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="contactUs.aspx.cs" Inherits="DonationProject.contactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>--%>
<style>
.aboutus{
line-height: 50px;
text-align: justify;
margin-left:150px;
margin-right: 150px;
-webkit-animation: myanimation 15s; 
}
@-webkit-keyframes myanimation
{
    from {background-image:url("counterstrike.jpg");}
    to {background-image:url("image2.jpg");}
}


</style>
    <%--</head>--%>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainPageContentPlaceHolder" runat="server">
    <div class="navbar">
        <table style="width:100%; height: 100%">
      <tr>

      <td style="width:15%"><a href="/Mainpage.aspx">Home</a></td>
     <td  style="width:15%"><a href="/Register.aspx">Signup</a></td>
     <td  style="width:15%"><a href="/login.aspx">Signin</a></td>
              

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
</asp:Content>

<%--<body>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="aboutus">
<p><b> Top Tech Gaming Solutions is a medium sized technology company headquartered in Washington D.C.
Our company creates games for children under the age of 18. The main focus our company is too promote and manage the 
games we provide for the children. We also make sure that parents can see the games played by thier children. 
In this way we provide security. Since we have integrated games in our website it can be played online without requiring to 
install any software. We also provide the option where users can donate games once they have crossed the age of 18. 
The users will be redirected to the subscription page once they have reached the age of 18. If you have any queries 
you can contact us at toptechgames@gmail.com. 
</b></p>
</div>
<%--</body>
</html>--%>
</asp:Content>