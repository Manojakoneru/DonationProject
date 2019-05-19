<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adSubmitPage.aspx.cs" Inherits="DonationProject.WebForm2" %>--%>

<%@ Page Title="TechGames" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adSubmitPage.aspx.cs" Inherits="DonationProject.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
    <%--<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Adverting page details</title>--%>


    <style type="text/css">
        .Gridview {
            font-family: Verdana;
            font-size: 10pt;
            font-weight: normal;
            color: black;
        }
        .auto-style7 {
            width: 668px;
        }
    </style>
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

<%--</head>
<body>--%>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--<form id="form1" runat="server">--%>
    <div>

        <table class="" align="center">
            <tr>

                <td class="" colspan="2">Thank you for choosing our page to post your AD...<br />
                    <br />
                    <br />
                </td>
                <%--<td>&nbsp;</td>--%>
            </tr>
            <tr>

                <td align="center" colspan="2">

                    <asp:Label ID="lblmsg" ForeColor="#CCFFCC" runat="server"></asp:Label>

                </td>

            </tr>
            <tr>
                <td class="">Username</td>
                <td class="">
                    <asp:TextBox ID="TextBox1" runat="server" BackColor="#CCFFCC"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="">Email</td>
                <td class="">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td class=""></td>
            </tr>
            <tr>
                <td class="">Advertisement category</td>
                <td class="">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="">Advertisement Description </td>
                <td class="">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
                <td>
                    <br />
                </td>
            </tr>

            <tr>
                <td class="">URL of Advertisement  </td>
                <td class="">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>

            </tr>

            <tr>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />

                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Cancel" />

                </td>

            </tr>
        </table>
    </div>
    <!--<div>
    <asp:GridView runat="server" ID="gvImages" AutoGenerateColumns="false" DataSourceID="sqldataImages" CssClass="Gridview" HeaderStyle-BackColor="#61A6F8" >
    <Columns>
    <asp:BoundField DataField="ID" HeaderText="ID" />
    <asp:BoundField DataField="ImageName" HeaderText="Image Name" />
    <asp:ImageField HeaderText="Image" DataImageUrlField="ImagePath" />
    </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="sqldataImages" runat="server"  ConnectionString="<%$ConnectionStrings:dbconnection %>"
    SelectCommand="select * from ImagesPath" >
    </asp:SqlDataSource>
    </div>-->
    <%--</form>--%>
      
    <%--</body>
</html>--%>
</asp:Content>
