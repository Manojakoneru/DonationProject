<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="paymentpage.aspx.cs" Inherits="DonationProject.paymentpage" %>--%>
<%@ Page Title="TechGames" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="paymentpage.aspx.cs" Inherits="DonationProject.paymentpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>--%>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 355px;
        }
        .auto-style3 {
            width: 355px;
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
        .auto-style8 {
            width: 355px;
            height: 60px;
        }
        .auto-style9 {
            width: 338px;
            height: 60px;
        }
        .auto-style10 {
            height: 60px;
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

            <table class="">
                <tr>
              
                    <td class="">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                 <tr>

                    <td align="center" colspan="2">

                        <asp:Label ID="lblmsg" runat="server"></asp:Label>

                    </td>

                </tr>
                <tr>
                    <td class="">
                        <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
                    </td>
                    <td class="">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="">
                        <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
                    </td>
                    <td class="">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td class=""></td>
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
                        Amount</td>
                    <td class="">
                        <asp:TextBox ID="TextBox4" value="50" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                 <tr>
                    <td class="">
                        Card Number</td>
                    <td class="">
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                 <tr>
                    <td class="">
                        address</td>
                    <td class="">
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                 <tr>
                    <td class="">
                        CVV</td>
                    <td class="">
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    </td>

                    <td>&nbsp;</td>
                </tr>
                 <tr>
                    <td class="">
                        expiration Date</td>
                    <td class="">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
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
                    <td class="">&nbsp;</td>
                    <td class="">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class=""></td>
                    <td class="">
                        <asp:Button ID="Button1" runat="server" Text="Pay" OnClick="Button1_Click" />
                        <asp:Button ID="Button2" runat="server" Text="Cancel" OnClick="Button2_click"  />
                    </td>
                    <td class=""></td>
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
   <%-- </form>
</body>
</html>--%>
</asp:Content>