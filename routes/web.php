<?php
Route::get('/', 'LoginController@index')->name('/');
Route::get('Inicio', 'InicioController@index')->name('Inicio');
Route::get('ClientesAsignados', 'ClienteController@assigned')->name('ClientesAsignados');
Route::get('DescargarComprobante/{id}', 'ViajeController@downloadVoucher')->name('DescargarComprobante');
Route::get('DescargarComprobanteCliente/{id}', 'ClienteController@downloadVoucher')->name('DescargarComprobanteCliente');
Route::get('ObtenerProvincia', 'JsonController@getProvince')->name('ObtenerProvincia');
Route::get('ObtenerComuna', 'JsonController@getCommune')->name('ObtenerComuna');
Route::get('ObtenerHospedaje', 'JsonController@getLodging')->name('ObtenerHospedaje');
Route::get('ObtenerInformacionHospedaje', 'JsonController@getLodgingInformation')->name('ObtenerInformacionHospedaje');
Route::get('ObtenerInformacionTransporte', 'JsonController@getTransportInformation')->name('ObtenerInformacionTransporte');
Route::get('ObtenerInformacionViaje', 'JsonController@getTravelInformation')->name('ObtenerInformacionViaje');
Route::get('Reportes', 'ReporteController@index')->name('Reportes');
Route::get('DescargarReporte', 'ReporteController@downloadReport')->name('DescargarReporte');

Route::post('Login', 'LoginController@login')->name('Login');
Route::post('Logout', 'LoginController@logout')->name('Logout');

Route::put('DesignarCliente/{id}', 'ClienteController@appoint')->name('DesignarCliente');

Route::resource('Registro', 'RegistroController');
Route::resource('Instituciones', 'InstitucionController');
Route::resource('Viajes', 'ViajeController');
Route::resource('Clientes', 'ClienteController');
Route::resource('Usuarios', 'UsuarioController');