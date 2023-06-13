<?php

namespace App\Http\Controllers;

use App\Models\teacher;
use App\Http\Requests\StoreteacherRequest;
use App\Http\Requests\UpdateteacherRequest;
use Illuminate\Support\Facades\DB;
class TeacherController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $posts =DB::table('teachers')->get();
        return view('teacher.index', compact('posts'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('teacher.insert');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreteacherRequest $request)
    {
        DB::table(table:'teachers')->insert([


            'Name_tracher'=>$request->Name_tracher,
            'Date_birth'=>$request->Date_birth,
            'Qualification'=>$request->Qualification,
            'Work'=>$request->Work,
            'Salary'=>$request->Salary,
            'phone'=>$request->phone,
            'Email'=>$request->Email,
            'qualification_studi_id'=>$request->qualification_studi_id,
            'Teaching_years'=>$request->Teaching_years,
            'Center_they_work'=>$request->Center_they_work,
            'Address'=>$request->Address,
            'sex_id'=>$request->sex_id,
            'sexual_id'=>$request->sexual_id,
            'identiti_id'=>$request->identiti_id,
            'Number_identity'=>$request->Number_identity,
        ]);
         return response(content: 'تم الاضافة بنجاح');
    //    return redirect()->route('teacher.index');
    }

    /**
     * Display the specified resource.
     */
    public function show(teacher $teacher)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(teacher $teacher)
    {
        // $post = DB::table(table:'teachers')->where( 'id',$id)->first();
        //    return response(content: 'تم الاضافة بنجاح');
   //return $post;
//   return view( 'teacher.edit', compact('post'));
//    return redirect()->route('quran.index');
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateteacherRequest $request, teacher $teacher)
    {
         DB::table(table:'teachers')->update([


            'Name_tracher'=>$request->Name_tracher,
            'Date_birth'=>$request->Date_birth,
            'Qualification'=>$request->Qualification,
            'Work'=>$request->Work,
            'Salary'=>$request->Salary,
            'phone'=>$request->phone,
            'Email'=>$request->Email,
            'qualification_studi_id'=>$request->ID_Qualification,
            'Teaching_years'=>$request->Teaching_years,
            'Center_they_work'=>$request->Center_they_work,
            'Address'=>$request->Address,
            'sex_id'=>$request->ID_Sex,
            'sexual_id'=>$request->ID_Sexual,
            'identiti_id'=>$request->ID_Identity,
            'Number_identity'=>$request->Number_identity,
        ]);
        //  return response(content: 'تم الاضافة بنجاح');
       return redirect()->route('teacher.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(teacher $teacher)
    {
        DB::table(table:'teachers')->where( 'id',$id)->delete();
        return redirect()->route('teacher.index');
        //return $id;
    }
    public function deleteTruncate(){
        DB::table(table:'teachers')->Truncate();
        return redirect()->route('teacher.index');
     }

}
