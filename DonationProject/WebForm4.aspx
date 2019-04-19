<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="DonationProject.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<style type="text/css">
.style1 {
width: 29px;
}
</style>
</head>
<body>
<form id="form2" runat="server">
<div>

<table align="center" >

<tr><td>select Date:<asp:DropDownList ID="DrpDate" runat="server">
<asp:ListItem>Date</asp:ListItem>
<asp:ListItem>01</asp:ListItem><asp:ListItem>02</asp:ListItem><asp:ListItem>03</asp:ListItem>
<asp:ListItem>04</asp:ListItem><asp:ListItem>05</asp:ListItem><asp:ListItem>06</asp:ListItem>
<asp:ListItem>07</asp:ListItem><asp:ListItem>08</asp:ListItem><asp:ListItem>09</asp:ListItem>
<asp:ListItem>10</asp:ListItem><asp:ListItem>11</asp:ListItem><asp:ListItem>12</asp:ListItem>
<asp:ListItem>13</asp:ListItem><asp:ListItem>14</asp:ListItem><asp:ListItem>15</asp:ListItem>
<asp:ListItem>16</asp:ListItem><asp:ListItem>17</asp:ListItem><asp:ListItem>18</asp:ListItem>
<asp:ListItem>19</asp:ListItem><asp:ListItem>20</asp:ListItem><asp:ListItem>21</asp:ListItem>
<asp:ListItem>22</asp:ListItem><asp:ListItem>23</asp:ListItem><asp:ListItem>24</asp:ListItem>
<asp:ListItem>25</asp:ListItem><asp:ListItem>26</asp:ListItem><asp:ListItem>27</asp:ListItem>
<asp:ListItem>28</asp:ListItem><asp:ListItem>29</asp:ListItem><asp:ListItem>30</asp:ListItem>
<asp:ListItem>31</asp:ListItem>
</asp:DropDownList>

<asp:DropDownList ID="DrpMonth" runat="server">
<asp:ListItem>Month</asp:ListItem>
<asp:ListItem>JAN</asp:ListItem><asp:ListItem>FEB</asp:ListItem><asp:ListItem>MAR</asp:ListItem>
<asp:ListItem>APR</asp:ListItem><asp:ListItem>MAY</asp:ListItem><asp:ListItem>JUN</asp:ListItem>
<asp:ListItem>JUL</asp:ListItem><asp:ListItem>AUG</asp:ListItem><asp:ListItem>SEP</asp:ListItem>
<asp:ListItem>OCT</asp:ListItem><asp:ListItem>NOV</asp:ListItem><asp:ListItem>DEC</asp:ListItem>
</asp:DropDownList>

<asp:DropDownList ID="DrpYear" runat="server" 
onselectedindexchanged="DrpYear_SelectedIndexChanged" AutoPostBack="true">
<asp:ListItem>Year</asp:ListItem>
<asp:ListItem>1978</asp:ListItem><asp:ListItem>1979</asp:ListItem><asp:ListItem>1980</asp:ListItem>
<asp:ListItem>1981</asp:ListItem><asp:ListItem>1982</asp:ListItem><asp:ListItem>1983</asp:ListItem>
<asp:ListItem>1984</asp:ListItem><asp:ListItem>1985</asp:ListItem><asp:ListItem>1986</asp:ListItem>
<asp:ListItem>1987</asp:ListItem><asp:ListItem>1988</asp:ListItem><asp:ListItem>1989</asp:ListItem>
<asp:ListItem>1990</asp:ListItem><asp:ListItem>1991</asp:ListItem><asp:ListItem>1992</asp:ListItem>
<asp:ListItem>1993</asp:ListItem><asp:ListItem>1994</asp:ListItem><asp:ListItem>1995</asp:ListItem>
<asp:ListItem>1996</asp:ListItem>
</asp:DropDownList></td><td class="style1"></td>
<td>Age : <asp:TextBox ID="txtAge" runat="server"></asp:TextBox> </td> </tr></table>
</div>
</form>
</body>
</html>
