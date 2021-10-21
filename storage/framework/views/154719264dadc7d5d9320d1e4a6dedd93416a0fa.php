<?php $__env->startSection('head'); ?>
    <script src="/ckeditor/ckeditor.js"></script>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
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
                    <?php $__currentLoopData = $roles; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $role): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <option value="<?php echo e($role->id); ?>"><?php echo e($role->name); ?></option>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </select>
            </div>

        </div>

        <div class="card-footer">
            <button type="submit" class="btn btn-primary">Tạo Danh Mục</button>
        </div>
        <?php echo csrf_field(); ?>
    </form>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('footer'); ?>
    <script>
        CKEDITOR.replace('content');
        CKEDITOR.replace('description');
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('admin.main', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\shoplaravel\resources\views/admin/users/add.blade.php ENDPATH**/ ?>