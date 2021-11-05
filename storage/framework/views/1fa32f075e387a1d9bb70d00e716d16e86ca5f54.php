<?php $__env->startSection('head'); ?>
    <script src="/ckeditor/ckeditor.js"></script>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
    <form action="" method="POST">
        <div class="card-body">

            <div class="form-group">
                <label for="menu">Tên</label>
                <input type="text" name="topic" value="<?php echo e($about->topic); ?>" class="form-control"  placeholder="Nhập tên danh mục">
            </div>

            <div class="form-group">
                <label>Nội dung</label>
                <textarea name="content" id="content" class="form-control"><?php echo e($about->content); ?></textarea>
            </div>

            <div class="form-group">
                <label for="menu">Ảnh</label>
                <input type="file"  class="form-control"  id="upload">
                <div id="image_show">
                    <a target="_blank" href="<?php echo e($about->thumb); ?>"><img width="100px" src="<?php echo e($about->thumb); ?>"></a>
                </div>
                <input type="hidden" value="<?php echo e($about->thumb); ?>" name="thumb" id="thumb">
            </div>
            <div class="form-group">
                <label>Kích Hoạt</label>
                <div class="custom-control custom-radio">
                    <input class="custom-control-input" value="1" type="radio" id="active" name="active" <?php echo e($about->active == 1 ? 'checked=  ""' : ''); ?>>
                    <label for="active" class="custom-control-label">Có</label>
                </div>
                <div class="custom-control custom-radio">
                    <input class="custom-control-input" value="0" type="radio" id="no_active" name="active" <?php echo e($about->active == 0 ? 'checked=  ""' : ''); ?>>
                    <label for="no_active" class="custom-control-label">Không</label>
                </div>
            </div>
        </div>


        <div class="card-footer">
            <button type="submit" class="btn btn-primary">Update About</button>
        </div>
        <?php echo csrf_field(); ?>
    </form>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('footer'); ?>
    <script>
        CKEDITOR.replace('content');
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('admin.main', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\shoplaravel\resources\views/admin/about/edit.blade.php ENDPATH**/ ?>