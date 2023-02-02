<?php

namespace App\Http\Controllers;

use App\Doctors;
use App\Polyclinics;
use App\Patients;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class DoctorsController extends Controller
{
    public $explode = null;
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $doctors = Doctors::all();
        return view('doctors.index', compact('doctors'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $polyclinics = Polyclinics::all();
        $q = DB::table('doctors')->select(DB::raw('MAX(RIGHT(registration_code,3)) as kode'));
        $kd="";
        if($q->count()>0)
        {
            foreach($q->get() as $k)
            {
                $tmp = ((int)$k->kode)+1;
                $kd = sprintf("%03s", $tmp);
            }
        }
        else
        {

            $kd = "001";
        }
        return view('doctors.create', compact('polyclinics', "kd"));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        Doctors::create($request->all());

        return redirect()->route('doctors.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Doctors  $doctors
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {

        $doctor = $id;
        $patient = Patients::where('doctor_id', $doctor)->get();
        return view('patients.index', ['patients' => $patient]);

    }



    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Doctors  $doctors
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $polyclinics = Polyclinics::all();
        $doctors = Doctors::find($id);
        return view('doctors.edit', compact('doctors', 'polyclinics'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Doctors  $doctors
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'registration_code' => 'required',
            'name' => 'required',
            'polyclinic_id' => 'required',
            ]);
            $doctors = Doctors::find($id);
            $doctors->registration_code = $request->registration_code;
            $doctors->name = $request->name;
            $doctors->polyclinic_id = $request->polyclinic_id;
            $doctors->save();
            return redirect()->route('doctors.index')->with('success', 'Doctors updated!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Doctors  $doctors
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $doctors = Doctors::find($id);
        $doctors->delete();
        return redirect()->route('doctors.index')->with('success', 'Doctors deleted!');
    }

    // public function ninggal()
    // {
    //     $polyclinics = Polyclinics::orderBy('id', 'desc')->get();
    //     return view('polyclinics.index', compact('polyclinics'));
    // }
}
