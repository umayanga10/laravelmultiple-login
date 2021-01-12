<?php

namespace App\Http\Controllers\Admin;

use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class DashboardController extends Controller
{
    public function display()
    {
        $register = User::all();
        return view('admin.register')->with('register',$register);
    }

    public function edit(Request $request, $id)
    {
        $rgister =User::find($id);
        return view('admin.editregister')->with('register',$rgister);
    }

    public function update(Request $request,$id)
    {
        $register =User::find($id);

        $register->name =$request->input('name');
        $register->email =$request->input('email');
        $register->usertype =$request->input('user');

        $register->update();

        return redirect('/register')->with('status','Successfully Update');
    }

    public function delete($id)
    {
        $register =User::find($id);
        $register->delete();
        return redirect('/register')->with('status','Successfully Deleted');
    }

}






