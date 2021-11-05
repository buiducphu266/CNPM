@extends('admin.main')

@section('head')
    <script src="/ckeditor/ckeditor.js"></script>
@endsection

@section('content')
    <form action="" method="POST">
        <div class="card-body">

            <div class="form-group">
                <label for="menu">Address: </label>
                <input type="text" name="address" class="form-control" value="{{ $contact -> address }}" placeholder="Nhập địa chỉ">
            </div>

            <div class="form-group">
                <label for="menu">Phone: </label>
                <input type="text" name="phone"  class="form-control"  value="{{ $contact -> phone }}" placeholder="Nhập số điện thoại">
            </div>

            <div class="form-group">
                <label for="menu">Email: </label>
                <input type="text" name="email" class="form-control" value="{{ $contact -> email }}" placeholder="Nhập email">
            </div>

        </div>

        <div class="card-footer">
            <button type="submit" class="btn btn-primary">Cập nhật liên hệ</button>
        </div>
        @csrf
    </form>
@endsection

