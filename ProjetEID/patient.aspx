<%@ Page Language="C#" AutoEventWireup="true" CodeFile="patient.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CIN" DataSourceID="SqlDataSource1" OnSelectedIndexChanging="Select_Patient">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="CIN" HeaderText="CIN" ReadOnly="True" SortExpression="CIN" />
                    <asp:BoundField DataField="nom" HeaderText="nom" SortExpression="nom" />
                    <asp:BoundField DataField="prenom" HeaderText="prenom" SortExpression="prenom" />
                    <asp:BoundField DataField="CIN_med" HeaderText="CIN_med" SortExpression="CIN_med" />
                    <asp:BoundField DataField="ant" HeaderText="ant" SortExpression="ant" />
                    <asp:BoundField DataField="nss" HeaderText="nss" SortExpression="nss" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [patient]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
