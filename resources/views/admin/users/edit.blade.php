@extends('admin.main')

@section('head')
    <script src="/ckeditor/ckeditor.js"></script>
@endsection

@section('content')
    <form action="" method="POST">
        <div class="card-body">

            <div class="form-group">
                <label for="menu">Name: </label>
                <input type="text" name="name" class="form-control" value="{{ $user -> name }}" placeholder="Nhập tên">
            </div>

            <div class="form-group">
                <label for="menu">Email: </label>
                <input type="text" name="email" class="form-control" readonly value="{{ $user -> email }}" placeholder="Nhập email">
            </div>

            <div class="form-group">
                <label for="menu">Mật khẩu: </label>
                <input type="text" name="password" class="form-control" value="{{ $user -> password }}" placeholder="Nhập mật khẩu">
            </div>

            <div class="form-group">
                <label for="menu">Nhập lại mật khẩu: </label>
                <input type="text" name="password2" class="form-control" value="{{ $user -> password }}"  placeholder="Nhập mật khẩu">
            </div>

            <div class="form-group">
                <label>Danh Mục</label>
                <select class="form-control" name="role_id">
                    @foreach($roles as $role)
                        @foreach($user->roles as $rol)
                            <option value="{{ $role->id }}" {{ $role->id == $rol->id ? 'selected' : '' }} >{{ $role->name }}</option>
                        @endforeach
                    @endforeach
                </select>
            </div>

        </div>

        <div class="card-footer">
            <button type="submit" class="btn btn-primary">Cập nhật User</button>
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
