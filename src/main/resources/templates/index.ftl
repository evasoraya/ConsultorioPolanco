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

    <!-- FullCalendar -->
    <link href="/vendors/fullcalendar/dist/fullcalendar.min.css" rel="stylesheet">
    <link href="/vendors/fullcalendar/dist/fullcalendar.print.css" rel="stylesheet" media="print">

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
                                <h2>Calendar </h2>

                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <div class="col-md-9 col-sm-12 col-xs-12">
                                    <div id='calendar'></div>
                                </div>
                                <div class="col-md-3 col-sm-12 col-xs-12">
                                    <div class="x_title">
                                        <h2>Pacientes en lista de espera para hoy </h2>

                                        <div class="clearfix"></div>
                                    </div>
                                    <ul class="list-unstyled top_profiles scroll-view">

                                    <#list patients? sort_by("date") as p>

                                        <li class="media event">

                                            <a class="pull-left border-aero profile_thumb">
                                                <i class="fa fa-wheelchair aero"></i>
                                            </a>
                                            <div class="media-body">
                                                <a  class="title" href="/patientProfile/${p.patient.code}">${p.patient.name} ${p.patient.lastName}</a>
                                                <p><strong> Edad: </strong> ${p.patient.gender} </p>

                                            </div>
                                        </li>
                                    <#else>
                                        <div class="media-body">
                                            <p><strong> No hay pacientes en lista </p>

                                        </div>

                                    </#list>

                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>Resumen semanal <small>Pacientes atendidos</small></h2>

                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <div class="row" style="border-bottom: 1px solid #E0E0E0; padding-bottom: 5px; margin-bottom: 5px;">
                                    <div class="col-md-5">
                                        <div class="row" style="text-align: center;">
                                            <div class="col-md-3">
                                                <canvas class="canvasDoughnut col-md-3" height="200" width="200" style="margin: 10px 20px 20px 0">

                                                </canvas>
                                                <h4 style="margin:0">Insuranced patients</h4>
                                            </div>
                                            <div class="col-md-3">
                                                <canvas class="canvasDoughnut col-md-3" height="200" width="200" style="margin: 10px 20px 20px 0">

                                                </canvas>
                                                <h4 style="margin:0">Not Insuranced patients</h4>
                                            </div>
                                            <div class="col-md-3">
                                                <canvas class="canvasDoughnut col-md-3" height="200" width="200" style="margin: 10px 20px 20px 0">

                                                </canvas>
                                                <h4 style="margin:0">Pacientes menores (0-18)</h4>
                                            </div>
                                            <div class="col-md-3">
                                                <canvas class="canvasDoughnut col-md-3" height="200" width="200" style="margin: 10px 20px 20px 0">

                                                </canvas>
                                                <h4 style="margin:0">Pacientes mayores (18+)</h4>
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
<!-- General JS -->
<!--<script src="/js/index.js"></script>-->
<!-- NProgress -->
<script src="/vendors/nprogress/nprogress.js"></script>
<!-- FullCalendar -->
<script src="/vendors/moment/min/moment.min.js"></script>
<script src="/vendors/fullcalendar/dist/fullcalendar.min.js"></script>
<script src='/vendors/fullcalendar/dist/lang-all.js'></script>
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


<script src="/build/js/custom.min.js"></script>


<!-- Custom Theme Scripts -->

</body>
</html>