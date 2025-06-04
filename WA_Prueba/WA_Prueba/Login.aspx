<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WA_Prueba.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>MyHolyLib</title>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet' />
    <link href="/Content/login-style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <!-- Panel Izquierdo -->
            
            <div class="panel-left">
                <h2>MyHolyLib</h2>
                <h1>Bienvenido</h1>
                <img src="Images/Logo.png" alt="Logo" class="panel-image" />
            </div>
      
            <!-- Formulario de Inicio de Sesion -->
            <div class="form-box login">
                <asp:Panel ID="pnlLogin" runat="server">
                    <h1>Inicio de Sesión</h1>
                    <div class="input-box">
                        <asp:TextBox ID="txtLoginCodigo" runat="server" Placeholder="Correo" CssClass="form-control" ClientIDMode="Static"></asp:TextBox>
                        <i class='bx bxs-envelope'></i>
                    </div>
                    <div class="input-box">
                        <asp:TextBox ID="txtLoginPassword" runat="server" TextMode="Password" Placeholder="Contraseña" CssClass="form-control" ClientIDMode="Static"></asp:TextBox>
                        <i class='bx bxs-lock-alt'></i>
                    </div>
                    <div class="forgot-link">
                        ¿Olvidaste la contraseña? <a href="#" id="reset-password-btn">Reestablecer contraseña</a>
                    </div>
                    <asp:Button ID="btnLogin" runat="server" Text="Iniciar Sesión" CssClass="btn" OnClick="btnLogin_Click" />
                    <asp:Label ID="lblMensaje" runat="server" CssClass="error-message" Visible="false"></asp:Label>

                </asp:Panel>
            </div>

            <!-- Formulario para Reestablecer la contraseña -->
            <div class="form-box reset">
                <asp:Panel ID="pnlReset" runat="server">
                    <h1>Reestablecer contraseña</h1>
                    <div class="input-box">
                        <asp:TextBox ID="txtResetEmail" runat="server" Placeholder="Email" CssClass="form-control" ClientIDMode="Static"></asp:TextBox>
                        <i class='bx bxs-envelope'></i>
                    </div>
                    <asp:Button ID="btnReset" runat="server" Text="Enviar Correo" CssClass="btn" OnClick="btnReset_Click" />
                    <button type="button" href="#" class="btn-back-to-login back-to-login">Volver</button>

                </asp:Panel>
            </div>
        </div>

        <!-- JS scripts -->
        <script src="Scripts/loginScript.js"></script>
    </form>
</body>
</html>

