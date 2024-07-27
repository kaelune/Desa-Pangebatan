@extends('admin.layout.app')

@section('heading', 'Edit Faqs')

@section('rightside_button')
<a href="{{ route('admin_home_faq') }}" class="btn btn-primary"><i class="fas fa-plus"></i> View All</a>
@endsection

@section('main_content')
<div class="section-body">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <form action="{{ route('admin_faq_update',$faq_single->id) }}" method="post">
                        @csrf
                        <div class="row">
                            <div class="col-md-12">
                                <div class="mb-4">
                                    <label class="form-label">Question *</label>
                                    <input type="text" class="form-control" name="question" value="{{ $faq_single->question }}">
                                </div>
                                <div class="mb-4">
                                    <label class="form-label">Answer *</label>
                                    <input type="text" class="form-control" name="answer" value="{{ $faq_single->answer}}">
                                </div>

                                <div class="mb-4">
                                    <label class="form-label"></label>
                                    <button type="submit" class="btn btn-primary">Update</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection