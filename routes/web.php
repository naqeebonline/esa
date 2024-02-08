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

Route::group(['middleware' => 'auth'], function () {
    Route::get('user-dashboard', [\App\Http\Controllers\HomeController::class, 'userDashboard'])->name('user.dashboard');
    Route::get('getAllPoliceStations', [\App\Http\Controllers\HomeController::class, 'getAllPoliceStations'])->name('getAllPoliceStations');
    Route::post('getAllPoliceMobiles', [\App\Http\Controllers\HomeController::class, 'getAllPoliceMobiles'])->name('getAllPoliceMobiles');
    Route::post('getAllPoliceMobilesDD', [\App\Http\Controllers\HomeController::class, 'getAllPoliceMobilesDD'])->name('getAllPoliceMobilesDD');
    Route::post('getAllPoliceLines', [\App\Http\Controllers\HomeController::class, 'getAllPoliceLines'])->name('getAllPoliceLines');
    Route::post('/store-token', [\App\Http\Controllers\NotificationSendController::class, 'updateDeviceToken'])->name('store.token');
    Route::post('/send-web-notification', [\App\Http\Controllers\NotificationSendController::class, 'sendNotification'])->name('send.web-notification');
    Route::post('/sendNotificationDashboard', [\App\Http\Controllers\NotificationSendController::class, 'sendNotificationDashboard'])->name('send.sendNotificationDashboard');

    Route::get('getTehsils/{id?}', [\Modules\Settings\Http\Controllers\UsersController::class, 'getTehsils'])->name('getTehsils');
    Route::get('getCircles/{district_id?}', [\Modules\Settings\Http\Controllers\UsersController::class, 'getCircles'])->name('getCircles');
    Route::get('getPoliceMobile/{district_id?}', [\Modules\Settings\Http\Controllers\UsersController::class, 'getPoliceMobile'])->name('getPoliceMobile');
    Route::get('getPollingStations/{district_id?}', [\Modules\Settings\Http\Controllers\UsersController::class, 'getPollingStations'])->name('getPollingStations');
    Route::get('getHospitals/{district_id?}', [\Modules\Settings\Http\Controllers\UsersController::class, 'getHospitals'])->name('getHospitals');
    Route::post('getMultiCircles', [\Modules\Settings\Http\Controllers\UsersController::class, 'getMultiCircles'])->name('getMultiCircles');
    Route::post('getMultiDistricts', [\Modules\Settings\Http\Controllers\UsersController::class, 'getMultiDistricts'])->name('getMultiDistricts');
    Route::post('getAllPollingStations', [\Modules\Settings\Http\Controllers\UsersController::class, 'getAllPollingStations'])->name('getAllPollingStations');
    Route::post('loadMultiPoliceStations', [\Modules\Settings\Http\Controllers\UsersController::class, 'loadMultiPoliceStations'])->name('loadMultiPoliceStations');
    Route::post('loadMultiPollingStations', [\Modules\Settings\Http\Controllers\UsersController::class, 'loadMultiPollingStations'])->name('loadMultiPollingStations');
    Route::post('getPoliceStations', [\Modules\Settings\Http\Controllers\UsersController::class, 'getPoliceStations'])->name('getPoliceStations');
    Route::get('getPoliceStationUser/{id?}', [\Modules\Settings\Http\Controllers\UsersController::class, 'getPoliceStationUser'])->name('getPoliceStationUser');
    Route::get('getDistrictUser/{id?}', [\Modules\Settings\Http\Controllers\UsersController::class, 'getDistrictUser'])->name('getDistrictUser');
    Route::get('getCirclePoliceStations/{circle_id?}', [\Modules\Settings\Http\Controllers\UsersController::class, 'getCirclePoliceStations'])->name('getCirclePoliceStations');
    Route::get('list-hospital', [\App\Http\Controllers\HospitalController::class, 'listHospital'])->name('list.hospital');
    Route::get('all-hospital', [\App\Http\Controllers\HospitalController::class, 'allHospital'])->name('all.hospital');
    Route::post('getMultiDistrictUser', [\Modules\Settings\Http\Controllers\UsersController::class, 'getMultiDistrictUser'])->name('getMultiDistrictUser');
    Route::post('getMultiPoliceStationUser', [\Modules\Settings\Http\Controllers\UsersController::class, 'getMultiPoliceStationUser'])->name('getMultiPoliceStationUser');

    Route::get('add-police-station', [\App\Http\Controllers\PoliceStationController::class, 'index'])->name('add.new.police.station');
    Route::get('list-police-station', [\App\Http\Controllers\PoliceStationController::class, 'listPoliceStation'])->name('list.police.station');
    Route::post('save-police-station', [\App\Http\Controllers\PoliceStationController::class, 'savePoliceStation'])->name('save.police.station');
    Route::get('edit-police-station/{id}', [\App\Http\Controllers\PoliceStationController::class, 'editPoliceStation'])->name('edit.police.station');
    Route::post('update-police-station', [\App\Http\Controllers\PoliceStationController::class, 'updatePoliceStation'])->name('update.police.station');
    Route::post('delete-police-station', [\App\Http\Controllers\PoliceStationController::class, 'destroy'])->name('delete.police.station');
    Route::get('all-police-station', [\App\Http\Controllers\PoliceStationController::class, 'allPoliceStations'])->name('all.police.station');
    Route::get('exportPoliceStations', [\App\Http\Controllers\PoliceStationController::class, 'exportPoliceStations'])->name('exportPoliceStations');

    Route::get('add-police-post', [\App\Http\Controllers\PolicePostController::class, 'index'])->name('add.new.police.post');
    Route::get('list-police-post', [\App\Http\Controllers\PolicePostController::class, 'listPolicePost'])->name('list.police.post');
    Route::post('save-police-post', [\App\Http\Controllers\PolicePostController::class, 'savePolicePost'])->name('save.police.post');
    Route::get('edit-police-post/{id}', [\App\Http\Controllers\PolicePostController::class, 'editPolicePost'])->name('edit.police.post');
    Route::post('update-police-post', [\App\Http\Controllers\PolicePostController::class, 'updatePolicePost'])->name('update.police.post');
    Route::post('delete-police-post', [\App\Http\Controllers\PolicePostController::class, 'destroy'])->name('delete.police.post');
    Route::get('all-police-post', [\App\Http\Controllers\PolicePostController::class, 'allPolicePost'])->name('all.police.post');

    Route::get('add-police-line', [\App\Http\Controllers\PoliceLineController::class, 'index'])->name('add.new.police.line');
    Route::get('list-police-line', [\App\Http\Controllers\PoliceLineController::class, 'listPoliceLine'])->name('list.police.line');
    Route::post('save-police-line', [\App\Http\Controllers\PoliceLineController::class, 'savePoliceLine'])->name('save.police.line');
    Route::get('edit-police-line/{id}', [\App\Http\Controllers\PoliceLineController::class, 'editPoliceLine'])->name('edit.police.line');
    Route::post('update-police-line', [\App\Http\Controllers\PoliceLineController::class, 'updatePoliceLine'])->name('update.police.line');
    Route::post('delete-police-line', [\App\Http\Controllers\PoliceLineController::class, 'destroy'])->name('delete.police.line');
    Route::get('police-line', [\App\Http\Controllers\PoliceLineController::class, 'policeLine'])->name('all.police.line');


    Route::get('add-polling-station', [\App\Http\Controllers\PollingStationController::class, 'index'])->name('add.new.polling.station');
    Route::get('list-polling-station', [\App\Http\Controllers\PollingStationController::class, 'listPollingStation'])->name('list.polling.station');
    Route::post('save-polling-station', [\App\Http\Controllers\PollingStationController::class, 'savePollingStation'])->name('save.polling.station');
    Route::get('edit-polling-station/{id}', [\App\Http\Controllers\PollingStationController::class, 'editPollingStation'])->name('edit.polling.station');
    Route::post('update-polling-station', [\App\Http\Controllers\PollingStationController::class, 'updatePollingStation'])->name('update.polling.station');
    Route::get('polling-station', [\App\Http\Controllers\PollingStationController::class, 'pollingStation'])->name('all.polling.station');
    Route::get('exportPollingStations', [\App\Http\Controllers\PollingStationController::class, 'exportPollingStations'])->name('exportPollingStations');

    Route::get('add-hospital', [\App\Http\Controllers\HospitalController::class, 'index'])->name('add.new.hospital');
    Route::post('save-hospital', [\App\Http\Controllers\HospitalController::class, 'saveHospital'])->name('save-hospital');
    Route::get('edit-hospital/{id}', [\App\Http\Controllers\HospitalController::class, 'edit'])->name('edit.hospital');
    Route::post('update-hospital', [\App\Http\Controllers\HospitalController::class, 'updateHospital'])->name('update.hospital');

    Route::get('add-police-mobile', [\App\Http\Controllers\PoliceMobileController::class, 'index'])->name('add.new.police.mobile');
    Route::get('list-police-mobile', [\App\Http\Controllers\PoliceMobileController::class, 'listPoliceMobile'])->name('list.police.mobile');
    Route::post('save-police-mobile', [\App\Http\Controllers\PoliceMobileController::class, 'savePoliceMobile'])->name('save.police.mobile');
    Route::get('edit-police-mobile/{id}', [\App\Http\Controllers\PoliceMobileController::class, 'editPoliceMobile'])->name('edit.police.mobile');
    Route::get('view-on-map/{id}', [\App\Http\Controllers\PoliceMobileController::class, 'viewOnMap'])->name('viewOnMap');
    Route::post('update-police-mobile', [\App\Http\Controllers\PoliceMobileController::class, 'updatePoliceMobile'])->name('update.police.mobile');
    Route::get('police-mobile', [\App\Http\Controllers\PoliceMobileController::class, 'policeMobile'])->name('all.police.mobile');
    Route::get('exportPoliceMobile', [\App\Http\Controllers\PoliceMobileController::class, 'exportPoliceMobile'])->name('exportPoliceMobile');
    Route::get('mobile_vehicles_on_map', [\App\Http\Controllers\PoliceMobileController::class, 'mobileVehiclesOnMap'])->name('mobileVehiclesOnMap');
    Route::post('getMobileHistory', [\App\Http\Controllers\PoliceMobileController::class, 'getMobileHistory'])->name('getMobileHistory');
    Route::post('getPoliceMobileByDistrictPoliceStation', [\Modules\Settings\Http\Controllers\UsersController::class, 'getPoliceMobileByDistrictPoliceStation'])->name('getPoliceMobileByDistrictPoliceStation');


    Route::POST('create-meeting', [\App\Http\Controllers\MeetingController::class, 'createMeeting'])->name('create-meeting');
    Route::post('create-full-meeting', [\App\Http\Controllers\MeetingController::class, 'createFullMeeting'])->name('create-full-meeting');
    Route::get('list-meeting', [\App\Http\Controllers\MeetingController::class, 'listMeeting'])->name('list.meeting');
    Route::post('emergency_alert', [\App\Http\Controllers\MeetingController::class, 'emergency_alert'])->name('emergency_alert');
    Route::post('assignUserToMeeting', [\App\Http\Controllers\MeetingController::class, 'assignUserToMeeting'])->name('assignUserToMeeting');



    Route::post('sendMeetingNotification', [\App\Http\Controllers\MeetingController::class, 'sendMeetingNotification'])->name('sendMeetingNotification');
    Route::get('list-district', [\App\Http\Controllers\DistrictController::class, 'listdistricts'])->name('list.districts');
    Route::get('list-circle', [\App\Http\Controllers\CircleController::class, 'listcircles'])->name('list.circles');
    Route::post('delete-table-data', [\App\Http\Controllers\PoliceStationController::class, 'deleteTableData'])->name('delete-table-data');
    // Route::get('list-circle', [\App\Http\Controllers\CircleController::class, 'listcircles'])->name('list.circles');

    Route::get('add-notification', [\App\Http\Controllers\NotificationController::class, 'index'])->name('add.new.notifications');
    Route::get('list-notification', [\App\Http\Controllers\NotificationController::class, 'listNotification'])->name('list.notifications');
    Route::post('save-notification', [\App\Http\Controllers\NotificationController::class, 'saveNotification'])->name('save.notifications');
    Route::get('edit-notification/{id}', [\App\Http\Controllers\NotificationController::class, 'editNotification'])->name('edit.notifications');
    Route::post('update-notification', [\App\Http\Controllers\NotificationController::class, 'updateNotification'])->name('update.notifications');
    Route::get('notification', [\App\Http\Controllers\NotificationController::class, 'allNotification'])->name('all.notification');



    Route::get('list-emergency-alerts', [\App\Http\Controllers\EmergencyAlertsController::class, 'index'])->name('listEmergencyAlerts');
    Route::get('emergency-alerts', [\App\Http\Controllers\EmergencyAlertsController::class, 'allAlerts'])->name('all.emergency.alerts');
    Route::get('view-emergency-alert/{id}', [\App\Http\Controllers\EmergencyAlertsController::class, 'viewEmergencyAlert'])->name('view.emergency.alert');
    Route::get('getCountEmergencyAlerts', [\App\Http\Controllers\EmergencyAlertsController::class, 'getCountEmergencyAlerts'])->name('getCountEmergencyAlerts');
    Route::post('update-alert-status', [\App\Http\Controllers\EmergencyAlertsController::class, 'updateAlertStatus'])->name('updateAlertStatus');

    Route::get('add-credentials', [\App\Http\Controllers\ZoomCredentialsController::class, 'index'])->name('add.new.credentials');
    Route::get('list-credentials', [\App\Http\Controllers\ZoomCredentialsController::class, 'listCredentials'])->name('list.credentials');
    Route::post('save-credentials', [\App\Http\Controllers\ZoomCredentialsController::class, 'saveCredentials'])->name('save.credentials');
    Route::get('edit-credentials/{id}', [\App\Http\Controllers\ZoomCredentialsController::class, 'editCredentials'])->name('edit.credentials');
    Route::post('update-credentials', [\App\Http\Controllers\ZoomCredentialsController::class, 'updateCredentials'])->name('update.credentials');
    Route::get('credentials', [\App\Http\Controllers\ZoomCredentialsController::class, 'allCredentials'])->name('all.credentials');



    Route::post('findNearestResource', [\App\Http\Controllers\PollingStationController::class, 'findNearestResource'])->name('findNearestResource');
});