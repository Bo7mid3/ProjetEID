<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>Identifiant</td>
                    <td>
                        <asp:TextBox ID="userid" runat="server"></asp:TextBox> 
                    </td>
                </tr>
                <tr>
                    <td>Mot De Passe</td>
                    <td>
                        <asp:TextBox ID="password" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="submit" runat="server" Text="Soumettre" OnClick="Submit_Form" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
    <p>test</p>
    <p>test</p>
    <p>test</p>
</body>
</html>
