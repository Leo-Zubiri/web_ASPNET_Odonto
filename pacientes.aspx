<%@ Page Title="" Language="C#" MasterPageFile="~/Sistema.Master" AutoEventWireup="true" CodeBehind="pacientes.aspx.cs" Inherits="ASPNET_Odonto.pacientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="sisContent" runat="server">
  
  <div class="container">
    <h1>Pacientes</h1> <br />
    <form>
      <div class="row">
        <div class="col">
          <div class="form-group">
            <label for="Name" class="">Nombre</label>
            <input type="text" class="form-control" placeholder="First name" id="Name">
          </div>
        </div>

        <div class="col">
          <div class="form-group">
           <label for="LastName" >Apellido</label>
           <input type="text" class="form-control" placeholder="Last name" id="LastName">
          </div>
        </div>
      </div> 
      <br />
      <div class="row">

          <div class="col">
            <div class="form-group">
              <label for="Street">Calle</label>
              <input type="text" class="form-control" placeholder="Street" id="Street">
            </div>
          </div>

          <div class="col">
            <div class="form-group">
              <label for="Number">Número de casa</label>
              <input type="number" class="form-control" placeholder="Number" id="Number">
            </div>
          </div>

          <div class="col">
            <div class="form-group">
              <label for="Col">Colonia</label>
              <input type="text" class="form-control" placeholder="Col" id="Col">
            </div>
          </div>

      </div>
      <br />
      <div class="row">

          <div class="col">
            <div class="form-group">
              <label for="City">Ciudad</label>
              <input type="text" class="form-control" placeholder="City" id="City">
            </div>
          </div>

          <div class="col">
            <div class="form-group">
              <label for="State">Estado</label>
              <input type="text" class="form-control" placeholder="State" id="State">
            </div>
          </div>

          <div class="col">
            <div class="form-group ">
              <label for="CP">CP</label>
              <input type="number" class="form-control" placeholder="Zip" id="CP">
            </div>
          </div>

      </div>
    </form>
  </div>
  <p>
    <br />
    IN DateNac date,
    IN Sex  char(1),
    IN Phone varchar(20),
    IN Pic mediumblob  <br />
    Button Registrar, y button Buscar
  </p>
 
</asp:Content>
