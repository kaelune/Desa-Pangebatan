<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Profile;
use Illuminate\Http\Request;
use Intervention\Image\Facades\Image;

class AdminProfileDesaController extends Controller
{
    public function index()
    {
        $all_data = Profile::orderBy('id','asc')->get();
        return view('admin.profile_show', compact('all_data'));
    }

    public function add()
    {
        return view('admin.profile_add');
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'designation' => 'required',
            'job_des' => 'required',
            
        ]);

        $obj = new Profile();

        $image = $request->photo;
        if($image) {
            $request->validate([
                'photo' => 'required|image|mimes:jpg,jpeg,png,gif'
            ]);

            $ext = $request->file('photo')->getClientOriginalExtension();
            $fileName = 'profile_'.time().'.'.$ext;
            Image::make($image)->resize(512, 512)->save('uploads/'.$fileName);
            $obj['photo'] =$fileName;

        }

        // $ext = $request->file('photo')->extension();
        // $final_name = 'profile_'.time().'.'.$ext;
        // $request->file('photo')->move(public_path('uploads/'),$final_name);
        // $obj->photo = $final_name;
        
        $obj->name = $request->name;
        $obj->designation = $request->designation;
        $obj->job_des = $request->job_des;
        $obj->address = $request->address;
        $obj->phone = $request->phone;
        $obj->email = $request->email;
        $obj->save();

        return redirect()->route('admin_page_profile')->with('success', 'Data is inserted successfully.');
    }

    public function edit($id)
    {
        $row_data = Profile::where('id',$id)->first();
        return view('admin.profile_edit',compact('row_data'));
    }

    public function update(Request $request,$id)
    {
        $request->validate([
            'name' => 'required',
            'designation' => 'required',
            'job_des' => 'required',
        ]);

        $obj = Profile::where('id',$id)->first();

        $image = $request->photo;
        if($image) {
            $request->validate([
                'photo' => 'required|image|mimes:jpg,jpeg,png,gif'
            ]);
            unlink(public_path('uploads/'. $obj->photo));
            $ext = $request->file('photo')->getClientOriginalExtension();
            $fileName = 'profile_'.time().'.'.$ext;
            Image::make($image)->resize(512, 512)->save('uploads/'.$fileName);
            $obj['photo'] = $fileName;
        }

        // if($request->hasFile('photo')) {
        //     $request->validate([
        //         'photo' => 'image|mimes:jpg,jpeg,png,gif'
        //     ]);
        //     unlink(public_path('uploads/'.$obj->photo));
        //     $ext = $request->file('photo')->extension();
        //     $final_name = 'profile_'.time().'.'.$ext;
        //     $request->file('photo')->move(public_path('uploads/'),$final_name);
        //     $obj->photo = $final_name;
        // }

        $obj->name = $request->name;
        $obj->designation = $request->designation;
        $obj->job_des = $request->job_des;
        $obj->address = $request->address;
        $obj->phone = $request->phone;
        $obj->email = $request->email;
        $obj->update();

        return redirect()->route('admin_page_profile')->with('success', 'Data is updated successfully.');
    }

    public function delete($id)
    {
        $row_data = Profile::where('id',$id)->first();
        unlink(public_path('uploads/'.$row_data->photo));
        $row_data->delete();

        return redirect()->back()->with('success', 'Data is deleted successfully.');
    }
}
