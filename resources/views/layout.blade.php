<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<title>On Tour</title>
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
    @include('Link.css')
    @include('Link.js')
</head>
<body>
	@php
		function activeMenu($url)
		{
			return request()->is($url) ? 'active' : '';
		}
	@endphp
	<div id="page-loader" class="fade show"><span class="spinner"></span></div>
	<div id="page-container" class="page-container fade page-sidebar-fixed page-header-fixed">
		<div id="header" class="header navbar-default">
			<div class="navbar-header">
				<a href="{{ route('Inicio') }}" class="navbar-brand"><b>On Tour</b> Una Agencia Para Ti!</a>
				<button type="button" class="navbar-toggle" data-click="sidebar-toggled">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			</div>

			<ul class="navbar-nav navbar-right">
				<li class="dropdown navbar-user">
					<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
						<span class="d-none d-md-inline">{{ auth()->user()->name }}</span> <b class="caret"></b>
					</a>
					<div class="dropdown-menu dropdown-menu-right">
						<form action="{{ route('Logout') }}" method="POST">
							{{ csrf_field() }}
							<input type="submit" class="dropdown-item" value="Cerrar Session">
						</form>
					</div>
				</li>
			</ul>
		</div>

		<div id="sidebar" class="sidebar">
			<div data-scrollbar="true" data-height="100%">
				<ul class="nav">
					<li class="nav-profile">
						<a href="javascript:;" data-toggle="nav-profile">
							<div class="cover with-shadow"></div>
							<div class="info">
								{{ auth()->user()->name }}
								<small>{{ auth()->user()->email }}</small>
							</div>
						</a>
					</li>
				</ul>
				<ul class="nav">
					<li class="nav-header">Menu De Navegacion</li>
					<li class="{{activeMenu('Inicio') }}"><a href="{{ route('Inicio') }}"><i class="fa fa-home"></i> <span>Inicio</span></a></li>
					@if(auth()->user()->id_perfil == 1 || auth()->user()->id_perfil == 3)
						<li class="has-sub {{activeMenu('Instituciones*') }}">
							<a href="javascript:;">
								<b class="caret"></b>
								<i class="fa fa-suitcase"></i>
								<span>Instituciones</span>
							</a>
							<ul class="sub-menu">
								<li class="{{activeMenu('Instituciones') }}"><a href="{{ route('Instituciones.index') }}">Tus Instituciones</a></li>
								<li class="{{activeMenu('Instituciones/create') }}"><a href="{{ route('Instituciones.create') }}">Registrar Institucion</a></li>
							</ul>
						</li>			
						<li class="has-sub {{activeMenu('Viajes*') }}">
							<a href="javascript:;">
								<b class="caret"></b>
								<i class="fa fa-plane"></i>
								<span>Viajes</span>
							</a>
							<ul class="sub-menu">
								<li class="{{activeMenu('Viajes') }}"><a href="{{ route('Viajes.index') }}">Tus Viaje</a></li>
								<li class="{{activeMenu('Viajes/create') }}"><a href="{{ route('Viajes.create') }}">Registrar Viaje</a></li>
							</ul>
						</li>
					@endif		
					@if(auth()->user()->id_perfil == 1 || auth()->user()->id_perfil == 2)				
						<li class="has-sub {{activeMenu('ClientesAsignados') }} {{activeMenu('Clientes') }}">
							<a href="javascript:;">
								<b class="caret"></b>
								<i class="fa fa-users"></i>
								<span>Clientes</span>
							</a>
							<ul class="sub-menu">
								<li class="{{activeMenu('ClientesAsignados') }}"><a href="{{ route('ClientesAsignados') }}">Viajes de Clientes Asignados</a></li>
								<li class="{{activeMenu('Clientes') }}"><a href="{{ route('Clientes.index') }}">Asignar Viajes de Clientes</a></li>
							</ul>
						</li>
					@endif
					@if(auth()->user()->id_perfil == 1)						
						<li class="has-sub {{activeMenu('Usuarios*') }}">
							<a href="javascript:;">
								<b class="caret"></b>
								<i class="fa fa-users"></i>
								<span>Usuarios</span>
							</a>
							<ul class="sub-menu">
								<li class="{{activeMenu('Usuarios') }}"><a href="{{ route('Usuarios.index') }}">Todos Los Usuario</a></li>
								<li class="{{activeMenu('Usuarios/create') }}"><a href="{{ route('Usuarios.create') }}">Agregar Usuario</a></li>
							</ul>
						</li>
						<li class="{{activeMenu('Reportes') }}"><a href="{{ route('Reportes') }}"><i class="fa fa-chart-bar"></i> Reportes</a></li>
					@endif						
					<li><a href="javascript:;" class="sidebar-minify-btn" data-click="sidebar-minify"><i class="fa fa-angle-double-left"></i></a></li>
				</ul>
			</div>
		</div>
		<div class="sidebar-bg"></div>

        @yield('contenido')
		
		<a href="javascript:;" class="btn btn-icon btn-circle btn-success btn-scroll-to-top fade" data-click="scroll-top"><i class="fa fa-angle-up"></i></a>
	</div>
</body>
</html>
