<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Doctora Polanco</title>

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
        <div class="col-md-3 left_col">
            <div class="left_col scroll-view">

                <!-- menu profile quick info -->
                <div class="profile clearfix">
                    <div class="profile_pic">
                        <img src="/images/foto.png" alt="..." class="img-circle profile_img">
                    </div>
                    <div class="profile_info">
                        <span>Bienvenida,</span>
                        <h2>${user.name} ${user.lastName}</h2>
                    </div>
                </div>
                <!-- /menu profile quick info -->

                <br/>

                <!-- sidebar menu -->
                <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                    <div class="menu_section">

                        <ul class="nav side-menu">
                            <li><a href="/"><i class="fa fa-home"></i> Inicio </a>

                            </li>
                            <li><a><i class="fa fa-user"></i> Pacientes <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="/newPatient">Nuevo Paciente</a></li>
                                    <li><a href="/patient">Listado de Pacientes</a></li>
                                </ul>
                            </li>
                        <#if (user.role) == "doctora" || (user.role) == "admin" >
                            <li><a href="/consultation"><i class="fa fa-edit"></i> Consultas <span class="fa fa-chevron-down"></span></a>


                            </li>
                        </#if>
                        <#if (user.role) == "secretaria" || (user.role) == "admin" >
                            <li><a><i class="fa fa-calendar"></i> Citas <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="/newAppointment">Nueva Cita</a></li>
                                    <li><a href="/appointment">Listado de Citas</a></li>
                                </ul>
                            </li>
                        </#if >

                        </ul>
                    </div>
                </div>
                <!-- /sidebar menu -->

                <!-- /menu footer buttons -->
            </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
            <div class="nav_menu">
                <nav>
                    <div class="nav toggle">
                        <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                    </div>

                    <ul class="nav navbar-nav navbar-right">
                        <li class="">
                            <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                <img src="/images/foto.png" alt="">${user.name} ${user.lastName}
                                <span class=" fa fa-angle-down"></span>
                            </a>
                            <ul class="dropdown-menu dropdown-usermenu pull-right">


                                <li><a href="/logout"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                            </ul>
                        </li>


                    </ul>
                </nav>
            </div>
        </div>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main" style="min-height: 1164px;">
            <div class="">
                <div class="page-title">
                    <div class="title_left">
                        <h3>Consulta </h3>
                    </div>

                </div>

                <div class="clearfix"></div>

                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <div class="x_content">
                                <div class="col-md-3 col-sm-3 col-xs-12 profile_left">
                                    <div class="profile_img">
                                        <div id="crop-avatar">
                                            <!-- Current avatar -->
                                            <img class="img-responsive avatar-view" src="/images/picture.jpg" alt="Avatar" title="Change the avatar">
                                        </div>
                                    </div>
                                    <h3>${consulta.appointment.patient.name}</h3>

                                </div>
                                <div class="col-md-9 col-sm-9 col-xs-12">

                                    <div class="profile_title">
                                        <div class="col-md-6">
                                            <h2>Información Consulta</h2>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="container">
                                            <div class="row">

                                                <div class="col-md-6">
                                                    <div class="profile_title">
                                                        <h2>Historial Salud</h2>
                                                    </div>
                                                    <h4><strong >Razon Visita: </strong> ${consulta.razonVisita}</h4>
                                                    <h4><strong >Inicio sintomas </strong> ${ consulta.inicioSintomas}</h4>
                                                    <h4><strong >Frecuencia sintomas</strong> ${ consulta.frecuenciaSintomas}</h4>
                                                    <h4><strong >Lugar Dolor </strong> ${ consulta.lugarDolor}</h4>
                                                    <h4><strong >Que lo hace sentir mejor </strong> ${ consulta.loHaceSentirMejor}</h4>
                                                    <h4><strong >Frecuencia dolor </strong> ${ consulta.frecuenciaDolor}</h4>
                                                    <h4><strong >Actividades dolor </strong> ${ consulta.actividadesDolor}</h4>
                                                    <h4><strong >TratamientoAnterior </strong> ${ consulta.cualTratamientoAnterior}</h4>
                                                    <h4><strong >Historial familiar con la misma condición </strong> ${ consulta.cualFamiliarMismaCondicion}</h4>
                                                </div>

                                                <div class="col-md-6">
                                                    <div class="profile_title">
                                                        <h2>Historial medico pasado</h2>
                                                    </div>
                                                    <h4><strong >Enfermedades serias </strong> ${consulta.cualEnfermedadSeria}</h4>
                                                    <h4><strong >Hospitalizaciones anteriores </strong> ${consulta.cualHospitalizacionesAnteriores}</h4>
                                                    <h4><strong>Operaciones Anteriores </strong> ${consulta.cualOperacionesAnteriores}</h4>
                                                    <h4><strong>Medicamentos </strong> ${consulta.cualMedicamentos}</h4>
                                                    <h4><strong> Historial familiar condicion similar </strong> ${consulta.historialFamiliarMismaCondicionHMP}</h4>

                                                </div>

                                            </div>
                                            <div class="row">
                                                <div class="profile_title">
                                                    <h2>Historial nacimiento</h2>
                                                </div>
                                                <div class="col-md-6">
                                                    <h4><strong >Lugar nacimiento</strong> ${consulta.lugarNacimiento}</h4>
                                                    <h4><strong >Peso (Libras) </strong> ${ consulta.pesoLbs}</h4>
                                                    <h4><strong >Peso (onz)</strong> ${ consulta.pesoOnz}</h4>
                                                    <h4><strong >Estatura </strong> ${consulta.estatura}</h4>
                                                    <h4><strong >Prematuro? </strong> <#if consulta.prematuro == true> si <#else> no </#if></h4>
                                                    <h4><strong >Cesaria? </strong> <#if consulta.cesarea ==true> si <#else> no </#if></h4>
                                                    <h4><strong >Cantidad de embarazos (Madre) </strong> ${consulta.cantidadEmbarazos}</h4>
                                                    <h4><strong >Cantidad de hijos (Madre) </strong> ${consulta.cantidadHijos}</h4>
                                                </div>
                                                <div class="profile_title">
                                                    <h2></h2>
                                                </div>
                                                <div class="col-md-6">
                                                    <h4><strong >Primera vez parado </strong> ${consulta.mesesSeParo}</h4>
                                                    <h4><strong >Primera vez caminando</strong> ${consulta.mesesCamino}</h4>
                                                    <h4><strong>Primera vez hablando </strong> ${consulta.mesesHablo}</h4>

                                                </div>

                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <h4><strong >Fiebre? </strong> ${consulta.fiebreDescripcion}</h4>
                                                    <h4><strong >Piel? </strong> ${ consulta.pielDescripcion}</h4>

                                                </div>
                                                <div class="col-md-6">
                                                    <h4><strong >Descripcion consulta </strong> ${consulta.description}</h4>
                                                    <h4><strong >Receta</strong> ${consulta.prescription}</h4>

                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
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


<!-- morris.js -->
<script src="/vendors/raphael/raphael.min.js"></script>
<script src="/vendors/morris.js/morris.min.js"></script>
<!-- DateJS -->
<script src="/vendors/DateJS/build/date.js"></script>
<!-- bootstrap-daterangepicker -->
<script src="/vendors/moment/min/moment.min.js"></script>
<script src="/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>


<script src="/vendors/jquery.tagsinput/src/jquery.tagsinput.js"></script>

<script>

    function onAddTag(tag) {
        alert("Added a tag: " + tag);
    }
    function onRemoveTag(tag) {
        alert("Removed a tag: " + tag);
    }
    function onChangeTag(input, tag) {
        alert("Changed a tag: " + tag);
    }
    $(document).ready(function() {
        $('#tags_1_tagsinput').tagsInput({
            width: 'auto'
        });
        $('#tags_2_tagsinput').tagsInput({
            width: 'auto'
        });
    });
</script>

<!-- Custom Theme Scripts -->

</body>
</html>
















