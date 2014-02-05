<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="RaknaVersaler.Default" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hur många versaler?</title>
    <link rel="stylesheet" type="text/css" href="style.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <p class="rubrik">Räkna versaler</p>
        <asp:TextBox ID="MainTextBox" runat="server" TextMode="MultiLine"></asp:TextBox>
                
        <asp:Button ID="CountButton" runat="server" Text="Räkna versaler" OnClick="CountButton_Click" CssClass="knapp" />
        
        <asp:Label ID="Resultat" runat="server" Text="" CssClass="resultat"></asp:Label>
        
    </div>
    </form>
</body>
</html>
