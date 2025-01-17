<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Mail\Websitemail;
use App\Models\PageItem;
use App\Models\Admin;
use App\Models\ReceiveMessage;

class ContactController extends Controller
{
    public function index() 
    {
        $page_data = PageItem::where('id',1)->first();
        return view('front.contact',compact('page_data'));
    }

    // public function send_email(Request $request)
    // {
    //     $request->validate([
    //         'name' => 'required',
    //         'email' => 'required|email',
    //         'comment' => 'required',
    //     ]);

    //     $admin_data = Admin::where('id',1)->first();
    //     $admin_email = $admin_data->email;

    //     $subject = 'Contact Form Message';
    //     $message = 'Visitor Information<br><br>';
    //     $message .= '<b>Name: </b><br>'.$request->name.'<br><br>';
    //     $message .= '<b>Email: </b><br>'.$request->email.'<br><br>';
    //     $message .= '<b>Phone: </b><br>'.$request->phone.'<br><br>';
    //     $message .= '<b>Comment: </b><br>'.$request->comment;

    //     \Mail::to($admin_email)->send(new Websitemail($subject,$message));
    //     return redirect()->back()->with('success','Your message is sent successfully!');
    // }

    public function store(Request $request)
    {
        $messaga_data = new ReceiveMessage();
        $request->validate([
            'name' => 'required',
            'email' => 'required|email',
            'comment' => 'required'
        ]);
        $messaga_data->name = $request->name;
        $messaga_data->email = $request->email;
        $messaga_data->phone = $request->phone;
        $messaga_data->comment = $request->comment;
        $messaga_data->save();

        return redirect()->route('contact')->with('success', 'Pesan sudah kami terima. Kami akan segera menindaklanjuti');
    }


}
