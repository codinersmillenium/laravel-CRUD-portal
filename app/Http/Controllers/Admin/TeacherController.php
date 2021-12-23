<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class TeacherController extends Controller
{
    public function index()
    {
        $teacher = DB::table('pengajar')->get();
        return view('admin.teacher.index',['teacher' => $teacher]);
    }

    public function input(){
        return view('admin.teacher.input_teacher');
    }
    public function update($id){
        $teacher = DB::table('pengajar')->where('id',$id)->get();
        return view('admin.teacher.update_teacher',['teacher' => $teacher]);
    }
public function update_data(Request $request)
{
    
    DB::table('pengajar')->where('id',$request->id)->update([
        'nama' => $request->nama,
        'alamat' => $request->address,
        'tanggal_lahir' => $request->date,
        'cabang' => $request->cabang,
        'level' => $request->level,
        'updated_at'=>$request->update
    ]);
    return redirect('/admin/teacher');
}

public function data_teacher(Request $request)
{
    
    DB::table('pengajar')->insert([
        'nama' => $request->nama,
        'alamat' => $request->address,
        'tanggal_lahir' => $request->date,
        'cabang' => $request->cabang,
        'level' => $request->level,
        'created_at'=>$request->create
    ]);
    return redirect('/admin/teacher');
}

public function delete($id){
    DB::table('pengajar')->where('id',$id)->delete();
    return redirect('/admin/teacher');
}
}
