@extends('admin.main')

@section('head')
    <script src="/ckeditor/ckeditor.js"></script>
@endsection

@section('content')
    <form action="" method="POST">
        <div class="card-body">

            <div class="form-group">
                <label for="menu">Tên</label>
                <input type="text" name="topic" value="{{ $about->topic }}" class="form-control"  placeholder="Nhập tên danh mục">
            </div>

            <div class="form-group">
                <label>Nội dung</label>
                <textarea name="content" id="content" class="form-control">{{ $about->content }}</textarea>
            </div>

            <div class="form-group">
                <label for="menu">Ảnh</label>
                <input type="file"  class="form-control"  id="upload">
                <div id="image_show">
                    <a target="_blank" href="{{ $about->thumb }}"><img width="100px" src="{{ $about->thumb }}"></a>
                </div>
                <input type="hidden" value="{{ $about->thumb }}" name="thumb" id="thumb">
            </div>
            <div class="form-group">
                <label>Kích Hoạt</label>
                <div class="custom-control custom-radio">
                    <input class="custom-control-input" value="1" type="radio" id="active" name="active" {{ $about->active == 1 ? 'checked=  ""' : '' }}>
                    <label for="active" class="custom-control-label">Có</label>
                </div>
                <div class="custom-control custom-radio">
                    <input class="custom-control-input" value="0" type="radio" id="no_active" name="active" {{ $about->active == 0 ? 'checked=  ""' : '' }}>
                    <label for="no_active" class="custom-control-label">Không</label>
                </div>
            </div>
        </div>


        <div class="card-footer">
            <button type="submit" class="btn btn-primary">Update About</button>
        </div>
        @csrf
    </form>
@endsection

@section('footer')
    <script>
        CKEDITOR.replace('content');
    </script>
@endsection
