<!DOCTYPE html>
<html lang="en">
<head>
    <?php echo $__env->make('admin.head', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
</head>
<body class="hold-transition register-page">
<div class="register-box">
    <div class="card card-outline card-primary">
        <div class="card-header text-center">
            <a href="../../index2.html" class="h1"><b>Admin</b>LTE</a>
        </div>
        <div class="card-body">
            <p class="login-box-msg">Change password</p>
            <?php echo $__env->make('admin.alert', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            <form action="" method="post">
                <div class="input-group mb-3">
                    <input type="password" name="password_old"  class="form-control" placeholder="Old password">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-lock"></span>
                        </div>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <input type="password" name="password_new" class="form-control" placeholder="Password">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-lock"></span>
                        </div>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <input type="password" name="password_new_confirmation" class="form-control" placeholder="Retype password">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-lock"></span>
                        </div>
                    </div>
                </div>
                <div class="row">

                <?php echo csrf_field(); ?>
                <!-- /.col -->
                    <div class="col-4">
                        <button type="submit" class="btn btn-primary btn-block">SUBMIT</button>
                    </div>

                    <!-- /.col -->
                </div>
            </form>


            <p class="mb-0">
                <a href="/" class="text-center">Back to home</a>

            </p>
        </div>
        <!-- /.form-box -->
    </div><!-- /.card -->
</div>
<?php echo $__env->make('admin.footer', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
</body>
</html>
<?php /**PATH C:\xampp\htdocs\shoplaravel\resources\views/front-end/customer/change_pass.blade.php ENDPATH**/ ?>