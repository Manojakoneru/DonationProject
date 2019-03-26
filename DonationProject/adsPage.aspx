<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adsPage.aspx.cs" Inherits="DonationProject.adsPage" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title></title>

</head>

<body>

    <form id="form1" runat="server">

    <div>

        <asp:ScriptManager ID="ScriptManager1" runat="server" />

        <asp:Timer ID="Timer1" Interval="1000" runat="server" />

        <asp:UpdatePanel ID="up1" runat="server">

            <Triggers>

                <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />

            </Triggers>

            <ContentTemplate>

                 <asp:AdRotator BorderWidth="1" ID="MyAds" runat="server" Width="400px" Height="246px" Style="text-align: center" DataSourceID="adsOnWebsite" />  
                        <asp:XmlDataSource ID="adsOnWebsite" runat="server" DataFile="~/Ads/advertisements.xml"></asp:XmlDataSource>  

            </ContentTemplate>

        </asp:UpdatePanel>

    </div>

    </form>

</body>

</html>

