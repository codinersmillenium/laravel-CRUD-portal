<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class StudentController extends Controller
{
    public function index()
    {
        $student = DB::table('siswa')->get();
        return view('admin.student.student',['student' => $student]);
    }

    public function input(){
        return view('admin.student.input_student');
    }
    public function update($id){
        $student = DB::table('siswa')->where('id',$id)->get();
        return view('admin.student.update_student',['student' => $student]);
    }
public function update_data(Request $request)
{
    
    DB::table('siswa')->where('id',$request->id)->update([
        'nama' => $request->nama,
        'alamat' => $request->address,
        'tanggal_lahir' => $request->date,
        'cabang' => $request->cabang,
        'level' => $request->level,
        'updated_at'=>$request->update
    ]);
    return redirect('/admin/student');
}

public function data_student(Request $request)
{
    
    DB::table('siswa')->insert([
        'nama' => $request->nama,
        'alamat' => $request->address,
        'tanggal_lahir' => $request->date,
        'cabang' => $request->cabang,
        'level' => $request->level,
        'created_at'=>$request->create
    ]);
    return redirect('/admin/student');
}

public function delete($id){
    DB::table('siswa')->where('id',$id)->delete();
    return redirect('/admin/student');
}
}
