@extends('admin.layout.app')

@section('heading', 'Add Profile Desa')

@section('rightside_button')
<a href="{{ route('admin_page_profile') }}" class="btn btn-primary"><i class="fas fa-plus"></i> View All</a>
@endsection

@section('main_content')
<div class="section-body">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <form action="{{ route('admin_profile_store') }}" method="post" enctype="multipart/form-data">
                        @csrf
                        <div class="row">
                            <div class="col-md-12">

                                <div class="mb-4">
                                    <label class="form-label">Show Image *</label>
                                    <div>
                                       <img id="showImage" src="" alt="" class="profile-photo w_300">
                                    </div>                             
                                </div>
                                <div class="mb-4">
                                    <label class="form-label">image *</label>
                                    <div>
                                        <input id="image" type="file" name="photo">
                                    </div>
                                </div>



                                <div class="mb-4">
                                    <label class="form-label">Nama *</label>
                                    <input type="text" class="form-control" name="name">
                                </div>
                                <div class="mb-4">
                                    <label class="form-label">Jabatan *</label>
                                    <input type="text" class="form-control" name="designation">
                                </div>
                                <div class="mb-4">
                                    <label class="form-label">Job Deskripsi *</label>
                                    <textarea name="job_des" class="form-control h_100" cols="30" rows="10"></textarea>
                                </div>
                                <div class="mb-4">
                                    <label class="form-label">Address</label>
                                    <input type="text" class="form-control" name="address">
                                </div>
                                <div class="mb-4">
                                    <label class="form-label">Phone</label>
                                    <input type="text" class="form-control" name="phone">
                                </div>
                                <div class="mb-4">
                                    <label class="form-label">Email</label>
                                    <input type="text" class="form-control" name="email">
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
@endsection