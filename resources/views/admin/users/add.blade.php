@extends('admin.main')

@section('head')
    <script src="/ckeditor/ckeditor.js"></script>
@endsection

@section('content')
    <form action="" method="POST">
        <div class="card-body">

            <div class="form-group">
                <label for="menu">Name: </label>
                <input type="text" name="name" class="form-control"  placeholder="Nhập tên">
            </div>

            <div class="form-group">
                <label for="menu">Email: </label>
                <input type="text" name="email" class="form-control"  placeholder="Nhập email">
            </div>

            <div class="form-group">
                <label for="menu">Mật khẩu: </label>
                <input type="text" name="password" class="form-control"  placeholder="Nhập mật khẩu">
            </div>

            <div class="form-group">
                <label for="menu">Nhập lại mật khẩu: </label>
                <input type="text" name="password2" class="form-control"  placeholder="Nhập mật khẩu">
            </div>

            <div class="form-group">
                <label>Danh Mục</label>
                <select class="form-control" name="role_id">
                    @foreach($roles as $role)
                        <option value="{{ $role->id }}">{{ $role->name }}</option>
                    @endforeach
                </select>
            </div>

        </div>

        <div class="card-footer">
            <button type="submit" class="btn btn-primary">Tạo Danh Mục</button>
        </div>
        @csrf
    </form>
@endsection

@section('footer')
    <script>
        CKEDITOR.replace('content');
        CKEDITOR.replace('description');
    </script>
@endsection
