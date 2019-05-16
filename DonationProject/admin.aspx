<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="DonationProject.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <br />
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="email" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="userName" HeaderText="userName" SortExpression="userName" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                <asp:BoundField DataField="email" HeaderText="email" ReadOnly="True" SortExpression="email" />
                <asp:BoundField DataField="role" HeaderText="role" SortExpression="role" />
                <asp:BoundField DataField="dateOfbirth" HeaderText="dateOfbirth" SortExpression="dateOfbirth" />
                <asp:CheckBoxField DataField="status" HeaderText="status" SortExpression="status" />
                <asp:BoundField DataField="schoolemail" HeaderText="schoolemail" SortExpression="schoolemail" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TestDBConnectionString %>" DeleteCommand="DELETE FROM [childTable] WHERE [email] = @email" InsertCommand="INSERT INTO [childTable] ([userName], [password], [email], [role], [dateOfbirth], [status], [schoolemail]) VALUES (@userName, @password, @email, @role, @dateOfbirth, @status, @schoolemail)" SelectCommand="SELECT * FROM [childTable]" UpdateCommand="UPDATE [childTable] SET [userName] = @userName, [password] = @password, [role] = @role, [dateOfbirth] = @dateOfbirth, [status] = @status, [schoolemail] = @schoolemail WHERE [email] = @email">
            <DeleteParameters>
                <asp:Parameter Name="email" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="userName" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="role" Type="String" />
                <asp:Parameter Name="dateOfbirth" Type="String" />
                <asp:Parameter Name="status" Type="Boolean" />
                <asp:Parameter Name="schoolemail" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="userName" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="role" Type="String" />
                <asp:Parameter Name="dateOfbirth" Type="String" />
                <asp:Parameter Name="status" Type="Boolean" />
                <asp:Parameter Name="schoolemail" Type="String" />
                <asp:Parameter Name="email" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
