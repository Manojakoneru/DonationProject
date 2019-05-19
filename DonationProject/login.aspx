<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="DonationProject.login" %>--%>

<%@ Page Title="TechGames" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="DonationProject.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" language="javascript">

        function Validate() {

            var UName = document.getElementById('TextBox_user_name');

            var Password = document.getElementById('TextBox_password');

            if ((UName.value == '') || (Password.value == '')) {

                alert('UserName or Password should not be blank');

                return false;

            }

            else {

                return true;

            }

        }

    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainPageContentPlaceHolder" runat="server">
    <div class="navbar">
        <table style="width: 100%; height: 100%">
            <tr>

                <td style="width: 15%"><a href="/Mainpage.aspx">Home</a></td>
                <td style="width: 15%"><a href="Register.aspx">Signup</a></td>
                <td style="width: 15%"><a href="login.aspx">Signin</a></td>


                <td style="width: 15%">
                    <div class="dropdown">
                        <button class="dropbtn">
                            Support 
       
                        </button>
                        <div class="dropdown-content">
                            <a href="/Support/donateByGame.aspx">Donate A Game</a>
                            <a href="/Support/donateByAmount.aspx">Donate Funds</a>
                            <a href="/Support/adSubmitPage.aspx">Post AD</a>
                        </div>
                    </div>
                </td>
                <td style="width: 15%"><a href="/Support/contactUs.aspx">Contact Us</a></td>
            </tr>

        </table>
    </div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <%--<body>

    <form id="form1" runat="server">--%>

    <div>
        <table align="center" style="padding-top:100px">
            <tr>
                <td style="text-align:center" colspan="2">
                    <asp:Label ID="lb1" runat="server" Text="Login" Font-Bold="True" ForeColor="#000000" Font-Size="Medium"></asp:Label><br />
                </td>
            </tr>
            <tr>
                <td style="text-align:center" colspan="2">
                    <asp:Label ID="Lb3" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label><br />
                </td>
            </tr>

            <tr>
                <td>

                    <asp:Label ID="Label1" runat="server" Text="Username " Font-Bold="True" Width="100px" BackColor="" ForeColor="#000000"></asp:Label>

                </td>
                <td>

                    <asp:TextBox ID="TextBox_user_name" runat="server" ForeColor="#993300" Width="180px"></asp:TextBox><br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Password " Font-Bold="True" Width="100px" BackColor="" ForeColor="#000000"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox_password" runat="server" ForeColor="#CC6600" TextMode="Password" Width="180px"></asp:TextBox><br />
                </td>
            </tr>

            <tr>
                <td style="text-align:center" colspan="2">
                    <br />
                    <asp:Button ID="btn_login" runat="server" Text="Login" Font-Bold="True"
                        BackColor="" OnClientClick="Validate()" OnClick="btn_login_Click" Style="height: 26px" /><br />
                </td>
            </tr>
        </table>
    </div>

    <%--   </form>

</body>

</html>--%>
</asp:Content>
