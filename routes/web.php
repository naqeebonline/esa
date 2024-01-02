<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

/*Route::get('/', function () {
    return view('layouts.app_screen_l3');
});*/

Route::get("/", [\App\Http\Controllers\HomeController::class, 'index'])->name('app.landing-screen');





Auth::routes();

Route::post('custom-authenticate', [\App\Http\Controllers\Auth\LoginController::class, 'customAuthenticate'])->name('custom-authenticate');

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::prefix('no-auth')->group(function () {

    Route::post('districts-by-province-id', [\App\Http\Controllers\NoAuthActionsControllers::class, 'districtsByProvinceId'])->name('noauth.districts-by-province-id');

    Route::post('districts-by-division-id', [\App\Http\Controllers\NoAuthActionsControllers::class, 'districtsByDivisionId'])->name('noauth.districts-by-division-id');

    Route::post('tehsils-by-district-id', [\App\Http\Controllers\NoAuthActionsControllers::class, 'tehsilsByDistrictId'])->name('noauth.tehsils-by-district-id');

    Route::post('sections-by-company-id', [\App\Http\Controllers\NoAuthActionsControllers::class, 'sectionsByCompanyId'])->name('noauth.sections-by-company-id');

    Route::post('users-hod-id-check', [\App\Http\Controllers\NoAuthActionsControllers::class, 'usersHodIdCheck'])->name('noauth.users-hod-id-check');

    Route::post('users-hod-check', [\App\Http\Controllers\NoAuthActionsControllers::class, 'usersHodCheck'])->name('noauth.users-hod-check');

    Route::post('users-list-by-company-id', [\App\Http\Controllers\NoAuthActionsControllers::class, 'usersListByCompanyId'])->name('noauth.users-list-by-company-id');

    Route::post('companies-by-type-id', [\App\Http\Controllers\NoAuthActionsControllers::class, 'companiesByTypeId'])->name('noauth.companies-by-type-id');

    Route::get('companies-list', [\App\Http\Controllers\NoAuthActionsControllers::class, 'companiesList'])->name('noauth.companies-list');
});

Route::middleware(['auth'])->prefix('dropDown')->group(function () {
    Route::get('/', [\App\Http\Controllers\DynamicController::class, 'dropDown'])->name('dynamic.dropDown');


});

Route::get('/psw-generate', function () {
    return \Illuminate\Support\Facades\Hash::make('12345678');
});

/*Route::post('create-meeting', function () {


})->name("create-meeting");*/

