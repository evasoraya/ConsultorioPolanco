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

    <!--FullCalendar-->
    <link href="/vendors/fullcalendar/dist/fullcalendar.min.css" rel="stylesheet">
    <link href="/vendors/fullcalendar/dist/fullcalendar.print.css" rel="stylesheet" media="print">


    <link href="/css/newAppointment.css" rel="stylesheet">


    <!-- iCheck -->
    <link href="/vendors/iCheck/skins/flat/green.css" rel="stylesheet">

    <!-- Select2 -->
    <link href="/vendors/select2/dist/css/select2.min.css" rel="stylesheet">

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
                <div class="page-title">
                    <div class="title_left">
                        <h3>Calendario</h3>
                    </div>

                </div>

                <div class="clearfix"></div>

                <div class="row">
                    <div class="col-md-12">
                        <div class="x_panel">
                            <div class="x_content">

                                <div id='calendar'></div>

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

<!-- calendar modal -->
<div id="CalenderModalNew" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">

            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel">Nueva Cita</h4>
            </div>
            <div class="modal-body">
                <div id="testmodal" style="padding: 5px 20px;">
                    <form id="antoform" class="form-horizontal calender" role="form">
                        <div class="form-group">
                            <div class="checkbox col-sm-6 control-label">
                                <h2>
                                    <!--<if canUse>--><a href="/newPatient" role="button" class="btn btn-primary">Nuevo Paciente</a><!--<else><strong>Only ASSISTANT accounts can register new patients</strong></if>-->
                                </h2>
                            </div>
                        </div>

                        <div class="form-group" >
                            <label for="title" class="col-sm-3 control-label">Paciente</label>
                            <div class="col-sm-9">
                                <select id="title" required="required" name="title" class="select2_group form-control">
                                    <optgroup label="Todos los Pacientes">
                                        <option selected disabled>Seleccione</option>
                                    <#list patients as p>
                                        <option value="${p.code}">${p.name} ${p.lastName}</option>
                                    </#list>
                                    </optgroup>

                                </select>
                            </div>
                        </div>

                        <!-- <div id="newPatient" hidden>
                             <div class="form-group">
                                 <label for="nameNew" class="col-sm-3 control-label">Nombre</label>
                                 <div class="col-sm-9">
                                     <input class="form-control" id="nameNew" name="nameNew"/>
                                 </div>
                             </div>

                             <div class="form-group">
                                 <label for="phoneNumberNew" class="col-sm-3 control-label">Teléfono</label>
                                 <div class="col-sm-9">
                                     <input class="form-control"  id="phoneNumberNew" name="phoneNumberNew"/>
                                 </div>
                             </div>
                         </div>-->


                        <div class="form-group">
                            <label class="col-sm-3 control-label">Seguro</label>
                            <div class="col-sm-9">
                                <input class="form-control" type="text" id="insurance" name="insurance">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 control-label">Descripción</label>
                            <div class="col-sm-9">
                                <textarea type="text" class="form-control" style="height:55px;" id="descr" name="descr"></textarea>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default antoclose" data-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-primary antosubmit">Guardar</button>
            </div>
        </div>
    </div>
</div>
<!--<div id="CalenderModalEdit" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">

            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel2">Datos de la Cita</h4>
            </div>
            <div class="modal-body">

                <div id="testmodal2" style="padding: 5px 20px;">
                    <form id="antoform2" class="form-horizontal calender" role="form">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">Paciente</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="paciente" name="paciente" disabled>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">Fecha</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="fecha" name="fecha" disabled>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">Seguro</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="seguro" name="seguro" disabled>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">Descripción</label>
                            <div class="col-sm-9">
                                <textarea class="form-control" style="height:55px;" id="descr2" name="descr"></textarea>
                            </div>
                        </div>

                    </form>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default antoclose2" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary antosubmit2">Save changes</button>
            </div>
        </div>
    </div>
</div>


