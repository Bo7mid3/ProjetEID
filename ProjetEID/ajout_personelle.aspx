﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ajout_personelle.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ajout</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>cin</td>
                    <td>
                        <asp:TextBox ID="cin" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>nom</td>
                    <td>
                        <asp:TextBox ID="nom" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style1">prenom</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="prenom" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>specialite</td>
                    <td>
                        <asp:TextBox ID="specialite" runat="server"></asp:TextBox></td>
                </tr>
            </table>
            <asp:Button ID="submit" runat="server" Text="soumettre" OnClick="Submit_Click" />
        </div>
    </form>
</body>
</html>
