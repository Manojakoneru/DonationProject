<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="DonationProject.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="email" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="userName" HeaderText="userName" SortExpression="userName" />
            <asp:BoundField DataField="email" HeaderText="email" ReadOnly="True" SortExpression="email" />
            <asp:BoundField DataField="dateOfbirth" HeaderText="dateOfbirth" SortExpression="dateOfbirth" />
            <asp:CheckBoxField DataField="status" HeaderText="status" SortExpression="status" />
            <asp:BoundField DataField="schoolemail" HeaderText="schoolemail" SortExpression="schoolemail" />
        </Columns>
    </asp:GridView>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Logout" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TestDBConnectionString %>" DeleteCommand="DELETE FROM [childTable] WHERE [email] = @email" InsertCommand="INSERT INTO [childTable] ([userName], [email], [dateOfbirth], [status], [schoolemail]) VALUES (@userName, @email, @dateOfbirth, @status, @schoolemail)" SelectCommand="SELECT [userName], [email], [dateOfbirth], [status], [schoolemail] FROM [childTable]" UpdateCommand="UPDATE [childTable] SET [userName] = @userName, [dateOfbirth] = @dateOfbirth, [status] = @status, [schoolemail] = @schoolemail WHERE [email] = @email">
        <DeleteParameters>
            <asp:Parameter Name="email" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="userName" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="dateOfbirth" Type="String" />
            <asp:Parameter Name="status" Type="Boolean" />
            <asp:Parameter Name="schoolemail" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="userName" Type="String" />
            <asp:Parameter Name="dateOfbirth" Type="String" />
            <asp:Parameter Name="status" Type="Boolean" />
            <asp:Parameter Name="schoolemail" Type="String" />
            <asp:Parameter Name="email" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
