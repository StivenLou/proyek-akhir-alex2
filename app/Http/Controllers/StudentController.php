<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Student;

class StudentController extends Controller
{
    public function index()
    {
        //$students = Student::all();

        //$students = Student::where('gender', 'P')->orWhere('birth_place', 'Bandung')->get();

        //$students = Student::orderBy('name', 'desc')->get();

        //$students = Student::where('code', 'like', '%'.'7'.'%')->get();

        //$students = Student::where('gender', 'W')->where('birth_place', 'Jakarta')->get();

        //$students = Student::where('code', 'like', '%'.'2'.'%')->where('birth_place', 'Jakarta')->orWhere('birth_place', 'like', '%'.'u'.'%')->where('gender', 'W')->get();

        //$students = Student::whereMonth('birth_date', '03')->get();

        $students = Student::orderBy('id', 'asc')->where('id', '>=', '5')->get();

        return view('student.index',['students' => $students]);
    }
}
