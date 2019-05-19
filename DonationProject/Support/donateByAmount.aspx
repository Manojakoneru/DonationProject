<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="donateByAmount.aspx.cs" Inherits="DonationProject.WebForm1" %>--%>
<%@ Page Title="TechGames" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="donateByAmount.aspx.cs" Inherits="DonationProject.WebForm1" %>

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
            height: 24px;
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
            height: 24px;
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
            width: 860px;
            height: 60px;
        }
        .auto-style25 {
            width: 860px;
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

            <table align="center">
                <tr>
              
                    <td colspan="2">&nbsp;</td>
                    <%--<td class="">&nbsp;</td>--%>
                </tr>
                 <tr>

                    <td align="center" colspan="2">

                        <asp:Label ID="lblmsg" runat="server"></asp:Label>

                    </td>

                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
                    </td>
                    <td class="">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <%--<td>&nbsp;</td>--%>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
                    </td>
                    <td class="">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <%--<td class="auto-style4"></td>--%>
                </tr>
                <tr>
                    <td>
                        Email</td>
                    <td class="">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                    <%--<td>&nbsp;</td>--%>
                </tr>
                <tr>
                    <td>
                        Amount</td>
                    <td class="">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                    <%--<td>&nbsp;</td>--%>
                </tr>
                 <tr>
                    <td class="2">
                        Card Number</td>
                    <td class="">
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </td>
                    <%--<td class="4"></td>--%>
                </tr>
                 <tr>
                    <td>
                        address</td>
                    <td class="">
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    </td>
                    <%--<td>&nbsp;</td>--%>
                </tr>
                 <tr>
                    <td>
                        CVV</td>
                    <td class="">
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    </td>

                    <%--<td>&nbsp;</td>--%>
                </tr>
                 <tr>
                    <td>
                        expiration Date</td>
                    <td class="">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                    <%--<td>&nbsp;</td>--%>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td class="">
                        &nbsp;</td>
                    <%--<td>&nbsp;</td>--%>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="">&nbsp;</td>
                    <%--<td>&nbsp;</td>--%>
                </tr>
                <tr>
                    <td class=""></td>
                    <td class="">
                        <asp:Button ID="Button1" runat="server" Text="donate" OnClick="Button1_Click" />
                        <asp:Button ID="Button2" runat="server" Text="Cancel" OnClick="Button2_click"  />
                    </td>
                    <%--<td class="auto-style10"></td>--%>
                </tr>
                <%-- <tr>
                    <td>&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
            
                  </tr>--%>
            </table>

        </div>
    <%--</form>
</body>
</html>--%>

</asp:Content>