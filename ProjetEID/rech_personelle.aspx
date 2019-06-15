<%@ Page Language="C#" AutoEventWireup="true" CodeFile="rech_personelle.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CIN" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="CIN" HeaderText="CIN" ReadOnly="True" SortExpression="CIN" />
                <asp:BoundField DataField="nom" HeaderText="nom" SortExpression="nom" />
                <asp:BoundField DataField="prenom" HeaderText="prenom" SortExpression="prenom" />
                <asp:BoundField DataField="specialite" HeaderText="specialite" SortExpression="specialite" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [personelle]"></asp:SqlDataSource>

    </form>
</body>
</html>