<div id="fc_edit" data-toggle="modal" data-target="#CalenderModalEdit"></div>
-->
<div id="fc_create" data-toggle="modal" data-target="#CalenderModalNew"></div>

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

<script src="/vendors/jquery.tagsinput/src/jquery.tagsinput.js"></script>
<script src="/build/js/custom.js"></script>

<!-- FullCalendar -->
<script src="/vendors/moment/min/moment.min.js"></script>
<script src="/vendors/fullcalendar/dist/fullcalendar.min.js"></script>

<!-- jQuery Tags Input -->
<script src="/vendors/jquery.tagsinput/src/jquery.tagsinput.js"></script>

<!-- Select2 -->
<script src="/vendors/select2/dist/js/select2.full.min.js"></script>

<script src="/js/index.js"></script>
<tester id="tags_1_tag_autosize_tester" style="position: absolute; top: -9999px; left: -9999px; width: auto; font-size: 13px; font-family: helvetica; font-weight: 400; letter-spacing: 0px; white-space: nowrap;">nknk</tester>
<!-- Custom Theme Scripts -->


<script>
    $(function() {
        $('.lista').on('change', function() {
            var $sels = $('.lista option:selected[value=""]');
            $("#guardar").attr("disabled", $sels.length > 0);
        }).change();
    });
    $(document).ready(function() {

        json = $.parseJSON([${json_events}].toString());
        //console.log(json);

            if( typeof ($.fn.fullCalendar) === 'undefined'){ return; }


            var date = new Date(),
                    d = date.getDate(),
                    m = date.getMonth(),
                    y = date.getFullYear(),
                    started,
                    categoryClass;

            var calendar = $('#calendar').fullCalendar({
               events: json,
                header: {
                    left: 'prev,next today',
                    center: 'title',
                    right: 'month,agendaWeek,agendaDay,listMonth'
                },
                selectable: true,
                selectHelper: true,
                select: function(start, end, allDay) {
                    $('#fc_create').click();

                    started = start;
                    ended = end;

                    $(".antosubmit").on("click", function() {

                        var title;
                        var seguro;

                        title = $("#title option:selected").text();


                        var code =  $("#title").val();

                        seguro = $("#insurance").val();
                        var descripcion = $("#descr").val();

                        var start2 = moment(event.start).format("YYYY-MM-DD[T]hh:mm:SS");

                        if (end) {
                            ended = end;
                        }

                        categoryClass = $("#event_type").val();

                        if (title) {
                            calendar.fullCalendar('renderEvent', {
                                        title: title,
                                        start: started,
                                        end: end,
                                        allDay: allDay
                                    },
                                    true // make the event "stick"
                            );

                            $.ajax({
                                url: '/newAppointmentPost',
                                data: 'type=new&codigo='+code+'&date='+ moment(started).format('YYYY-MM-DD[T]hh:mm:SS')+'&description='+descripcion+
                                '&nombre='+title+'&seguro='+seguro,
                                type: 'POST',
                                dataType: 'json',
                                success: function(response){
                                    //cuando hago el cambio actualizo el evento
                                    $('#calendar').fullCalendar('updateEvent',event);
                                    // event_refresh();

                                },
                                error: function(e){
                                    console.log(e.responseText);

                                }
                            });
                        }

                        $('#title').val('');

                        calendar.fullCalendar('unselect');

                        $('.antoclose').click();

                        return false;
                    });
                },
                eventClick: function(calEvent, jsEvent, view) {
                    $('#fc_edit').click();
                    $('#paciente').val(calEvent.title);
                    $('#fecha').val(calEvent.start);

                    categoryClass = $("#event_type").val();

                    $(".antosubmit2").on("click", function() {
                        calEvent.title = $("#title2").val();

                        calendar.fullCalendar('updateEvent', calEvent);
                        $('.antoclose2').click();
                    });

                    calendar.fullCalendar('unselect');
                },
                editable: true
            });

    });

</script>
<!-- /jQuery Tags Input -->


</body>
</html>