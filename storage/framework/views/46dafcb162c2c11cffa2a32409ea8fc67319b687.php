<?php $__env->startSection('content'); ?>
    <nav class="main-header navbar navbar-expand navbar-white navbar-light">


        <!-- Right navbar links -->
        <ul class="navbar-nav ml-auto">

            <li class="nav-item">
                <a class="nav-link" data-widget="navbar-search" href="#" role="button">
                    <i class="fas fa-search"></i>
                </a>
                <div class="navbar-search-block">
                    <div class="input-group input-group-sm">
                        <input class="form-control form-control-navbar" id="keyword" type="search" placeholder="Search" aria-label="Search">
                        <div class="input-group-append">
                            <button class="btn btn-navbar" >
                                <i class="fas fa-search"></i>
                            </button>
                            <button class="btn btn-navbar" type="button" data-widget="navbar-search">
                                <i class="fas fa-times"></i>
                            </button>
                        </div>
                    </div>
                </div>
            </li>
        </ul>

    </nav>
    <table class="table">
        <thead>
        <tr>
            <th style="width: 50px">ID</th>
            <th>Tên Slider</th>
            <th>Hình ảnh</th>
            <th>Đường dẫn</th>
            <th>Active</th>
            <th>Update</th>

            <th style="width: 100px">&nbsp;</th>
        </tr>
        </thead>
        <tbody id="list">
        <?php $__currentLoopData = $sliders; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $slider): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <tr>
                <td><?php echo e($slider -> id); ?></td>
                <td><?php echo e($slider -> name); ?></td>
                <td>
                    <a target="_blank" href="<?php echo e($slider->thumb); ?>"><img width="100px" src="<?php echo e($slider->thumb); ?>"></a>
                </td>
                <td><?php echo e($slider -> url); ?></td>
                <td><?php echo \App\Helpers\Helper::active($slider -> active); ?></td>
                <td><?php echo e($slider -> updated_at); ?></td>
                <td>
                    <?php if(auth()->user()->can('edit') || auth()->user()->can('view')): ?>
                        <a class="btn btn-primary btn-sm" href="/admin/sliders/edit/<?php echo e($slider->id); ?>">
                            <i class="fas fa-edit"></i>
                        </a>
                    <?php endif; ?>
                    <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('delete')): ?>
                        <a href="#" class="btn btn-danger btn-sm"
                           onclick="removeRow(<?php echo e($slider->id); ?>, '/admin/sliders/destroy')">
                            <i class="fas fa-trash"></i>
                        </a>
                        <?php endif; ?>
                </td>
            </tr>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </tbody>
    </table>
    <?php echo $sliders->links(); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('footer'); ?>
    <script>
        $(document).ready(function (){
            $(document).on('keyup','#keyword', function (){
                var keyword = $(this).val();

                $.ajax({
                    type: "get",
                    url: "/admin/sliders/search",
                    data: {
                        keyword: keyword
                    },
                    datatype: "json",
                    success: function (results){
                        $('#list').html(results.html);
                    }
                })
            })
        })
    </script>
<?php $__env->stopSection(); ?>


<?php echo $__env->make('admin.main', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\shoplaravel\resources\views/admin/slider/list.blade.php ENDPATH**/ ?>