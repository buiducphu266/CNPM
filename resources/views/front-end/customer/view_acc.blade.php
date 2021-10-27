<!DOCTYPE html>
<html lang="en">
<head>
    @include('admin.head')
</head>
<body class="hold-transition register-page">
<div class="register-box">
    <div class="card card-outline card-primary">
        <div class="card-header text-center">
            <a href="../../index2.html" class="h1"><b>Admin</b>LTE</a>
        </div>
        <div class="card-body">
            <p class="login-box-msg">Register a new membership</p>
            @include('admin.alert')
            <form action="" method="post">
                @foreach($customer as $cus)
                <div class="input-group mb-3">
                    <input type="text" name="name" value="{{ $cus->name }}" class="form-control" placeholder="Full name">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-user"></span>
                        </div>
                    </div>
                </div>


                <div class="input-group mb-3">
                    <input type="text" name="phone" value="{{ $cus->phone }}" class="form-control" placeholder="Phone">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-user"></span>
                        </div>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <input type="text" name="address" value="{{ $cus->address }}" class="form-control" placeholder="Address">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-user"></span>
                        </div>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <input type="text" name="email" value="{{ $cus->email }}" class="form-control" placeholder="Email">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-user"></span>
                        </div>
                    </div>
                </div>
                @endforeach
                <div class="row">

                @csrf
                <!-- /.col -->
                    <div class="col-4">
                        <button type="submit" class="btn btn-primary btn-block">UPDATE</button>
                    </div>

                    <!-- /.col -->
                </div>
            </form>


            <p class="mb-0">
                <a href="/change-password/{{ auth()->guard('member')->id() }}" class="text-center">Change Password</a>

            </p>
            <p class="mb-0">
                <a href="/" class="text-center">Back to home</a>

            </p>
        </div>
        <!-- /.form-box -->
    </div><!-- /.card -->
</div>
@include('admin.footer')
</body>
</html>
