<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Models\Faq;
use App\Models\PageItem;
use Illuminate\Http\Request;

class FaqController extends Controller
{
    public function index() {
        $faq = Faq::get();
        $page_data = PageItem::where('id', 1)->first();
        return view('front.faq',compact('faq', 'page_data'));
    }
}
