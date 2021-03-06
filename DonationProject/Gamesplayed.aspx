﻿<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master"  CodeBehind="Gamesplayed.aspx.cs" Inherits="DonationProject.Gamesplayed" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Leader Board</title>
    <style type="text/css">
        .auto-style1 {
            width: 41%;
        }
        .auto-style2 {
            width: 119px;
        }
        .auto-style3 {
            width: 119px;
            height: 26px;
        }
        #Label1{
            font-size:xx-large;
           
            position:relative;
            color:blue;
            margin-left:400px;
            margin-top:300px;
            font-weight:bold;
         }
        #GridView2{
            margin-left:400px;
            margin-top:30px;
        }
        #Label2{
            font-size:xx-large;
            font-weight:bold;
        }
    </style>
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
       <%-- <td  style="width:15%">
      <a href="LeaderBoard.aspx">Leader Board</a>
            </td>--%>
       <%-- <td  style="width:15%">
      <div class="dropdown">
        <button class="dropbtn">Support 
        </button>
        <div class="dropdown-content">
          <a href="/Support/donateByGame.aspx">Donate A Game</a>
          <a href="/Support/donateByAmount.aspx">Donate Funds</a>
          <a href="/Support/adSubmitPage.aspx">Post AD</a>         
        </div> 
      </div>  
        </td>--%>
        <%--<td  style="width:15%">
      <a href="#news">Contact Us</a>    
           </td>--%>
          <td  style="width:15%">
      <a href="logout.aspx">Logout</a>
            </td>
          <td>
    <asp:Label ID="lb1" runat="server" Text="Label"></asp:Label>
    </td>
          </tr>
        </table>
    </div><!--end of nav bar-->
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label" ClientIDMode="Static">Child Info :</asp:Label>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2"  DataSourceID="techgamesDataSource" ClientIDMode="Static" CaptionAlign="Top" Height="16px" Width="123px">
                <Columns> 
                    <asp:BoundField DataField="game" HeaderText="game" SortExpression="game" />
                    <asp:BoundField DataField="highscore" HeaderText="highscore" SortExpression="highscore"/>
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            <br />
        </div>
        <asp:SqlDataSource ID="techgamesDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:TestDBConnectionString %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT [game], [highscore] FROM scoreboard where [scoreboard].username in (SELECT [childTable].userName from childTable where childTable.email in(select [ParentTable].childEmail from ParentTable where [ParentTable].userName=@UID)) "></asp:SqlDataSource>
    
</asp:Content>
