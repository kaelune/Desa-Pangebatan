<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Faq;
use Illuminate\Http\Request;

class AdminFaqController extends Controller
{
    public function index()
    {
        $faqs = Faq::get();
        return view('admin.faq_show', compact('faqs'));
    }

    public function create()
    {
        return view('admin.faq_add');
    }

    public function store(Request $request)
    {
        $request->validate([
            'question' => 'required',
            'answer' => 'required'
        ]);

        $obj = new Faq();
        $obj->question = $request->question;
        $obj->answer = $request->answer;
        $obj->save();

        return redirect()->route('admin_home_faq')->with('success', 'Data is saved successfully.');
    }

    public function edit($id)
    {
        $faq_single = Faq::where('id', $id)->first();
        return view('admin.faq_edit', compact('faq_single'));
    }

    public function update(Request $request, $id)
    {
        $obj = Faq::where('id', $id)->first();

        $request->validate([
            'question' => 'required',
            'answer' => 'required'
        ]);

        $obj->question = $request->question;
        $obj->answer = $request->answer;
        $obj->update();

        return redirect()->route('admin_home_faq')->with('success', 'Data is updated successfully.');
    }

    public function delete($id)
    {
        Faq::where('id', $id)->delete();
        return redirect()->route('admin_home_faq')->with('success', 'Data is deleted successfully.');
    }

}
