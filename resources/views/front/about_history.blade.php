@extends('front.layout.app')

@section('seo_title'){{ $page_data->about_seo_title }}@endsection
@section('seo_meta_description'){{ $page_data->about_seo_meta_description }}@endsection

@section('main_content')

<div class="page-banner" style="background-image: url({{ asset('uploads/'.$page_data->about_banner) }})">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1>SEJARAH DESA</h1>
            </div>
        </div>
    </div>
</div>

<div class="home-about">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="left wow fadeInLeft">
                    <img src="{{ asset('uploads/'.$page_data->about_photo) }}" alt="">
                </div>
            </div>
            <div class="col-md-8">
                <div class="right wow fadeInRight">
                    <div>
                        <h3>SEJARAH DESA PANGEBATAN</h3>
                        <br>
                        <p>{!! nl2br($page_data->about_history) !!}</p>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
</div>

















@endsection