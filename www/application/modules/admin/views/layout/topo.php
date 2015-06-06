<!DOCTYPE html>
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
    <title>Programação Web</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta content="" name="description" />
    <meta content="" name="author" />

    <!-- INICIO FAVICO LINC -->
    <link href="/assets/img/icon_logo_linc.ico" rel="shortcut icon">
    <!-- FIM FAVICO LINC -->

    <!-- INICIO PLUGIN'S DE CSS -->
    <link href="/assets/plugins/pace/pace-theme-flash.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="/assets/plugins/jquery-slider/css/jquery.sidr.light.css" rel="stylesheet" type="text/css" media="screen"/>
    <!-- FIM PLUGIN'S DE CSS -->

    <!-- INICIO FRAMEWORK'S DE CSS -->
    <link href="/assets/plugins/boostrapv3/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="/assets/plugins/boostrapv3/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
    <link href="/assets/plugins/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css"/>
    <link href="/assets/css/animate.min.css" rel="stylesheet" type="text/css"/>
    <!-- FIM FRAMEWORK'S DE CSS  -->

    <!-- INICIO TEMPLATES DE CSS -->
    <link href="/assets/css/style.css" rel="stylesheet" type="text/css"/>
    <link href="/assets/css/responsive.css" rel="stylesheet" type="text/css"/>
    <link href="/assets/css/custom-icon-set.css" rel="stylesheet" type="text/css"/>
    <!-- FIM TEMPLATES DE CSS -->
</head>
<!-- FIM HEAD -->

<!-- INICIO BODY -->
<body class="">
    <!-- INICIO CABEÇALHO -->
    <div class="header navbar navbar-inverse ">
        <!-- INICIO BARRA DE NAVEGAÇÃO SUPERIOR -->
        <div class="navbar-inner">
            <div class="header-seperation">
                <ul class="nav pull-left notifcation-center" id="main-menu-toggle-wrapper" style="display:none">
                    <li class="dropdown">
                        <a id="main-menu-toggle" href="#main-menu"  class="" >
                            <div class="iconset top-menu-toggle-white"></div>
                        </a>
                    </li>
                </ul>
                <i style="margin-left: 25%">
                </i>
                <ul class="nav pull-right notifcation-center">
                    <li class="dropdown" id="header_task_bar">
                        <a href="<?= base_url('admin/home/home') ?>" class="dropdown-toggle active" data-toggle="">
                            <div class="iconset top-home"></div>
                        </a>
                    </li>
                </ul>
            </div>
            <!-- INICIO MENU SUPERIOR (CONTENT) -->
            <div class="header-quick-nav" >
                <!-- INICIO COMPRIMIR MENU -->
                <div class="pull-left">
                    <ul class="nav quick-section">
                        <li class="quicklinks">
                            <a href="#" class="" id="layout-condensed-toggle" >
                                <div class="iconset top-menu-toggle-dark"></div>
                            </a>
                        </li>
                    </ul>
                </div>
                <!-- FIM COMPRIMIR MENU -->
                <!-- INICIO OPÇÃO LATERAL -->
                <div class="pull-right">
                    <ul class="nav quick-section ">
                        <li class="quicklinks"> 
                            <a data-toggle="dropdown" class="dropdown-toggle  pull-right" href="#">						
                                <div class="iconset top-settings-dark "></div> 	
                            </a>
                            <ul class="dropdown-menu pull-right" role="menu" aria-labelledby="dropdownMenu">
                                <li>
                                    <a href="<?= base_url('admin/serviceauth/logout') ?>">
                                        <i class="icon-off"></i>&nbsp;&nbsp; Sair
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <!-- FIM OPÇÃO LATERAL -->
            </div>
            <!-- FIM MENU SUPERIOR (CONTENT) -->
        </div>
        <!-- FIM BARRA DE NAVEGAÇÃO SUPERIOR -->
    </div>
    <!-- FIM CABEÇALHO -->