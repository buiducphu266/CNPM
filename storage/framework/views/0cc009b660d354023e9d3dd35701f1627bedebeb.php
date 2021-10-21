<?php $__env->startSection('head'); ?>
    <script src="/ckeditor/ckeditor.js"></script>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
    <form action="" method="POST">
        <?php echo csrf_field(); ?>
        <div class="card-body">
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="menu">Tiêu đề</label>
                        <input type="text" name="name" value="<?php echo e($slider -> name); ?>" class="form-control"  placeholder="Nhập tiêu đề">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="menu">Đường dẫn URL</label>
                        <input type="text" name="url" value="<?php echo e($slider -> url); ?>" class="form-control"  placeholder="Nhập đường dẫn">
                    </div>
                </div>


            </div>

            <div class="form-group">
                <label for="menu">Ảnh Slider</label>
                <input type="file"  class="form-control" id="upload">
                <div id="image_show">
                    <a target="_blank" href="<?php echo e($slider->thumb); ?>"><img width="100px" src="<?php echo e($slider->thumb); ?>"></a>
                </div>
                <input type="hidden" name="thumb" value="<?php echo e($slider -> thumb); ?>" id="thumb">
            </div>

            <div class="form-group">
                <label for="menu">Sắp xếp</label>
                <input type="number" name="sort_by" value="<?php echo e($slider -> sort_by); ?>" class="form-control"  placeholder="Nhập sắp xếp">
            </div>

            <div class="form-group">
                <label>Kích Hoạt</label>
                <div class="custom-control custom-radio">
                    <input class="custom-control-input" value="1" type="radio" id="active" name="active" <?php echo e($slider->active == 1 ? 'checked=  ""' : ''); ?>>
                    <label for="active" class="custom-control-label">Có</label>
                </div>
                <div class="custom-control custom-radio">
                    <input class="custom-control-input" value="0" type="radio" id="no_active" name="active" <?php echo e($slider->active == 0 ? 'checked=""' : ''); ?>>
                    <label for="no_active" class="custom-control-label">Không</label>
                </div>
            </div>

        </div>
        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('edit')): ?>
        <div class="card-footer">
            <button type="submit" class="btn btn-primary">Cập nhật Slider</button>
        </div>
        <?php endif; ?>
    </form>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('footer'); ?>
    <script>
        CKEDITOR.replace('content');
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('admin.main', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\shoplaravel\resources\views/admin/slider/edit.blade.php ENDPATH**/ ?>