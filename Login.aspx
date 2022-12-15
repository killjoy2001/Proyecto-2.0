<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Proyecto_Gimnasio.LoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="CSS/login.css" rel="stylesheet" />
    <title>Gimnasio UH</title>
    <style type="text/css">
        .auto-style1 {
            width: 199px;
            color: #FF0000;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <div class="auto-style2">
    <img id="img" src="Imágenes/Gym-Logo-Graphics-1-28.jpg" />
    <form id="form1" runat="server">
        <div id="login" class="auto-style2">
            <header class="auto-style2">
                <br />
                <span class="auto-style3">Gimnasio UH</span></header>
            <br />
            Correo<br />
            <asp:TextBox ID="tCorreo" runat="server"></asp:TextBox>
            <br />
            <br />
            Contraseña<br />
            <asp:TextBox ID="tContrasena" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="bIngresar" runat="server" OnClick="bIngresar_Click" Style="height: 26px" Text="Ingresar" />
            <br />
            <asp:Label ID="Label1" runat="server" CssClass="auto-style1"></asp:Label>
        </div>
    </form>
    </div>
</body>
</html>
