
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Patients</title>

    <link href="css/index.css" rel="stylesheet">

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="css/nprogress.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="css/custom.min.css" rel="stylesheet">

</head>
<body class="nav-md">
<div class="container body">
    <div class="main_container">
    <#include "sidebar.ftl">

        <!-- top navigation -->
    <#include "topNavigation.ftl">
        <!-- /top navigation -->
        <div class="right_col" role="main">
            <div class="">
                <div class="row">
                    <div class="col-md-12">
                        <div class="x_panel">

                            <h2>Citas</h2>

                            <div class="x_panel">

                                <div class="x_content">
                                    <table id="datatable-responsive" class="table table-hover table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
                                        <thead>
                                        <tr>
                                            <th><span style="text-transform: uppercase;"></span>Cedula</th>
                                            <th><span style="text-transform: uppercase;"></span>Nombre</th>
                                            <th><span style="text-transform: uppercase;"></span>Hora registro</th>
                                            <th><span style="text-transform: uppercase;"></span>Seguro</th>
                                            <th><span style="text-transform: uppercase;"></span>Estatus</th>


                                        </tr>
                                        </thead>
                                        <tbody>
                                        <#list appointmentList?sort_by("date") as appointment>
                                        <tr>

                                            <td>${appointment.patient.ID}</td>
                                            <td> <a  href="/patientProfile/${appointment.code}">${appointment.patient.name} ${appointment.patient.lastName}</td>
                                            <td>${appointment.date}</td>
                                            <td>${appointment.insurance}</td>
                                            <#if (appointment.status)>
                                            <td>Consulta atendida</td>
                                            </#if>
                                            <#if !(appointment.status)>
                                                <td>Consulta pendiente</td>
                                            </#if>
                                            <!--<td>
                                                <a href="/borrarA/${appointment.code}"> <i  class="fa fa-trash"></i></a>
                                            </td>-->

                                        </tr>
                                        <#else>
                                        <tr>
                                            <th scope="row">empty</th>

                                        </tr>
                                        </#list>

                                        </tbody>
                                    </table>

                                </div>
                            </div>
                            <!--I Know this is wrong, i just dont care-->
                            <br><br><br><br><br><br><br><br><br>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- page content -->


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
<script src="vendors/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="vendors/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="vendors/fastclick/lib/fastclick.js"></script>
<!-- NProgress -->
<script src="vendors/nprogress/nprogress.js"></script>
<!-- Chart.js -->
<script src="vendors/Chart.js/dist/Chart.min.js"></script>
<!-- jQuery Sparklines -->
<script src="vendors/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
<!-- morris.js -->
<script src="vendors/raphael/raphael.min.js"></script>
<script src="vendors/morris.js/morris.min.js"></script>
<!-- gauge.js -->
<script src="vendors/gauge.js/dist/gauge.min.js"></script>
<!-- bootstrap-progressbar -->
<script src="vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
<!-- Skycons -->
<script src="vendors/skycons/skycons.js"></script>
<!-- Flot -->
<script src="vendors/Flot/jquery.flot.js"></script>
<script src="vendors/Flot/jquery.flot.pie.js"></script>
<script src="vendors/Flot/jquery.flot.time.js"></script>
<script src="vendors/Flot/jquery.flot.stack.js"></script>
<script src="vendors/Flot/jquery.flot.resize.js"></script>
<!-- Flot plugins -->
<script src="vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
<script src="vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
<script src="vendors/flot.curvedlines/curvedLines.js"></script>
<!-- DateJS -->
<script src="vendors/DateJS/build/date.js"></script>
<!-- bootstrap-daterangepicker -->
<script src="vendors/moment/min/moment.min.js"></script>
<script src="vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
<script src="build/js/custom.min.js"></script>


<!-- Custom Theme Scripts -->

</body>
</html>
