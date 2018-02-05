<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nuevo Paciente</title>

    <link href="/css/index.css" rel="stylesheet">

    <!-- Bootstrap -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="/css/nprogress.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="/css/custom.min.css" rel="stylesheet">

</head>
<body class="nav-md">
<div class="container body">
    <div class="main_container">
    <#include "sidebar.ftl">

        <!-- top navigation -->
    <#include "topNavigation.ftl">
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
            <div class="">
                <div class="row">
                    <div class="col-md-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>Nuevo Paciente</h2>

                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">

                                <br>
                                <form id="demo-form2" data-parsley-validate="" class="form-horizontal form-label-left" method="post" action="/newPatientPost">


                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Nombre<span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input type="text" id="first-name" required="required" name="name" class="form-control col-md-7 col-xs-12">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Apellido<span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input type="text" id="last-name" name="lastName" required="required" class="form-control col-md-7 col-xs-12">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="cedula" class="control-label col-md-3 col-sm-3 col-xs-12">Cédula</label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input id="cedula" class="form-control col-md-7 col-xs-12" type="text" name="cedula">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="nacionalidad" class="control-label col-md-3 col-sm-3 col-xs-12">Nacionalidad</label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <select id="nacionalidad" name="nacionalidad" class="form-control col-md-7 col-xs-12" onchange="showDiv(this)">
                                                <option selected disabled>Seleccione</option>
                                                <option value="Canadiense">Canadiense</option>
                                                <option value="Colombiana">Colombiana</option>
                                                <option value="Cubana">Cubana</option>
                                                <option value="Dominicna">Dominicana</option>
                                                <option value="Española">Española</option>
                                                <option value="Estadounidense">Estadounidense</option>
                                                <option value="Europea">Europea</option>
                                                <option value="Haitiana">Haitiana</option>
                                                <option value="Puertorriqueña">Puertorriqueña</option>
                                                <option value="Venezolana">Venezolana</option>
                                                <option value="1">Otra</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group" id="otraNacionalidad" hidden>
                                        <label for="nacionalidad2" class="control-label col-md-3 col-sm-3 col-xs-12">Otra</label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input id="nacionalidad2" class="form-control col-md-7 col-xs-12" type="text" name="nacionalidad2">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="birthday" class="control-label col-md-3 col-sm-3 col-xs-12">Fecha Nacimiento</label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input id="birthday" class="form-control col-md-7 col-xs-12" type="text" name="birthdate" placeholder="dd/mm/aaaa">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="gender" class="control-label col-md-3 col-sm-3 col-xs-12">Género</label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <select id="gender" name="gender" class="form-control col-md-7 col-xs-12">
                                                <option disabled selected>
                                                    Seleccione
                                                </option>
                                                <option value="f">
                                                    Femenino
                                                </option>
                                                <option value="m">
                                                    Masculino
                                                </option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="telefono" class="control-label col-md-3 col-sm-3 col-xs-12">Teléfono</label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input id="telefono" class="telefono form-control col-md-7 col-xs-12" type="text" name="telefono">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="celular" class="control-label col-md-3 col-sm-3 col-xs-12">Celular</label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input id="celular" class="telefono form-control col-md-7 col-xs-12" type="text" name="celular">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="direccion" class="control-label col-md-3 col-sm-3 col-xs-12">Dirección</label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input id="direccion" class="form-control col-md-7 col-xs-12" type="text" name="direccion">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="ciudad" class="control-label col-md-3 col-sm-3 col-xs-12">Ciudad</label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input id="ciudad" class="form-control col-md-7 col-xs-12" type="text" name="ciudad">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="provincia" class="control-label col-md-3 col-sm-3 col-xs-12">Provincia</label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input id="provincia" class="form-control col-md-7 col-xs-12" type="text" name="provincia">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="quienRefirio" class="control-label col-md-3 col-sm-3 col-xs-12">¿Quién lo refirió?</label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input id="quienRefirio" class="form-control col-md-7 col-xs-12" type="text" name="quienRefirio">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="emergenciaNombre" class="control-label col-md-3 col-sm-3 col-xs-12">Por emergencia, notificar a</label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input id="emergenciaNombre" class="form-control col-md-7 col-xs-12" type="text" name="emergenciaNombre">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="emergenciaTelefono" class="control-label col-md-3 col-sm-3 col-xs-12">Teléfono Contacto Emergencia</label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input id="emergenciaTelefono" class="telefono form-control col-md-7 col-xs-12" type="text" name="emergenciaTelefono">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="planMedico" class="control-label col-md-3 col-sm-3 col-xs-12">Plan Médico</label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <select id="planMedico" name="planMedico" class="form-control col-md-7 col-xs-12">
                                                <option selected disabled>Seleccione</option>
                                                <option value="Asegurado">Asegurado</option>
                                                <option value="Privado">Privado</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div id="menor">
                                        <div class="form-group">
                                            <hr>
                                            <label for="encargadoMenor" class="control-label col-md-3 col-sm-3 col-xs-12">Menor de Edad:</label>
                                        </div>
                                        <div class="form-group">
                                            <label for="encargadoMenor" class="control-label col-md-3 col-sm-3 col-xs-12">Encargado</label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input id="encargadoMenor" class="form-control col-md-7 col-xs-12" type="text" name="encargadoMenor">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="encargadoTelefono" class="control-label col-md-3 col-sm-3 col-xs-12">Teléfono Encargado</label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input id="encargadoTelefono" class="telefono form-control col-md-7 col-xs-12" type="text" name="encargadoTelefono">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="ln_solid"></div>
                                    <div class="form-group">
                                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                            <button type="submit" class="btn btn-success">Guardar</button>
                                        </div>
                                    </div>

                                </form>

                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <!-- /page content -->



        <!-- footer content -->
        <footer>
            <div class="pull-right">

            </div>
            <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
    </div>
</div>

<!-- jQuery -->
<script src="/vendors/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="/vendors/fastclick/lib/fastclick.js"></script>
<!-- NProgress -->
<script src="/vendors/nprogress/nprogress.js"></script>
<!-- Chart.js -->
<script src="/vendors/Chart.js/dist/Chart.min.js"></script>
<!-- jQuery Sparklines -->
<script src="/vendors/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
<!-- morris.js -->
<script src="/vendors/raphael/raphael.min.js"></script>
<script src="/vendors/morris.js/morris.min.js"></script>
<!-- gauge.js -->
<script src="/vendors/gauge.js/dist/gauge.min.js"></script>
<!-- bootstrap-progressbar -->
<script src="/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
<!-- Skycons -->
<script src="/vendors/skycons/skycons.js"></script>
<!-- Flot -->
<script src="/vendors/Flot/jquery.flot.js"></script>
<script src="/vendors/Flot/jquery.flot.pie.js"></script>
<script src="/vendors/Flot/jquery.flot.time.js"></script>
<script src="/vendors/Flot/jquery.flot.stack.js"></script>
<script src="/vendors/Flot/jquery.flot.resize.js"></script>
<!-- Flot plugins -->
<script src="/vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
<script src="/vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
<script src="/vendors/flot.curvedlines/curvedLines.js"></script>
<!-- DateJS -->
<script src="/vendors/DateJS/build/date.js"></script>
<!-- bootstrap-daterangepicker -->
<script src="/vendors/moment/min/moment.min.js"></script>
<script src="/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>

<!-- Custom Theme Scripts -->

<script src="/build/js/custom.min.js"></script>

<!--MaskedInput Plugin-->
<script src="/js/jquery.maskedinput.js" type="text/javascript"></script>
<script src="/js/inputsValidation.js" type="text/javascript"></script>

</body>
</html>