@extends('admin.layout.app')

@section('heading', 'Add Banner Images')

@section('rightside_button')
<a href="{{ route('home_banner_image_show') }}" class="btn btn-primary"><i class="fas fa-plus"></i> View All</a>
@endsection

@section('main_content')

<div class="section-body">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <form action="{{ route('home_banner_image_store') }}" method="post" enctype="multipart/form-data">
                        @csrf
                        <div class="row">
                            <div class="col-md-12">
                                <div class="mb-4">
                                    <label class="form-label">Show Image *</label>
                                    <div>
                                       <img id="showImage" src="{{ asset('uploads/banner_home.jpg') }}" alt="" class="profile-photo w_300">
                                    </div>                             
                                </div>
                                <div class="mb-4">
                                    <label class="form-label">image *</label>
                                    <div>
                                        <input id="image" type="file" name="image">
                                    </div>
                                </div>
                                <div class="mb-4">
                                    <label class="form-label"></label>
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    image.onchange = evt => {
        const [file] = image.files
        if (file) {
            showImage.src = URL.createObjectURL(file)
        }
    }
</script>
@endsection