Route::group(['middleware' => 'auth'],function(){
    Route::get('user-dashboard', [\App\Http\Controllers\HomeController::class, 'userDashboard'])->name('user.dashboard');
    Route::get('getAllPoliceStations', [\App\Http\Controllers\HomeController::class, 'getAllPoliceStations'])->name('getAllPoliceStations');
    Route::get('getAllPoliceMobiles', [\App\Http\Controllers\HomeController::class, 'getAllPoliceMobiles'])->name('getAllPoliceMobiles');
    Route::post('/store-token', [\App\Http\Controllers\NotificationSendController::class, 'updateDeviceToken'])->name('store.token');
    Route::post('/send-web-notification', [\App\Http\Controllers\NotificationSendController::class, 'sendNotification'])->name('send.web-notification');
    Route::post('/sendNotificationDashboard', [\App\Http\Controllers\NotificationSendController::class, 'sendNotificationDashboard'])->name('send.sendNotificationDashboard');

    Route::get('getTehsils/{id?}', [\Modules\Settings\Http\Controllers\UsersController::class, 'getTehsils'])->name('getTehsils');
    Route::get('getCircles/{district_id?}', [\Modules\Settings\Http\Controllers\UsersController::class, 'getCircles'])->name('getCircles');
    Route::get('getPoliceStations/{id?}', [\Modules\Settings\Http\Controllers\UsersController::class, 'getPoliceStations'])->name('getPoliceStations');
    Route::get('getPoliceStationUser/{id?}', [\Modules\Settings\Http\Controllers\UsersController::class, 'getPoliceStationUser'])->name('getPoliceStationUser');
    Route::get('getDistrictUser/{id?}', [\Modules\Settings\Http\Controllers\UsersController::class, 'getDistrictUser'])->name('getDistrictUser');
    Route::get('getCirclePoliceStations/{circle_id?}', [\Modules\Settings\Http\Controllers\UsersController::class, 'getCirclePoliceStations'])->name('getCirclePoliceStations');
    Route::get('list-hospital', [\App\Http\Controllers\HospitalController::class, 'listHospital'])->name('list.hospital');

    Route::get('add-police-station', [\App\Http\Controllers\PoliceStationController::class, 'index'])->name('add.new.police.station');
    Route::get('list-police-station', [\App\Http\Controllers\PoliceStationController::class, 'listPoliceStation'])->name('list.police.station');
    Route::post('save-police-station', [\App\Http\Controllers\PoliceStationController::class, 'savePoliceStation'])->name('save.police.station');
    Route::get('edit-police-station/{id}', [\App\Http\Controllers\PoliceStationController::class, 'editPoliceStation'])->name('edit.police.station');
    Route::post('update-police-station', [\App\Http\Controllers\PoliceStationController::class, 'updatePoliceStation'])->name('update.police.station');

    Route::get('add-police-post', [\App\Http\Controllers\PolicePostController::class, 'index'])->name('add.new.police.post');
    Route::get('list-police-post', [\App\Http\Controllers\PolicePostController::class, 'listPolicePost'])->name('list.police.post');
    Route::post('save-police-post', [\App\Http\Controllers\PolicePostController::class, 'savePolicePost'])->name('save.police.post');
    Route::get('edit-police-post/{id}', [\App\Http\Controllers\PolicePostController::class, 'editPolicePost'])->name('edit.police.post');
    Route::post('update-police-post', [\App\Http\Controllers\PolicePostController::class, 'updatePolicePost'])->name('update.police.post');

    Route::get('add-police-line', [\App\Http\Controllers\PoliceLineController::class, 'index'])->name('add.new.police.line');
    Route::get('list-police-line', [\App\Http\Controllers\PoliceLineController::class, 'listPoliceLine'])->name('list.police.line');
    Route::post('save-police-line', [\App\Http\Controllers\PoliceLineController::class, 'savePoliceLine'])->name('save.police.line');
    Route::get('edit-police-line/{id}', [\App\Http\Controllers\PoliceLineController::class, 'editPoliceLine'])->name('edit.police.line');
    Route::post('update-police-line', [\App\Http\Controllers\PoliceLineController::class, 'updatePoliceLine'])->name('update.police.line');


    Route::get('add-polling-station', [\App\Http\Controllers\PollingStationController::class, 'index'])->name('add.new.polling.station');
    Route::get('list-polling-station', [\App\Http\Controllers\PollingStationController::class, 'listPollingStation'])->name('list.polling.station');
    Route::post('save-polling-station', [\App\Http\Controllers\PollingStationController::class, 'savePollingStation'])->name('save.polling.station');
    Route::get('edit-polling-station/{id}', [\App\Http\Controllers\PollingStationController::class, 'editPollingStation'])->name('edit.polling.station');
    Route::post('update-polling-station', [\App\Http\Controllers\PollingStationController::class, 'updatePollingStation'])->name('update.polling.station');

    Route::get('add-hospital', [\App\Http\Controllers\HospitalController::class, 'index'])->name('add.new.hospital');
    Route::post('save-hospital', [\App\Http\Controllers\HospitalController::class, 'saveHospital'])->name('save-hospital');
    Route::get('edit-hospital/{id}', [\App\Http\Controllers\HospitalController::class, 'edit'])->name('edit.hospital');
    Route::post('update-hospital', [\App\Http\Controllers\HospitalController::class, 'updateHospital'])->name('update.hospital');

    Route::get('add-police-mobile', [\App\Http\Controllers\PoliceMobileController::class, 'index'])->name('add.new.police.mobile');
    Route::get('list-police-mobile', [\App\Http\Controllers\PoliceMobileController::class, 'listPoliceMobile'])->name('list.police.mobile');
    Route::post('save-police-mobile', [\App\Http\Controllers\PoliceMobileController::class, 'savePoliceMobile'])->name('save.police.mobile');
    Route::get('edit-police-mobile/{id}', [\App\Http\Controllers\PoliceMobileController::class, 'editPoliceMobile'])->name('edit.police.mobile');
    Route::post('update-police-mobile', [\App\Http\Controllers\PoliceMobileController::class, 'updatePoliceMobile'])->name('update.police.mobile');



    Route::POST('create-meeting', [\App\Http\Controllers\MeetingController::class, 'createMeeting'])->name('create-meeting');
    Route::post('create-full-meeting', [\App\Http\Controllers\MeetingController::class, 'createFullMeeting'])->name('create-full-meeting');
    Route::get('list-meeting', [\App\Http\Controllers\MeetingController::class, 'listMeeting'])->name('list.meeting');
    Route::post('emergency_alert', [\App\Http\Controllers\MeetingController::class, 'emergency_alert'])->name('emergency_alert');
    Route::post('assignUserToMeeting', [\App\Http\Controllers\MeetingController::class, 'assignUserToMeeting'])->name('assignUserToMeeting');

});