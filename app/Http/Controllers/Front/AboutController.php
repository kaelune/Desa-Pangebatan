<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\PageItem;
use App\Models\Profile;

class AboutController extends Controller
{
    public function index() 
    {
        $page_data = PageItem::where('id',1)->first();
        return view('front.about',compact('page_data'));
    }
    public function aparatur() 
    {
        $all_data = Profile::get();
        $page_data = PageItem::where('id',1)->first();
        return view('front.aparatur',compact('all_data','page_data'));
    }

    public function aparatur_detail($id)
    {
        $page_data = PageItem::where('id',1)->first();
        $single_aparatur = Profile::where('id',$id)->first();
        return view('front.about_aparatur__detail', compact('page_data', 'single_aparatur'));
    }

    public function visi_misi() 
    {
        $page_data = PageItem::where('id',1)->first();
        return view('front.about_visi_misi',compact('page_data'));
    }
    public function history() 
    {
        $page_data = PageItem::where('id',1)->first();
        return view('front.about_history',compact('page_data'));
    }


}
