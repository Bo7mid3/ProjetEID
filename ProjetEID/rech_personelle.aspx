<%@ Page Language="C#" AutoEventWireup="true" CodeFile="rech_personelle.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CIN" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:TemplateField HeaderText="Select">
                        <ItemTemplate>
                            <asp:CheckBox ID="cbSelect" runat="server"></asp:CheckBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="CIN" HeaderText="CIN" ReadOnly="True" SortExpression="CIN" />
                    <asp:BoundField DataField="nom" HeaderText="nom" SortExpression="nom" />
                    <asp:BoundField DataField="prenom" HeaderText="prenom" SortExpression="prenom" />
                    <asp:BoundField DataField="specialite" HeaderText="specialite" SortExpression="specialite" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [personelle]"></asp:SqlDataSource>
            <asp:Button ID="supprimer" runat="server" Text="Supprimer" OnClick="Click_Button" />
        </div>
    </form>
</body>
</html>
