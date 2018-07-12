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
        <div class="login login-with-news-feed">
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
                <h1 class="login-header">Ingresar Al Sistema</h1>
                <div class="login-content">
                    <form action="{{ route('Login') }}" method="POST" class="margin-bottom-0" id="formLogin">
                        {{ csrf_field() }}
                        @if( session()->has('errorLogin') )
                            <div class="row m-b-15">
                                <div class="col-md-12">
                                    <div class="alert alert-danger">
                                        {{ session('errorLogin') }}
                                    </div>
                                </div>
                            </div>
                        @endif
                        @if( session()->has('logout') )
                            <div class="row m-b-15">
                                <div class="col-md-12">
                                    <div class="alert alert-success">
                                        {{ session('logout') }}
                                    </div>
                                </div>
                            </div>
                        @endif
                        @if( session()->has('inicioSession') )
                            <div class="row m-b-15">
                                <div class="col-md-12">
                                    <div class="alert alert-danger">
                                        {{ session('inicioSession') }}
                                    </div>
                                </div>
                            </div>
                        @endif
                        <div class="form-group m-b-15">
                                <label class="control-label">Correo <span class="text-danger">*</span></label>
                            <input type="email" class="form-control form-control-lg" name="correo" id="correo" placeholder="Correo..." />
                        </div>
                        <div class="form-group m-b-15">
                                <label class="control-label">Clave <span class="text-danger">*</span></label>
                            <input type="password" class="form-control form-control-lg" name="clave" id="clave" placeholder="Clave..." />
                        </div>
                        <div class="login-buttons">
                            <input type="submit" class="btn btn-success btn-block btn-lg" value="Ingresar">
                        </div>
                        <div class="m-t-20 m-b-40 p-b-40 text-inverse">
                            ¿No eres miembro todavía? Haga clic <a href="{{ route('Registro.index') }}" class="text-success"> aquí </a> para registrarse.
                        </div>
                        <hr />
                        <p class="text-center text-grey-darker">
                            &copy; On Tour 2018 - 2019
                        </p>
                    </form>
                </div>
            </div>
        </div>
	</div>
</body>
</html>
