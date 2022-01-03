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
            <p class="login-box-msg">Information</p>
            <?php echo $__env->make('admin.alert', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            <form action="" method="post">
                <?php $__currentLoopData = $customer; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $cus): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="input-group mb-3">
                    <input type="text" name="name" value="<?php echo e($cus->name); ?>" class="form-control" placeholder="Full name">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-user"></span>
                        </div>
                    </div>
                </div>


                <div class="input-group mb-3">
                    <input type="text" name="phone" value="<?php echo e($cus->phone); ?>" class="form-control" placeholder="Phone">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-user"></span>
                        </div>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <input type="text" name="address" value="<?php echo e($cus->address); ?>" class="form-control" placeholder="Address">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-user"></span>
                        </div>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <input type="text" name="email" value="<?php echo e($cus->email); ?>" class="form-control" placeholder="Email">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-user"></span>
                        </div>
                    </div>
                </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                <div class="row">

                <?php echo csrf_field(); ?>
                <!-- /.col -->
                    <div class="col-4">
                        <button type="submit" class="btn btn-primary btn-block">UPDATE</button>
                    </div>

                    <!-- /.col -->
                </div>
            </form>


            <p class="mb-0">
                <a href="/change-password/<?php echo e(auth()->guard('member')->id()); ?>" class="text-center">Change Password</a>

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