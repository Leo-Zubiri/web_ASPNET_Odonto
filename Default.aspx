<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ASPNET_Odonto.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    
    <!-- Source bootswatch  https://bootswatch.com/quartz/ -->   
    <!-- Source bootswatch  https://bootswatch.com/journal/  --> 
    
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <!-- Bootstrap CSS -->
    <!-- <link rel="stylesheet" href="https://bootswatch.com/5/quartz/bootstrap.min.css"> -->
    <!-- <link rel="stylesheet" href="https://bootswatch.com/5/journal/bootstrap.min.css"> -->
    <!-- <link rel="stylesheet" href="css/bootstrap.min.css"> -->
    <link rel="stylesheet" href="css/journal_bootstrap.min.css"/>
    <link rel="stylesheet" href="css/signin.css"/>
    <link rel="stylesheet" href="css/personal.css"/>

    <title>OdonTam</title>
</head>

<body class="text-center">
    
    <div class="row">      
      <img src="img/banner_03.jpg" alt=""/> 

      <main class="form-signin">
        <form id="form_login" runat="server">                  
          <h3 class="mb-3 fw-normal">Ingrese su usuario y contraseña</h3>      
          
          <div class="form-floating">
            <asp:TextBox ID="floatingInput" runat="server" placeholder="Usuario" CssClass="form-control"></asp:TextBox>
            <label for="floatingInput">Usuario</label>
          </div>
        
          <div class="form-floating">
            <asp:TextBox  ID="floatingPassword" runat="server" placeholder="Password" CssClass="form-control"></asp:TextBox>
            <label for="floatingPassword">Contraseña</label>
          </div>
          
          <!-- <div class="checkbox mb-3">
            <label>
              <input type="checkbox" value="recordar"> Recordar
            </label>
          </div> -->
          <asp:Label runat="server" ID="lblLog" CssClass="alert-danger"></asp:Label>
          <br />
          <br />
          <asp:Button ID="BtnLogin" CssClass="w-100 btn btn-lg btn-primary" runat="server" Text="Sign in" OnClick="BtnLogin_Click"/>
          <p class="mt-5 mb-3 text-muted">UAT - BCHSZ</p>
        </form>
      </main>
    
    </div>

</body>
</html>
