@extends('admin.layout.app')

@section('heading', 'Edit Profile Desa')

@section('rightside_button')
<a href="{{ route('admin_page_profile') }}" class="btn btn-primary"><i class="fas fa-plus"></i> View All</a>
@endsection

@section('main_content')
<div class="section-body">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <form action="{{ route('admin_profile_update',$row_data->id) }}" method="post" enctype="multipart/form-data">
                        @csrf
                        <div class="row">
                            <div class="col-md-12">
                                <div class="mb-4">
                                    <label class="form-label">Existing Photo</label>
                                    <div>
                                        <img id="showImage" src="{{ asset('uploads/'.$row_data->photo) }}" alt="" class="w_100">
                                    </div>
                                </div>
                                <div class="mb-4">
                                    <label class="form-label">Change Photo</label>
                                    <div>
                                        <input id="image" type="file" name="photo">
                                    </div>
                                </div>
                                <div class="mb-4">
                                    <label class="form-label">Nama *</label>
                                    <input type="text" class="form-control" name="name" value="{{ $row_data->name }}">
                                </div>
                                <div class="mb-4">
                                    <label class="form-label">Jabatan *</label>
                                    <input type="text" class="form-control" name="designation" value="{{ $row_data->designation }}">
                                </div>
                                <div class="mb-4">
                                    <label class="form-label">Job Deskripsi *</label>
                                    <textarea name="job_des" class="form-control h_100" cols="30" rows="10">{{ $row_data->job_des }}</textarea>
                                </div>
                                <div class="mb-4">
                                    <label class="form-label">Address</label>
                                    <input type="text" class="form-control" name="address" value="{{ $row_data->address }}">
                                </div>
                                <div class="mb-4">
                                    <label class="form-label">Phone</label>
                                    <input type="text" class="form-control" name="phone" value="{{ $row_data->phone }}">
                                </div>
                                <div class="mb-4">
                                    <label class="form-label">Email</label>
                                    <input type="text" class="form-control" name="email" value="{{ $row_data->email }}">
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