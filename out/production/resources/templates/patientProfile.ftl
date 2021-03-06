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
                        <h3>Perfil del Paciente</h3>
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
                                            <img class="img-responsive avatar-view" src="/images/fotoP.png" alt="Avatar" title="Change the avatar">
                                        </div>
                                    </div>
                                    <h3>${appointment.patient.name}</h3>

                                </div>
                                <div class="col-md-9 col-sm-9 col-xs-12">

                                    <div class="profile_title">
                                        <div class="col-md-6">
                                            <h2>Información Personal</h2>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="container">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <h4><strong >Nombre: </strong> ${appointment.patient.name}</h4>
                                                    <h4><strong >Apellido: </strong> ${appointment.patient.lastName}</h4>
                                                    <h4><strong >Condiciones: </strong> </h4>
                                                    <h4><strong >Fecha de nacimiento: </strong> ${appointment.patient.birthdate}</h4>
                                                    <h4><strong >Cedula: </strong> ${appointment.patient.ID}</h4>
                                                    <h4><strong >Numero de telefono: </strong> ${appointment.patient.phoneNumber}</h4>
                                                    <h4><strong >Numero de celular: </strong> ${appointment.patient.cellphone}</h4>
                                                </div>
                                                <div class="col-md-6">
                                                    <h4><strong >Genero: </strong> <#if appointment.patient.gender == "f"> Femenino  <#else> Masculino </#if></h4>
                                                    <h4><strong >Nacionalidad: </strong> ${appointment.patient.nationality}</h4>
                                                    <h4><strong>Provincia: </strong> ${appointment.patient.province}</h4>
                                                    <h4><strong>City: </strong> ${appointment.patient.city}</h4>
                                                    <h4><strong>Direccion: </strong> ${appointment.patient.direction}</h4>
                                                    <h4><strong>Referenciado por: </strong> ${appointment.patient.reference}</h4>
                                                    <h4><strong>Contacto de emergencia: </strong> ${appointment.patient.emergencyName} ${appointment.patient.emergencyPhoneNumber} </h4>
                                                    <h4><strong>Tutor: </strong> ${appointment.patient.tutor} ${appointment.patient.tutorPhoneNumber}</h4>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                </div>
                        </div>
                    </div>

                </div>
                <div class="row" role="tabpanel" data-example-id="togglable-tabs">
                    <ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
                        <li role="presentation" class="active"><a href="#tab_content1" role="tab" id="profile-tab" data-toggle="tab" aria-expanded="false">Realizar consulta</a>
                        </li>
                        <li role="presentation" class=""><a href="#tab_content2" id="home-tab" role="tab" data-toggle="tab" aria-expanded="true">Historial de consultas</a>
                        </li>

                    </ul>
                    <div id="myTabContent" class="tab-content">

                        <div role="tabpanel" class="tab-pane fade active in" id="tab_content1" aria-labelledby="profile-tab">

                            <!-- start user projects -->
                            <div class="col-md-12">
                                <div class="x_panel">
                                    <div class="x_content">

                                        <form id="nuevaConsulta" data-parsley-validate="" class="form-horizontal form-label-left" method="post" action="/newConsultationPost/${appointment.code}">

                                            <div class="row">
                                                <div class="profile_title">
                                                    <div class="col-md-6">
                                                        <h2>Historial de Salud</h2>
                                                    </div>
                                                </div>

                                                <br>
                                                <div class="form-group">
                                                    <label class="control-label col-md-3 col-sm-3 col-xs-3" for="razonVisita">Razón de su visita: <span class="required">*</span></label>
                                                    <div class="col-md-8 col-sm-8 col-xs-8">
                                                        <input type="text" id="razonVisita"  name="razonVisita" required="required" class="form-control"/>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label class="control-label  col-md-3 col-sm-3 col-xs-3" for="inicioSintomas">¿Cuando comenzaron sus síntomas?</label>
                                                    <div class="col-md-8 col-sm-8 col-xs-8">
                                                        <input type="text" id="inicioSintomas" name="inicioSintomas" class="form-control">
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label class="control-label  col-md-3 col-sm-3 col-xs-3" for="recuenciaSintomas">¿Cuán frecuentes son sus síntomas?</label>
                                                    <div class="col-md-8 col-sm-8 col-xs-8">
                                                        <input type="text" id="frecuenciaSintomas" name="frecuenciaSintomas" class="form-control">
                                                    </div>
                                                </div>


                                                <div class="row">
                                                    <div class="form-group col-md-6">
                                                        <label class="control-label  col-md-6 col-sm-6 col-xs-6" for="condicion">Su condición es ahora:</label>
                                                        <div class="col-md-4 col-sm-4 col-xs-4">
                                                            <select id="condicion" name="condicion" class="form-control" style="margin-left: 5px;">
                                                                <option value="0" selected disabled>Seleccione</option>
                                                                <option value="1">Mejor</option>
                                                                <option value="2">Igual</option>
                                                                <option value="3">Peor</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="form-group col-md-6">
                                                        <label class="control-label  col-md-4 col-sm-4 col-xs-4" for="lugarDolor">¿Siente Dolor? Lugar:</label>
                                                        <div class="col-md-6 col-sm-6 col-xs-6">
                                                            <input type="text" id="lugarDolor" name="lugarDolor" class="form-control"/>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="form-group col-md-6">
                                                        <label class="control-label  col-md-6 col-sm-6 col-xs-6" for="sienteMejor">¿Qué lo hace sentir mejor?</label>
                                                        <div class="col-md-6 col-sm-6 col-xs-6">
                                                            <input type="text" style="margin-left: 5px;" id="sienteMejor" name="sienteMejor" class="form-control"/>
                                                        </div>
                                                    </div>
                                                    <div class="form-group col-md-6">
                                                        <label class="control-label  col-md-5 col-sm-5 col-xs-5" for="frecuenciaDolor">¿Cuán frecuente es el dolor?</label>
                                                        <div class="col-md-5 col-sm-5 col-xs-5">
                                                            <select id="frecuenciaDolor" name="frecuenciaDolor" class="form-control">
                                                                <option value="0" selected disabled>Seleccione</option>
                                                                <option value="1">Constante</option>
                                                                <option value="2">A veces</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label  col-md-3 col-sm-3 col-xs-3" for="actividadesDolor">¿Qué actividades o movimientos le causan dolor?</label>
                                                    <div class="col-md-8 col-sm-8 col-xs-8">
                                                        <input type="text" id="actividadesDolor" name="actividadesDolor" class="form-control"/>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="form-group">
                                                        <label class="control-label  col-md-3 col-sm-3 col-xs-3" for="actividadesDolor">¿Algún tratamiento anterior?</label>
                                                        <div class="col-md-8 col-sm-8 col-xs-8">
                                                            <div class="checkbox col-sm-1 control-label">
                                                                <label>
                                                                    <input type="checkbox" id="tratamientoAnteriorSi" name="tratamientoAnteriorSi" class="flat">Si
                                                                </label>
                                                            </div>
                                                            <div class="checkbox col-sm-2 control-label">
                                                                <label>
                                                                    <input type="checkbox" id="tratamientoAnteriorNo" name="tratamientoAnteriorNo" class="flat">No
                                                                </label>
                                                            </div>
                                                            <div>
                                                                <label class="control-label  col-md-3 col-sm-3 col-xs-3" for="tratamientoAnterior">¿Cuál?</label>
                                                                <div class="col-md-6 col-sm-6 col-xs-6" style="float: right">
                                                                    <input type="text" id="tratamientoAnterior" name="tratamientoAnterior" class="form-control"/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="form-group">
                                                        <label class="control-label  col-md-3 col-sm-3 col-xs-3" for="historialFamiliar">¿Historial familiar con la misma condición?</label>
                                                        <div class="col-md-8 col-sm-8 col-xs-8">
                                                            <div class="checkbox col-sm-1 control-label">
                                                                <label>
                                                                    <input type="checkbox" id="historialFamiliarSi" name="historialFamiliarSi" class="flat">Si
                                                                </label>
                                                            </div>
                                                            <div class="checkbox col-sm-2 control-label">
                                                                <label>
                                                                    <input type="checkbox" id="historialFamiliarNo" name="historialFamiliarNo" class="flat">No
                                                                </label>
                                                            </div>
                                                            <div>
                                                                <label class="control-label  col-md-3 col-sm-3 col-xs-3" for="historialFamiliar">¿En quién?</label>
                                                                <div class="col-md-6 col-sm-6 col-xs-6">
                                                                    <input type="text" id="historialFamiliar" name="historialFamiliar" class="form-control"/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="row">
                                                <div class="profile_title">
                                                    <div class="col-md-6">
                                                        <h2>Historial Medico Pasado</h2>
                                                    </div>
                                                </div>

                                                <br>

                                                <div class="row">
                                                    <div class="form-group">
                                                        <label class="control-label  col-md-3 col-sm-3 col-xs-3" for="enfermedadesSerias">¿Enfermedades Serias?</label>
                                                        <div class="col-md-8 col-sm-8 col-xs-8">
                                                            <div class="checkbox col-sm-1 control-label">
                                                                <label>
                                                                    <input type="checkbox" id="enfermedadesSeriasSi" name="enfermedadesSeriasSi" class="flat">Si
                                                                </label>
                                                            </div>
                                                            <div class="checkbox col-sm-1 control-label">
                                                                <label>
                                                                    <input type="checkbox" id="enfermedadesSeriasNo" name="enfermedadesSeriasNo" class="flat">No
                                                                </label>
                                                            </div>
                                                            <div>
                                                                <label class="control-label  col-md-2 col-sm-2 col-xs-2" for="enfermedadesSerias">¿Cuál?</label>
                                                                <div class="col-md-8 col-sm-8 col-xs-8" style="float: right">
                                                                    <input type="text" id="enfermedadesSerias" name="enfermedadesSerias" class="form-control"/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="form-group">
                                                        <label class="control-label  col-md-3 col-sm-3 col-xs-3" for="hospitalizacionesAnt">¿Hospitalizaciones Anteriores?</label>
                                                        <div class="col-md-8 col-sm-8 col-xs-8">
                                                            <div class="checkbox col-sm-1 control-label">
                                                                <label>
                                                                    <input type="checkbox" id="hospitalizacionesAntSi" name="hospitalizacionesAntSi" class="flat">Si
                                                                </label>
                                                            </div>
                                                            <div class="checkbox col-sm-1 control-label">
                                                                <label>
                                                                    <input type="checkbox" id="hospitalizacionesAntNo" name="hospitalizacionesAntNo" class="flat">No
                                                                </label>
                                                            </div>
                                                            <div>
                                                                <label class="control-label  col-md-2 col-sm-2 col-xs-2" for="hospitalizacionesAnt">¿Cuál?</label>
                                                                <div class="col-md-8 col-sm-8 col-xs-8" style="float: right">
                                                                    <input type="text" id="hospitalizacionesAnt" name="hospitalizacionesAnt" class="form-control"/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="form-group">
                                                        <label class="control-label  col-md-3 col-sm-3 col-xs-3" for="operacionesAnt">¿Operaciones Anteriores?</label>
                                                        <div class="col-md-8 col-sm-8 col-xs-8">
                                                            <div class="checkbox col-sm-1 control-label">
                                                                <label>
                                                                    <input type="checkbox" id="operacionesAntSi" name="operacionesAntSi" class="flat">Si
                                                                </label>
                                                            </div>
                                                            <div class="checkbox col-sm-1 control-label">
                                                                <label>
                                                                    <input type="checkbox" id="operacionesAntNo" name="operacionesAntNo" class="flat">No
                                                                </label>
                                                            </div>
                                                            <div>
                                                                <label class="control-label  col-md-2 col-sm-2 col-xs-2" for="operacionesAnt">¿Cuál?</label>
                                                                <div class="col-md-8 col-sm-8 col-xs-8" style="float: right">
                                                                    <input type="text" id="operacionesAnt" name="operacionesAnt" class="form-control"/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="form-group">
                                                        <label class="control-label  col-md-3 col-sm-3 col-xs-3" for="medicamentos">¿Medicamentos?</label>
                                                        <div class="col-md-8 col-sm-8 col-xs-8">
                                                            <div class="checkbox col-sm-1 control-label">
                                                                <label>
                                                                    <input type="checkbox" id="medicamentosSi" name="medicamentosSi" class="flat">Si
                                                                </label>
                                                            </div>
                                                            <div class="checkbox col-sm-1 control-label">
                                                                <label>
                                                                    <input type="checkbox" id="medicamentosNo" name="medicamentosNo" class="flat">No
                                                                </label>
                                                            </div>
                                                            <div>
                                                                <label class="control-label  col-md-2 col-sm-2 col-xs-2" for="medicamentos">¿Cuál?</label>
                                                                <div class="col-md-8 col-sm-8 col-xs-8" style="float: right">
                                                                    <input type="text" id="medicamentos" name="medicamentos" class="form-control"/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                <div class="form-group">
                                                    <label class="control-label  col-md-3 col-sm-3 col-xs-3" for="alergias">¿Alergias?</label>
                                                    <div class="col-md-8 col-sm-8 col-xs-8">
                                                        <div class="checkbox col-sm-1 control-label">
                                                            <label>
                                                                <input type="checkbox" id="alergiasSi" name="alergiasSi" class="flat">Si
                                                            </label>
                                                        </div>
                                                        <div class="checkbox col-sm-1 control-label">
                                                            <label>
                                                                <input type="checkbox" id="alergiasNo" name="alergiasNo" class="flat">No
                                                            </label>
                                                        </div>
                                                        <div>
                                                            <label class="control-label  col-md-2 col-sm-2 col-xs-2" for="alergias">¿Cuál?</label>
                                                            <div class="col-md-8 col-sm-8 col-xs-8" style="float: right">
                                                                <input type="text" id="alergias" name="alergias" class="form-control"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                                <div class="row">
                                                    <div class="form-group">
                                                        <label class="control-label  col-md-3 col-sm-3 col-xs-3" for="historialFamCondicion">¿Historial Familiar de la misma condición?</label>
                                                        <div class="col-md-8 col-sm-8 col-xs-8">
                                                            <div class="checkbox col-sm-1 control-label">
                                                                <label>
                                                                    <input type="checkbox" id="historialFamCondicionSi" name="historialFamCondicionSi" class="flat">Si
                                                                </label>
                                                            </div>
                                                            <div class="checkbox col-sm-1 control-label">
                                                                <label>
                                                                    <input type="checkbox" id="historialFamCondicionNo" name="historialFamCondicionNo" class="flat">No
                                                                </label>
                                                            </div>
                                                            <div>
                                                                <label class="control-label  col-md-2 col-sm-2 col-xs-2" for="historialFamCondicion">¿En quién?</label>
                                                                <div class="col-md-8 col-sm-8 col-xs-8" style="float: right">
                                                                    <input type="text" id="historialFamCondicion" name="historialFamCondicion" class="form-control"/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>

                                            <div class="row">
                                                <div class="profile_title">
                                                    <div class="col-md-6">
                                                        <h2>Historial de Nacimiento</h2>
                                                    </div>
                                                </div>

                                                <br>
                                                <div class="form-group">
                                                    <label class="control-label  col-md-3 col-sm-3 col-xs-3" for="lugarNacimiento">Lugar de Nacimiento (Hospital) </label>
                                                    <div class="col-md-8 col-sm-8 col-xs-8">
                                                        <input type="text" id="lugarNacimiento" name="lugarNacimiento" class="form-control"/>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="form-group">
                                                        <label class="control-label  col-md-3 col-sm-3 col-xs-3" for="pesoLbs">Peso<span class="required">*</span></label>
                                                        <div class="col-md-2 col-sm-2 col-xs-2" style="margin-left: 5px">
                                                            <input type="number" id="pesoLbs" name="pesoLbs" value="0" class="form-control"/>lbs.
                                                        </div>


                                                        <label class="control-label  col-md-1 col-sm-1 col-xs-1" for="estatura">Estatura<span class="required">*</span></label>
                                                        <div class="col-md-3 col-sm-3 col-xs-3">
                                                            <input type="number" id="estatura" name="estatura" value="0" style="width: 95%" class="form-control"/>
                                                        </div>

                                                    </div>


                                                </div>
                                                <div class="row">
                                                    <div class="form-group col-sm-6">
                                                        <label class="control-label  col-md-6 col-sm-6 col-xs-6" for="prematuro">¿Prematuro?</label>
                                                        <div class="col-md-4 col-sm-4 col-xs-4">
                                                            <div class="checkbox col-sm-1 control-label">
                                                                <label>
                                                                    <input type="checkbox" id="prematuroSi" value="0" name="prematuroSi" class="flat">Si
                                                                </label>
                                                            </div>
                                                            <div class="checkbox col-sm-9 control-label">
                                                                <label>
                                                                    <input type="checkbox" id="prematuroNo" value="0" name="prematuroNo" class="flat">No
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group col-md-6">
                                                        <label class="control-label  col-md-3 col-sm-3 col-xs-3" for="cesarea">¿Cesárea?</label>
                                                        <div class="col-md-4 col-sm-4 col-xs-4">
                                                            <div class="checkbox col-sm-1 control-label">
                                                                <label>
                                                                    <input type="checkbox" id="cesareaSi" value="0" name="cesareaSi" class="flat">Si
                                                                </label>
                                                            </div>
                                                            <div class="checkbox col-sm-9 control-label">
                                                                <label>
                                                                    <input type="checkbox" id="cesareaNo" value="0" name="cesareaNo" class="flat">No
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="form-group col-md-6">
                                                        <label class="control-label  col-md-6 col-sm-6 col-xs-6" for="noEmbarazos">Para la madre? Número de embarazos<span class="required">*</span></label>
                                                        <div class="col-md-4 col-sm-4 col-xs-4">
                                                            <input type="number" id="noEmbarazos" name="noEmbarazos" value="0" class="form-control"/>
                                                        </div>
                                                    </div>
                                                    <div class="form-group col-md-6">
                                                        <label class="control-label  col-md-4 col-sm-4 col-xs-4" for="noHijos">Número de hijos<span class="required">*</span></label>
                                                        <div class="col-md-4 col-sm-4 col-xs-4">
                                                            <input type="number" id="noHijos" name="noHijos" value="0" class="form-control"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label>Historial de desarrollo:</label>
                                                </div>
                                                <div class="form-group ">
                                                    <label class="control-label  col-md-3 col-sm-3 col-xs-3" for="seParo">El niño se paró a los<span class="required">*</span></label>
                                                    <div class="col-md-2 col-sm-2 col-xs-2">
                                                        <input type="number" id="seParo" name="seParo" value="0" class="form-control"/>meses
                                                    </div>
                                                </div>
                                                <div class="form-group ">
                                                    <label class="control-label  col-md-3 col-sm-3 col-xs-3" for="camino">El niño caminó a los<span class="required">*</span></label>
                                                    <div class="col-md-2 col-sm-2 col-xs-2">
                                                        <input type="number" id="camino" name="camino" value="0" class="form-control"/>meses
                                                    </div>
                                                </div>
                                                <div class="form-group ">
                                                    <label class="control-label  col-md-3 col-sm-3 col-xs-3" for="hablo">El niño habló a los<span class="required">*</span></label>
                                                    <div class="col-md-2 col-sm-2 col-xs-2">
                                                        <input type="number" id="hablo" name="hablo" value="0" class="form-control"/>meses
                                                    </div>
                                                </div>
                                            </div>


                                            <div class="row">
                                                <div class="profile_title">
                                                    <div class="col-md-6">
                                                        <h2>Revisón de Sistemas</h2>
                                                    </div>
                                                </div>

                                                <br>
                                                <div class="form-group">
                                                    <label class="control-label  col-md-3 col-sm-3 col-xs-3" for="fiebre">Fiebre/Escalofríos</label>
                                                    <div class="col-md-8 col-sm-8 col-xs-8">
                                                        <div class="checkbox col-sm-1 control-label">
                                                            <label>
                                                                <input type="checkbox" id="fiebreNo" name="fiebreNo" class="flat">No
                                                            </label>
                                                        </div>

                                                        <div class="checkbox col-sm-1 control-label">
                                                            <label>
                                                                <input type="checkbox" id="fiebreSi" name="fiebreSi" class="flat">Si
                                                            </label>
                                                        </div>

                                                        <div>
                                                            <div class="col-md-10 col-sm-10 col-xs-10" style="float: right">
                                                                <input type="text" id="fiebre" name="fiebre" class="form-control"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label  col-md-3 col-sm-3 col-xs-3" for="piel">Piel</label>
                                                    <div class="col-md-8 col-sm-8 col-xs-8">
                                                        <div class="checkbox col-sm-1 control-label">
                                                            <label>
                                                                <input type="checkbox" id="pielNo" name="pelNo" class="flat">No
                                                            </label>
                                                        </div>

                                                        <div class="checkbox col-sm-1 control-label">
                                                            <label>
                                                                <input type="checkbox" id="pielSi" name="pielSi" class="flat">Si
                                                            </label>
                                                        </div>

                                                        <div>
                                                            <div class="col-md-10 col-sm-10 col-xs-10" style="float: right">
                                                                <input type="text" id="piel" name="piel" class="form-control"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>


                                            <div class="row">
                                                <div class="profile_title">
                                                    <div class="col-md-6">
                                                        <h2>Descripción/Receta</h2>
                                                    </div>
                                                </div>

                                                <br>

                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="description">Descripción <span class="required">*</span>
                                                </label>
                                                <div class="col-md-8 col-sm-8 col-xs-8">
                                                    <textarea type="text" id="description" required="required"  name="description" class="form-control col-md-7 col-xs-12"></textarea>
                                                </div>
                                            </div>

                                            <div class="control-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="prescription">Receta</label>
                                                <div class="col-md-8 col-sm-8 col-xs-8">
                                                    <input data-role="tagsinput" type="text" name="tags" class="tags form-control" placeholder="Post Tags">
                                                   <!-- <input id="tags_1" name="tags_1"  type="text" class="tags form-control"  data-tagsinput-init="true" style="display: none;"><div id="tags_1_tagsinput" class="tagsinput" style="width: auto; min-height: 100px; height: 100px;"><span class="tag"><span>social&nbsp;&nbsp;</span><a href="#" title="Removing tag">x</a></span><span class="tag"><span>adverts&nbsp;&nbsp;</span><a href="#" title="Removing tag">x</a></span><span class="tag"><span>sales&nbsp;&nbsp;</span><a href="#" title="Removing tag">x</a></span><span class="tag"><span>nknk&nbsp;&nbsp;</span><a href="#" title="Removing tag">x</a></span><div id="tags_1_addTag"><input id="tags_1_tag" name="tags_1_tag"  data-default="add a tag" style="color: rgb(102, 102, 102); width: 72px;"></div><div class="tags_clear"></div></div>-->
                                                    <div id="suggestions-container" style="position: relative; float: left; width: 250px; margin: 10px;"></div>
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
                            <!-- end user projects -->

                    </div>
                        <div role="tabpanel" class="tab-pane fade" id="tab_content2" aria-labelledby="home-tab">

                            <!-- start recent activity -->
                            <ul class="messages">

                            <#list consultationList as c>
                                <li>
                                    <img src="/images/consult.png" class="avatar" alt="Avatar">
                                    <div class="message_date">
                                        <h4 class="date text-info">${fecha}</h4>

                                    </div>
                                    <div class="message_wrapper">
                                        <a href="/consultation/${c.code}"><h4 class="heading">${c.razonVisita}</h4></a>
                                        <blockquote class="message">${c.description}</blockquote>
                                        <p>${c.prescription}</p>
                                        <br>

                                    </div>
                                </li>
                            </#list>


                            </ul>
                            <!-- end recent activity -->

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

<script src="/build/js/custom.js"></script>
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
















