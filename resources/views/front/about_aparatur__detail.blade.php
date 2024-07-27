@extends('front.layout.app')

@section('seo_title'){{ $page_data->about_seo_title }}@endsection
@section('seo_meta_description'){{ $page_data->about_seo_meta_description }}@endsection

@section('main_content')


<div class="page-banner" style="background-image: url({{ asset('uploads/'.$page_data->about_banner) }})">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1>{{ $single_aparatur->designation }}</h1>
            </div>
        </div>
    </div>
</div>

<div class="home-about">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="left wow fadeInLeft">
                    <img src="{{ asset('uploads/'.$single_aparatur->photo) }}" alt="">
                </div>
            </div>
            <div class="col-md-8">
                <div class="right wow fadeInRight">

                    <h2>{{ $single_aparatur->designation }}</h2>
                    <br>
                    @if($single_aparatur->job_des != '')
                    <h3>Diskripsi Tugas</h3>
                    <p>{!! nl2br($single_aparatur->job_des) !!}</p>
                    @endif
                    
                    @if( $single_aparatur->name!='' ||  $single_aparatur->address!='' || $single_aparatur->phone!='' || $single_aparatur->email!='')
                    <div class="contact-info">
                        <div class="table-responsive">
                            <table class="table">

                                @if($single_aparatur->name!='')
                                <tr>
                                    <td><i class="far fa-user"></i></td>
                                    <td>Name</td>
                                    <td>:</td>
                                    <td>{{ $single_aparatur->name }}</td>
                                </tr>
                                @endif

                                @if($single_aparatur->address!='')
                                <tr>
                                    <td><i class="fas fa-home"></i></td>
                                    <td>Address</td>
                                    <td>:</td>
                                    <td>{{ $single_aparatur->address }}</td>
                                </tr>
                                @endif

                                @if( $single_aparatur->phone!='')
                                <tr>
                                    <td><i class="fas fa-phone"></i></td>
                                    <td>Phone</td>
                                    <td>:</td>
                                    <td>{{  $single_aparatur->phone }}</td>
                                </tr>
                                @endif

                                @if($single_aparatur->email!='')
                                <tr>
                                    <td><i class="far fa-envelope"></i></td>
                                    <td>Email</td>
                                    <td>:</td>
                                    <td>{{$single_aparatur->email }}</td>
                                </tr>
                                @endif

                            </table>
                        </div>
                    </div>
                    @endif
                    <div class="button">
                        <a style="background: {{ $global_setting_data->theme_color }}" href="{{ route('aparatur') }}" class="btn">Kembali</a>
                    </div>

                    {{-- @if( $page_data->about_icon1!='' || $page_data->about_icon2!='' || $page_data->about_icon3!='' || $page_data->about_icon4!='' || $page_data->about_icon5!='')
                    <div class="social">
                        <h3>Find me on social media:</h3>
                        <ul>                            
                            @if($page_data->about_icon1!='')
                            <li><a href="{{ $page_data->about_icon1_url }}"><i class="{{ $page_data->about_icon1 }}"></i></a></li>
                            @endif

                            @if($page_data->about_icon2!='')
                            <li><a href="{{ $page_data->about_icon2_url }}"><i class="{{ $page_data->about_icon2 }}"></i></a></li>
                            @endif

                            @if($page_data->about_icon3!='')
                            <li><a href="{{ $page_data->about_icon3_url }}"><i class="{{ $page_data->about_icon3 }}"></i></a></li>
                            @endif

                            @if($page_data->about_icon4!='')
                            <li><a href="{{ $page_data->about_icon4_url }}"><i class="{{ $page_data->about_icon4 }}"></i></a></li>
                            @endif

                            @if($page_data->about_icon5!='')
                            <li><a href="{{ $page_data->about_icon5_url }}"><i class="{{ $page_data->about_icon5 }}"></i></a></li>
                            @endif
                        </ul>
                    </div>
                    @endif --}}

                </div>
            </div>
            
        </div>
    </div>
</div>
@endsection