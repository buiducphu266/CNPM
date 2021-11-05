<?php $__env->startSection('head'); ?>
    <script src="/ckeditor/ckeditor.js"></script>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
    <form action="" method="POST">
        <div class="card-body">

            <div class="form-group">
                <label for="menu">Address: </label>
                <input type="text" name="address" class="form-control" value="<?php echo e($contact -> address); ?>" placeholder="Nhập địa chỉ">
            </div>

            <div class="form-group">
                <label for="menu">Phone: </label>
                <input type="text" name="phone"  class="form-control"  value="<?php echo e($contact -> phone); ?>" placeholder="Nhập số điện thoại">
            </div>

            <div class="form-group">
                <label for="menu">Email: </label>
                <input type="text" name="email" class="form-control" value="<?php echo e($contact -> email); ?>" placeholder="Nhập email">
            </div>

        </div>

        <div class="card-footer">
            <button type="submit" class="btn btn-primary">Cập nhật liên hệ</button>
        </div>
        <?php echo csrf_field(); ?>
    </form>
<?php $__env->stopSection(); ?>


<?php echo $__env->make('admin.main', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\shoplaravel\resources\views/admin/contact/edit.blade.php ENDPATH**/ ?>