<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="2048.aspx.cs" Inherits="DonationProject.Games.Game1._2048" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #score{
            display:none;
        }
        #Label1{
             display:none;
        }
        .auto-style3 {
            margin-top:50px;
            margin-right:400px;
            position:relative;
            float:right; 
        }
        #frame1{
            
            margin-top:50px;
        }
        #Button1{
              margin-top:-600px;
              margin-left:300px;
              float:right;
          }
    </style>
     
    <script src="https://code.jquery.com/jquery-1.11.3.js" type="text/javascript"></script>
   
     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainPageContentPlaceHolder" runat="server">
    <div class="navbar">
        <table style="width:100%; height: 100%">
      <tr>
      <td  style="width:15%"><a href="#home">Home</a></td>
      <td  style="width:15%">
         <div class="dropdown">
                      <button class="dropbtn">Games</button>
                        <div class="dropdown-content">
          <a href="#">2048</a>
          <a href="../Game2/hextris.aspx">Hextris</a>
          <a href="../Game3/rogers.aspx">Captain Rogers</a>
          <a href="../Game4/Game4.aspx">Green Mahjong</a>
          <a href="../Game5/index.html">Dice</a>
        </div>
                  </div>
          </td>
          <td  style="width:15%">
            <a href="../../LeaderBoard.aspx">Leader Board</a>
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
          <td  style="width:15%">
      <a href="./../../logout.aspx">Logout</a>
            </td>
          </tr>

        </table>
    </div><!--end of nav bar-->
    <div style="float:right;position:relative">
         <iframe src="index.html" frameborder="0" height="700"  id="frame1"></iframe>

        <div class="auto-style3">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="End game" ClientIDMode="Static" OnClientClick="populateScore()"/>
            <asp:Label ID="Label1" runat="server" Text="Label" ClientIDMode="Static"></asp:Label>
        </div>
        <div>
                <table style="width: 100%;">
                    <tr>
                        
                        <td><asp:TextBox ID="score" runat="server"  ClientIDMode="Static" ></asp:TextBox></td>
                        
                    </tr>
                    
                </table>
                  
            
                 </div>
    </div>
    <script type="text/javascript">
        function populateScore() {
            var allCookieArray = document.cookie.split(';');
            var tempScore = allCookieArray[0].split("=");
            document.getElementById('<%=score.ClientID %>').value = tempScore[1];
           }
         </script>
</asp:Content>

