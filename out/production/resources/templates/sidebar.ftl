<div class="col-md-3 left_col">
    <div class="left_col scroll-view">

        <!-- menu profile quick info -->
        <div class="profile clearfix">
            <div class="profile_pic">
                <img src="images/foto.png" alt="..." class="img-circle profile_img">
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