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
            <p class="login-box-msg">My Account</p>
            <?php echo $__env->make('admin.alert', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            <form action="/register/store" method="post">

                <div class="input-group mb-3">
                    <p>Name</p>
                </div>

                <div class="row">

                <?php echo csrf_field(); ?>
                <!-- /.col -->
                    <div class="col-4">
                        <button type="submit" class="btn btn-primary btn-block">Register</button>
                    </div>
                    <!-- /.col -->
                </div>
            </form>

            <p class="mb-0">
                <a href="/login" class="text-center">I already have a membership</a>

            </p>
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
<?php /**PATH C:\xampp\htdocs\shoplaravel\resources\views/front-end/customer/view_acc.blade.php ENDPATH**/ ?>