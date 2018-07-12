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
<body class="pace-top bg-white">
	<div id="page-loader" class="fade show"><span class="spinner"></span></div>
	<div id="page-container" class="fade">
        <div class="register register-with-news-feed">
            <div class="news-feed">
                <div class="news-image" style="background-image: url(/img/login-bg-11.jpg)"></div>
                <div class="news-caption">
                    <h4 class="caption-title"><b>On Tour</b></h4>
                    <p>
                        Agencia de Viajes Para Ti!!
                    </p>
                </div>
            </div>
            <div class="right-content">
                <h1 class="register-header">Registrate</h1>
                <div class="register-content">
                    <form action="{{ route('Registro.store') }}" method="POST" class="margin-bottom-0" id="formRegistro">
                        {!! csrf_field() !!}
                        @if( session()->has('crearUsuario') )
                            <div class="row m-b-15">
                                <div class="col-md-12">
                                    <div class="alert alert-success">
                                        {{ session('crearUsuario') }}
                                    </div>
                                </div>
                            </div>
                        @endif
                        @if( session()->has('errorCrearUsuario') )
                            <div class="row m-b-15">
                                <div class="col-md-12">
                                    <div class="alert alert-danger">
                                        {{ session('errorCrearUsuario') }}
                                    </div>
                                </div>
                            </div>
                        @endif
                        <label class="control-label">Nombre Completo <span class="text-danger">*</span></label>
                        <div class="row row-space-10">
                            <div class="col-md-6 m-b-15">
                                <input type="text" class="form-control" name="primerNombre" id="primerNombre" placeholder="Primer Nombre..." />
                            </div>
                            <div class="col-md-6 m-b-15">
                                <input type="text" class="form-control" name="segundoNombre" id="segundoNombre" placeholder="Segundo Nombre..." />
                            </div>
                        </div>
                        <div class="row row-space-10">
                            <div class="col-md-6 m-b-15">
                                <input type="text" class="form-control" name="primerApellido" id="primerApellido" placeholder="Primer Apellido..." />
                            </div>
                            <div class="col-md-6 m-b-15">
                                <input type="text" class="form-control" name="segundoApellido" id="segundoApellido" placeholder="Segundo Apellido..." />
                            </div>
                        </div>
                        <label class="control-label">Rut <span class="text-danger">*</span></label>
                        <div class="row m-b-15">
                            <div class="col-md-12">
                                <input type="text" class="form-control" name="rut" id="rut" placeholder="Rut..." />
                            </div>
                        </div>
                        <label class="control-label">Genero <span class="text-danger">*</span></label>
                        <div class="row m-b-15">
                            <div class="col-md-12">
                                <select class="form-control" name="genero" id="genero">
                                    @foreach($generos as $genero)
                                        <option value="{{ $genero->id_genero }}">{{ $genero->nombre_genero }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <label class="control-label">Telefono <span class="text-danger">*</span></label>
                        <div class="row m-b-15">
                            <div class="col-md-12">
                                <input type="number" class="form-control" name="telefono" id="telefono" placeholder="Telefono..." />
                            </div>
                        </div>
                        <label class="control-label">Correo <span class="text-danger">*</span></label>
                        <div class="row m-b-15">
                            <div class="col-md-12">
                                <input type="email" class="form-control" name="correo" id="correo" placeholder="Correo..." />
                            </div>
                        </div>
                        <label class="control-label">Clave <span class="text-danger">*</span></label>
                        <div class="row m-b-15">
                            <div class="col-md-12">
                                <input type="password" class="form-control" name="clave" id="clave" placeholder="Clave..." />
                            </div>
                        </div>
                        <div class="register-buttons">
                            <input type="submit" class="btn btn-primary btn-block btn-lg" value="Registrarse">
                        </div>
                        <div class="m-t-20 m-b-40 p-b-40 text-inverse">
                            ¿Ya eres usuario? Haga clic <a href="{{ route('/') }}"> aquí </a> para iniciar sesión.
                        </div>
                        <hr />
                        <p class="text-center">
                            &copy; On Tour 2018 - 2019
                        </p>
                    </form>
                </div>
            </div>
        </div>
	</div>
</body>
</html>
