@extends('front.layout.app')

@section('seo_title'){{ $page_data->faq_seo_title }}@endsection
@section('seo_meta_description'){{ $page_data->faq_seo_meta_description }}@endsection

@section('main_content')

<div class="page-banner" style="background-image: url({{ asset('uploads/'.$page_data->faq_banner) }})">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1>{{ $page_data->faq_heading }}</h1>
            </div>
        </div>
    </div>
</div>

<div class="page-content faq">
    <div class="container">
        <div class="row">
            <div class="col-md-12 d-flex justify-content-center">
                <div class="accordion" id="accordionExample">
                    @php $i=0; @endphp
                    @foreach($faq as $item)
                    @php $i++; @endphp
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="heading{{ $i }}">
                            <button
                                class="accordion-button collapsed"
                                type="button"
                                data-bs-toggle="collapse"
                                data-bs-target="#collapse{{ $i }}"
                                aria-expanded="false"
                                aria-controls="collapse{{ $i }}"
                            >
                            {{ $item->question }}
                            </button>
                        </h2>
                        <div
                            id="collapse{{ $i }}"
                            class="accordion-collapse collapse"
                            aria-labelledby="heading{{ $i }}"
                            data-bs-parent="#accordionExample"
                        >
                            <div class="accordion-body">
                                {!! nl2br($item->answer) !!}
                            </div>
                        </div>
                    </div>
                    @endforeach

                </div>
            </div>
        </div>
    </div>
</div>

@endsection