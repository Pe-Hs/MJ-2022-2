<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaster.Master" AutoEventWireup="true" CodeBehind="frmProveedor.aspx.cs" Inherits="SistemaVentas.frmProveedor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
   <script>

       function validaNumericos(event) {
           if (event.charCode >= 48 && event.charCode <= 57) {
               return true;
           }
           return false;
       }

       function soloLetras(e) {
           tecla = (document.all) ? e.keyCode : e.which;

           //Tecla de retroceso para borrar, siempre la permite
           if (tecla == 8) {
               return true;
           }

           // Patrón de entrada, en este caso solo acepta numeros y letras
           patron = /[A-Za-z ]/;
           tecla_final = String.fromCharCode(tecla);
           return patron.test(tecla_final);
       }

       function numerosLetras(e) {
           tecla = (document.all) ? e.keyCode : e.which;

           //Tecla de retroceso para borrar, siempre la permite
           if (tecla == 8) {
               return true;
           }

           // Patrón de entrada, en este caso solo acepta numeros y letras
           patron = /[A-Za-z0-9 ]/;
           tecla_final = String.fromCharCode(tecla);
           return patron.test(tecla_final);
       }

       function Email(str) {
           var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
           if (!re.test(str))
               swal("Mensaje", "Ingrese formato adecuado de email", "warning");
       }

   </script>

        <div class="row">
            <div class="col-sm-12">
               <div class="card">
                  <div class="card-header">
                    Mantenedor Proveedores
                  </div>
                  <div class="card-body">
                        <div class="row">
                            <div class="col-sm-2">
                                <button id="btnNuevoProveedor" type="button" class="btn btn-sm btn-success">Nuevo</button>
                            </div>
                        </div>
                      <hr />
                        <div class="row mt-3">
                            <div class="col-sm-12">
                                <table id="tbProveedor" class="table table-striped table-bordered nowrap" style="width:100%">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>RUC</th>
                                            <th>Razon Social</th>
                                            <th>Telefono</th>
                                            <th>Correo</th>
                                            <th>Direccion</th>
                                            <th>Estado</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                  </div>
                  <div class="card-footer">
                  </div>
                </div>
            </div>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="modalrol" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Proveedor</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <form>
              <input id="txtIdProveedor" class="model" name="IdUsuario" value="0" type="hidden" />
              <div class="form-group row">
                <label for="staticEmail" class="col-sm-2 col-form-label col-form-label-sm">RUC</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control form-control-sm model" id="txtRuc" maxlength="12" onkeypress="return validaNumericos(event)" name="RUC">
                </div>
              </div>
              <div class="form-group row">
                <label for="staticEmail" class="col-sm-2 col-form-label col-form-label-sm">Razón Social</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control form-control-sm model" id="txtRazonSocial" onkeypress="return soloLetras(event)" name="Razón Social">
                </div>
              </div>
              <div class="form-group row">
                <label for="staticEmail" class="col-sm-2 col-form-label col-form-label-sm">Telefono</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control form-control-sm model" id="txtTelefono" maxlength="9" onkeypress="return validaNumericos(event)" name="Telefono">
                </div>
              </div>
              <div class="form-group row">
                <label for="staticEmail" class="col-sm-2 col-form-label col-form-label-sm">Correo</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control form-control-sm model" id="txtCorreo" onblur="return Email(this.value)" name="Correo">
                </div>
              </div>
              
              <div class="form-group row">
                <label for="inputPassword" class="col-sm-2 col-form-label col-form-label-sm">Direccion</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control form-control-sm model" id="txtDireccion" name="Direccion">
                </div>
              </div>

              <div class="form-group row">
                <label for="inputPassword" class="col-sm-2 col-form-label col-form-label-sm">Activo</label>
                <div class="col-sm-10">
                    <select class="form-control form-control-sm model" id="cboEstado" name="Activo">
                        <option value="1">Activo</option>
                        <option value="0">No Activo</option>
                    </select>
                </div>
              </div>


            </form>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-sm btn-secondary" data-dismiss="modal">Cerrar</button>
            <button id="btnGuardarCambios" type="button" class="btn btn-sm btn-primary">Guardar Cambios</button>
          </div>
        </div>
      </div>
    </div>
    <script src="Controlador/frmProveedor/frmProveedor.js"></script>
</asp:Content>
