<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="rogers.aspx.cs" Inherits="DonationProject.Games.Game3.rogers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #g3_highscore{
            display:none;
        }
          #Label1{
              
              display:none;
          }      
          #Button1{
              margin-top:100px;
              margin-left:300px;
          }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainPageContentPlaceHolder" runat="server">
     <div class="navbar">
        <table style="width:100%; height: 100%">
      <tr>
      <td  style="width:15%"><a href="#">Home</a></td>
      <td  style="width:15%">
         <div class="dropdown">
                      <button class="dropbtn">Games</button>
                        <div class="dropdown-content">
          <a href="../Game1/2048.aspx">2048</a>
          <a href="../Game2/hextris.aspx">Hextris</a>
          <a href="#">Captain Rogers</a>
          <a href="../Game4/Game4.aspx">Green Mahjong</a>
          <%--<a href="../Game5/index.html">Dice</a>      --%>
        </div>
                  </div>
          </td>
          <td  style="width:15%">
            <a href="../../LeaderBoard.aspx">Leader Board</a>
              </td>        
          <%--<td  style="width:15%">
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
          <td  style="width:15%"><a href="/Support/contactUs.aspx">Contact Us</a></td>--%>
          <td  style="width:15%">
      <a href="./../../logout.aspx">Logout</a>
            </td>
          <td>
    <asp:Label ID="lb1" runat="server" Text="Label"></asp:Label>
    </td>
          </tr>

        </table>
    </div><!--end of nav bar-->
    <div style="float:right;position:relative">
        <iframe src="index.html" border="0" frameborder="0" height="600" width="800" ></iframe>
    </div>
     
         <div>
             <asp:Button ID="Button1" runat="server" Text="End Game" ClientIDMode="Static" OnClientClick="populateScore()" OnClick="Button1_Click"/>
             <asp:Label ID="Label1" runat="server" Text="Label" ClientIDMode="Static"></asp:Label>
         </div>
       <div>
                <table style="width: 100%;">
                    <tr>
                        
                        <td><asp:TextBox ID="g3_highscore" runat="server"  ClientIDMode="Static" ></asp:TextBox></td>
                        
                    </tr>
                    
                </table>
                 </div>
    <script type="text/javascript">
      
        function populateScore() {
           
            var highscore = window.localStorage.getItem('rogers-highscore');
            
            if (highscore == 0)
                alert("Continue to play the game or select another game to play!!");
            document.getElementById('<%=g3_highscore.ClientID %>').value = highscore;
            window.localStorage.setItem('rogers-highscore',0);
         
         }
         </script>
</asp:Content>

