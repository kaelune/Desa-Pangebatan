@extends('admin.layout.app')

@section('heading', 'Home Banner Images')

@section('rightside_button')
<a href="{{ route('home_banner_image_add') }}" class="btn btn-primary"><i class="fas fa-plus"></i> Add Banner Image</a>
@endsection

@section('main_content')
<div class="section-body">

    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered" id="example1">
                            <thead>
                                <tr>
                                    <th>SL</th>
                                    <th>Images</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($banner_image as $key => $item)
                                <tr>
                                    <td>{{ $loop->iteration }}</td>
                                    <td>
                                        <img style="height:90px; width: 180px;" class="" src=" {{ (!empty($item->image))? url('uploads/'.$item->image) : url('upload/no-image.png') }}" alt="User Avatar">
                                    </td>
                                    <td>
                                        <a href="{{ route('home_banner_image_edit', $item->id) }}" class="btn btn-info">Edit</a>
                                        <a href="{{ route('home_banner_image_delete', $item->id) }}" class="btn btn-danger" id="">Delate</a>
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /.row -->

@endsection