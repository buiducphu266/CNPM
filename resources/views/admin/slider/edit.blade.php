@extends('admin.main')

@section('head')
    <script src="/ckeditor/ckeditor.js"></script>
@endsection

@section('content')
    <form action="" method="POST">
        @csrf
        <div class="card-body">
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="menu">Tiêu đề</label>
                        <input type="text" name="name" value="{{$slider -> name}}" class="form-control"  placeholder="Nhập tiêu đề">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="menu">Đường dẫn URL</label>
                        <input type="text" name="url" value="{{ $slider -> url }}" class="form-control"  placeholder="Nhập đường dẫn">
                    </div>
                </div>


            </div>

            <div class="form-group">
                <label for="menu">Ảnh Slider</label>
                <input type="file"  class="form-control" id="upload">
                <div id="image_show">
                    <a target="_blank" href="{{ $slider->thumb }}"><img width="100px" src="{{ $slider->thumb }}"></a>
                </div>
                <input type="hidden" name="thumb" value="{{ $slider -> thumb }}" id="thumb">
            </div>

            <div class="form-group">
                <label for="menu">Sắp xếp</label>
                <input type="number" name="sort_by" value="{{ $slider -> sort_by }}" class="form-control"  placeholder="Nhập sắp xếp">
            </div>

            <div class="form-group">
                <label>Kích Hoạt</label>
                <div class="custom-control custom-radio">
                    <input class="custom-control-input" value="1" type="radio" id="active" name="active" {{ $slider->active == 1 ? 'checked=  ""' : '' }}>
                    <label for="active" class="custom-control-label">Có</label>
                </div>
                <div class="custom-control custom-radio">
                    <input class="custom-control-input" value="0" type="radio" id="no_active" name="active" {{ $slider->active == 0 ? 'checked=""' : '' }}>
                    <label for="no_active" class="custom-control-label">Không</label>
                </div>
            </div>

        </div>
        @can('edit')
        <div class="card-footer">
            <button type="submit" class="btn btn-primary">Cập nhật Slider</button>
        </div>
        @endcan
    </form>
@endsection

@section('footer')
    <script>
        CKEDITOR.replace('content');
    </script>
@endsection
