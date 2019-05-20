<%--<%@ Page Language="C#" AutoEventWireup="true"  CodeBehind="Register.aspx.cs" Inherits="DonationProject.WebForm3" %>--%>
<%@ Page Title="TechGames" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="DonationProject.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://code.jquery.com/jquery-1.11.3.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $("#RadioButtonList1").click(function () {
            //loop through each item in RadioButtonList
            $("[id*=RadioButtonList1] input").each(function () {
                //check if value of selected item in RadioButtonList is one or not
                if ($('#RadioButtonList1 input:checked').val() == "1") {
                    //if so then show textbox
                    $("#txtDtOfBirth").show();
                    $("#txtAge").show();
                     $("#Label7").show();
                      $("#Label8").show();
                    $("#Label5").hide();
                    $("#TextBox4").hide();
                    // $("#RequiredFieldValidator5").hide();
                } else {
                    //if not then hide textbox
                    $("#txtDtOfBirth").hide();
                    $("#txtAge").hide();
                    $("#Label7").hide();
                    $("#Label8").hide();
                    $("#matternumb").hide();
                    $("#Label4").hide();
                    $("#RequiredFieldValidator1").hide();
                    $("#Label5").show();
                    $("#TextBox4").show();
                    //$("#RequiredFieldValidator5 );
                    //$("#RequiredFieldValidator1");
                }
            });
        });
    });
    $(function () {
        // When your textbox is changed (i.e. a date of birth is set)
        $("#<%= txtDtOfBirth.ClientID %>").change(function () {
            $("#<%= txtAge.ClientID %>").val(_calculateAge(new Date($(this).val())));
            var Age = $("#txtAge").val()
                    if (Age > 18 && $('#RadioButtonList1 input:checked').val() == "1" ) {
                        $("#matternumb").hide();
                        $("#Label4").hide();
                        //  $("#RequiredFieldValidator1").show();
                    }
                    else {
                        $("#matternumb").show();
                        $("#Label4").show();
                    }
        });
    });
    // Define a function to calculate age via a birthdate (http://stackoverflow.com/a/21984136/557445)
    function _calculateAge(birthday) { // birthday is a date
        var ageDifMs = Date.now() - birthday.getTime();
        var ageDate = new Date(ageDifMs); // miliseconds from epoch
        return Math.abs(ageDate.getUTCFullYear() - 1970);
    }
</script>
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

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head runat="server">
    <title>Register</title>
</head>
<body>
    <form id="form1" runat="server">--%>
        <div id="div1" runat="server">
            <table align="center">
                <tr>
                    <td colspan="3">
                        <h3>Registration using Role</h3>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Username " Font-Bold="True" Width="100px" BackColor="" ForeColor=""></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_UserName" runat="server" Width="150px"></asp:TextBox>
                    </td>
                    <td colspan="2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter UserName" ControlToValidate="txt_UserName"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td >
                        <asp:Label ID="Label2" runat="server" Text="Password " Font-Bold="True" Width="100px" BackColor="" ForeColor=""></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_Password" TextMode="Password" runat="server"
                            Width="150px"></asp:TextBox>
                    </td>
                    <td colspan="2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Password" ControlToValidate="txt_Password"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Email " Font-Bold="True" Width="100px" BackColor="" ForeColor=""></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="email" runat="server"
                            Width="150px"></asp:TextBox>
                    </td>
                    <td colspan="2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter Email" ControlToValidate="email"></asp:RequiredFieldValidator>
                    </td>
                </tr>
               
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Role " Font-Bold="True" Width="100px" Height="100px" BackColor="" ForeColor=""></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" onclick="GetRadioButtonValue();">
                            <asp:ListItem Value="1">children</asp:ListItem>
                            <asp:ListItem Value="2">Parent</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td colspan="2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Select role" ControlToValidate="RadioButtonList1"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Date of Birth " Style="display: none" Font-Bold="True" Width="100px" BackColor="" ForeColor=""></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDtOfBirth" runat="server" Style="display: none" Width="150px"></asp:TextBox>

                    </td>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="Age " Style="display: none" Font-Bold="True" Width="100px" BackColor="" ForeColor=""></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtAge" runat="server" Style="display: none" Width="60" ></asp:TextBox>

                    </td>
                   <%-- <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter date of birth" ControlToValidate="txtDtOfBirth"></asp:RequiredFieldValidator>
                    </td>--%>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="School Email " Font-Bold="True" Width="100px" Style="display: none" BackColor="" ForeColor=""></asp:Label>
                    </td>
                    <td colspan="3">
                        <asp:TextBox ID="matternumb" runat="server" Style="display: none"></asp:TextBox>
                    </td>

                    <%--<td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter School email" ControlToValidate="matternumb" ></asp:RequiredFieldValidator>
                    </td>--%>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Child Email " Font-Bold="True" Width="100px" BackColor="" ForeColor="" Style="display: none"></asp:Label>
                    </td>
                    <td colspan="3">
                        <asp:TextBox ID="TextBox4" runat="server" Width="150px" Style="display: none"></asp:TextBox>

                    </td>

                    <%--           <td><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter children email" ControlToValidate="TextBox4"></asp:RequiredFieldValidator> </td>

                    --%>
                </tr>
                <tr>
                    <td></td>

                    <td>

                        <asp:Button ID="btn_register" runat="server" BackColor="" Text="Register"
                            OnClick="btn_register_Click" />



                    </td>

                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Login.aspx"
                            ForeColor="#663300">Click here to Login</asp:HyperLink></td>



                </tr>

                <tr>

                    <td align="center" colspan="4">

                        <asp:Label ID="lblmsg" runat="server"></asp:Label>

                    </td>

                </tr>

            </table>





        </div>

