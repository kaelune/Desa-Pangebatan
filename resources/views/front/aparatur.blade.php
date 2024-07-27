@extends('front.layout.app')

@section('seo_title'){{ $page_data->about_seo_title }}@endsection
@section('seo_meta_description'){{ $page_data->about_seo_meta_description }}@endsection

@section('main_content')

<div class="page-banner" style="background-image: url({{ asset('uploads/'.$page_data->about_banner) }})">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1>Aparatur Desa</h1>
            </div>
        </div>
    </div>
</div>

<div class="aparatur">
    <div class="container">
        <div class="row">
            <div class="col-md-12 heading">
                <h2 style="color: "></h2>
                <h3></h3>
            </div>
    
            @foreach($all_data as $item)
            <div class="col-md-3 wow fadeInUp">
                <div class="item">
                    <div class="photo">
                        <img src=" {{asset('uploads/'.$item->photo)}}" alt="">
                    </div>
                    <div class=" text">
                        <h3> {{ $item->name }} </h3>
                        <h4> {{ $item->designation }} </h4>
                        <div class="button">
                            <a style="background: {{ $global_setting_data->theme_color }}" href="{{ route('aparatur_detail', $item->id) }}" class="btn btn-primary">Read More</a>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach         

        </div>
    </div>
</div>
@endsection