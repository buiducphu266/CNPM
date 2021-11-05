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

            <th>Hình ảnh</th>
            <th>Tên</th>
            <th>Nội dung</th>
            <th>Active</th>

            <th style="width: 100px">&nbsp;</th>
        </tr>
        </thead>
        <tbody id="list">
        <?php $__currentLoopData = $abouts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $about): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <tr>
                <td><?php echo e($about -> id); ?></td>
                <td>
                    <a target="_blank" href="<?php echo e($about->thumb); ?>"><img width="100px" src="<?php echo e($about->thumb); ?>"></a>
                </td>
                <td><?php echo e($about -> topic); ?></td>
                <td><?php echo e($about -> content); ?></td>
                <td><?php echo \App\Helpers\Helper::active($about -> active); ?></td>
                <td>
                    <?php if(auth()->user()->can('edit') || auth()->user()->can('view')): ?>
                        <a class="btn btn-primary btn-sm" href="/admin/abouts/edit/<?php echo e($about->id); ?>">
                            <i class="fas fa-edit"></i>
                        </a>
                    <?php endif; ?>

                        <a href="#" class="btn btn-danger btn-sm"
                           onclick="removeRow(<?php echo e($about->id); ?>, '/admin/abouts/destroy')">
                            <i class="fas fa-trash"></i>
                        </a>

                </td>
            </tr>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </tbody>
    </table>
    <?php echo $abouts->links(); ?>

<?php $__env->stopSection(); ?>



<?php echo $__env->make('admin.main', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\shoplaravel\resources\views/admin/about/list.blade.php ENDPATH**/ ?>