<%--    </form>

</body>

</html>--%>
<script type="text/javascript">

    function GetRadioButtonValue() {
            //Access the radiobuttons in RadioButtonList control
            var radioButtons = document.getElementsByName('<%= RadioButtonList1.UniqueID %>');
            //loop through each controls
            for (var x = 0; x < radioButtons.length; x++) {
                //check if current items is seleccted
                if (radioButtons[x].checked) {
                    //check if the value selcted  is Country1
                    if (radioButtons[x].value == '1') {
                        //if so then display the textbox control
                        document.getElementById('<%= Label7.ClientID %>').style.display = 'block';
                        document.getElementById('<%= txtDtOfBirth.ClientID %>').style.display = 'block';
                        document.getElementById('<%= Label8.ClientID %>').style.display = 'block';
                        document.getElementById('<%= txtAge.ClientID %>').style.display = 'block';
                        document.getElementById('<%= Label5.ClientID %>').style.display = 'none';
                        document.getElementById('<%= TextBox4.ClientID %>').style.display = 'none';
                    }
                    else if (radioButtons[x].value == '2') {
                        //if not then hide the textbox control
                        document.getElementById('<%= Label7.ClientID %>').style.display = 'none';
                        document.getElementById('<%= txtDtOfBirth.ClientID %>').style.display = 'none';
                        document.getElementById('<%= Label8.ClientID %>').style.display = 'none';
                        document.getElementById('<%= txtAge.ClientID %>').style.display = 'none';
                        document.getElementById('<%= Label4.ClientID %>').style.display = 'none';
                        document.getElementById('<%= matternumb.ClientID %>').style.display = 'none';
                        document.getElementById('<%= Label5.ClientID %>').style.display = 'block';
                        document.getElementById('<%= TextBox4.ClientID %>').style.display = 'block';
                    }
                }
            }
    }


    $(function () {
        // When your textbox is changed (i.e. a date of birth is set)
        $("#<%= txtDtOfBirth.ClientID %>").change(function () {
            $("#<%= txtAge.ClientID %>").val(_calculateAge(new Date($(this).val())));
            var Age = document.getElementById('<%= txtAge.ClientID %>').value;
            var radioBtnVal = document.getElementsByName('<%= RadioButtonList1.UniqueID %>')[0].value;
            
            <%--document.getElementsByName('<%= RadioButtonList1.UniqueID %>').value;--%>

                    if (Age > 18 && radioBtnVal == 1 ) {
                        document.getElementById('<%= matternumb.ClientID %>').style.display = 'none';
                        document.getElementById('<%= Label4.ClientID %>').style.display = 'none';
                        //  $("#RequiredFieldValidator1").show();
                    }
                    else {
                        document.getElementById('<%= matternumb.ClientID %>').style.display = 'block';
                        document.getElementById('<%= Label4.ClientID %>').style.display = 'block';
                    }
        });
    });
    // Define a function to calculate age via a birthdate (http://stackoverflow.com/a/21984136/557445)
    function _calculateAge(birthday) { // birthday is a date
        var ageDifMs = Date.now() - birthday.getTime();
        var ageDate = new Date(ageDifMs); // miliseconds from epoch
        return Math.abs(ageDate.getUTCFullYear() - 1970);
    }
</script>

  </asp:Content>