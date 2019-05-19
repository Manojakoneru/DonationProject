<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="donateByGame.aspx.cs" Inherits="DonationProject.donateByGame" %>--%>
<%@ Page Title="TechGames" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="donateByGame.aspx.cs" Inherits="DonationProject.donateByGame" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>--%>

    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 668px;
            height: 24px;
        }
        .auto-style4 {
            height: 24px;
        }
        .auto-style5 {
            width: 338px;
        }
        .auto-style6 {
            width: 338px;
            height: 24px;
        }
        .auto-style7 {
            width: 668px;
        }
    </style>
</asp:Content>


<%--</head>
<body>
    <form id="form2" runat="server">--%>

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

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div>

            <table class="" align="center">
                <tr>
              
                    <td class="">Thank you for donating game.. Please go to the github link and post your game.....<br />
                        <br />
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="">
                        UserName</td>
                    <td class="">
                        <asp:TextBox ID="TextBox1" runat="server" BackColor="#CCFFCC"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
           
                <tr>
                    <td class="">
                        Email</td>
                    <td class="">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="">
                        Game category</td>
                    <td class="">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                 <tr>
                    <td class="">
                        &nbsp;</td>
                    <td class="">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://github.com/Manojakoneru/myrepo">Donate</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                 <tr>
                    <td class="">
                        &nbsp;</td>
                    <td class="">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                 <tr>
                    <td class="">
                        &nbsp;</td>
                    <td class="">
                        &nbsp;</td>

                    <td>&nbsp;</td>
                </tr>
                 <tr>
                    <td class="">
                        &nbsp;</td>
                    <td class="">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <%--<%--<tr>--%>
                    <td class="">&nbsp;</td>
                    <td class="">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>--%>
                <tr>
                    <td class="">&nbsp;</td>
                    <td class="">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                 <tr>
                    <td class="">&nbsp;</td>
                    <td class="">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="">&nbsp;</td>
                    <td class="">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
 <%--   </form>
</body>
</html>--%>

</asp:Content>