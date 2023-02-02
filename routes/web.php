<?php

use App\Doctors;
use App\Http\Controllers\Controller;
use App\Http\Controllers\DoctorsController;
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

Route::get('/', function () {
    return view('layouts.main');
});


Route::resource('doctors', 'DoctorsController');
// Route::get('doctors', [DoctorsController::class, 'index'])->name('doctors.index');
// Route::post('doctors', [DoctorsController::class, 'store'])->name('doctors.store');
// Route::get('doctors/create', [DoctorsController::class, 'create'])->name('doctors.create');
// Route::get('doctors/{doctor}', [DoctorsController::class, 'show'])->name('doctors.show');
// Route::get('doctors/{docto}', [DoctController::class, 'show'])->name('doct.show');
// Route::put('doctors/{doctor}', [DoctorsController::class, 'update'])->name('doctors.update');
// Route::delete('doctors/{doctor}', [DoctorsController::class, 'destroy'])->name('doctors.destroy');
// Route::get('doctors/{doctor}/edit', [DoctorsController::class, 'edit'])->name('doctors.edit');
Route::resource('patients', 'PatientsController');
Route::resource('polyclinics', 'PolyclinicsController');
