<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IniciarSesion.aspx.cs" Inherits="SistemaVentas.IniciarSesion" %>

<!DOCTYPE html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>Inciar Sesion</title>
    <link href="css/IniciarSesion/Styles.css" rel="stylesheet" />

    <link href="Assets/Plugins/bootstrap.4.5.2/bootstrap.min.css" rel="stylesheet" />    
    <link href="Assets/Plugins/Simple_Line_Icons/simple-line-icons.min.css" rel="stylesheet" />
    <link href="Assets/Plugins/bootstrap-icons-1.2.2/font/bootstrap-icons.css" rel="stylesheet" />
    <script src="Assets/Plugins/jquery/jquery.3.5.1.min.js"></script>
    <script src="Assets/Plugins/bootstrap.4.5.2/bootstrap.min.js"></script>

</head>

<body>

    <section class="ftco-section">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6 text-center mb-5">
                    
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-md-7 col-lg-5">
                    <div class="wrap">
                        <div class="img" style="background-image: url(img/logo.png);"></div>
                        <div class="login-wrap p-4 p-md-5">
                            <div class="d-flex">
                                <div class="w-5">
                                    <h3 class="mb-4">Inciar Sesion</h3>
                                </div>
                            </div>
                            <form>
                                <div class="form-group mt-3">
                                    <input type="text" class="form-control item" id="username" placeholder="Usuario" value="Admin"/>                                  
                                </div>
                                <div class="form-group">
                                    <input type="password" class="form-control item" id="password" placeholder="Contraseña" value="Admin123"/>
                                </div>
                                <div class="form-group">
                                    <button type="submit" id="btnIniciarSesion" class="form-control btn btn-primary rounded submit px-3">Iniciar</button>
                                </div>
                               
                            </form>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


<%--    <div class="ftco-section">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-7 col-lg-5"></div>
                <div class="col-md-7 col-lg-5">
                    <div class="wrap">
				        <div class="img" style="background-image: url('../img/logo.png');"></div>
                        <div class="login-wrap p-4 p-md-5">
                            <div class="d-flex">
                                <div class="w-100">
			      			        <h3 class="mb-4">Iniciar Sesion</h3>
			      		        </div>
                            </div>
                            <form>
                                <div class="form-group">
                                    <input type="text" class="form-control item" id="username" placeholder="Usuario" value="Admin"/>
                                </div>
                                <div class="form-group">
                                    <input type="password" class="form-control item" id="password" placeholder="Contraseña" value="Admin123"/>
                                    <span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
                                </div>
                                <div class="form-group">
                                    <button id="btnIniciarSesion" type="button" class="form-control btn btn-primary rounded submit px-3">Iniciar Sesión</button>
                                </div>
                                </form>
                        </div>
                    </div>
                </div>
            </div>
         </div>
    </div>--%>

    <script src="Controlador/IniciarSesion/IniciarSesion.js"></script>
    <script src="Controlador/Utilidades.js"></script>
    <script src="Assets/Plugins/loadingoverlay/loadingoverlay.js"></script>

    <link href="Assets/Plugins/sweetalert2/sweetalert.css" rel="stylesheet" />
    <script src="Assets/Plugins/sweetalert2/sweetalert.js"></script>
</body>
</html>
