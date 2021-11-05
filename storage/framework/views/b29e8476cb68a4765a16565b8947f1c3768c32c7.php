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
            <th>Address</th>
            <th>Phone</th>
            <th>Email</th>
            <th style="width: 100px">&nbsp;</th>
        </tr>
        </thead>
        <tbody id="list">
            <td><?php echo e($contact->address); ?></td>
            <td><?php echo e($contact->phone); ?></td>
            <td><?php echo e($contact->email); ?></td>
            <td>
                <a class="btn btn-primary btn-sm" href="/admin/contact/edit/<?php echo e($contact->id); ?>">
                    <i class="fas fa-edit"></i>
                </a>
            </td>
        </tbody>
    </table>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('admin.main', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\shoplaravel\resources\views/admin/contact/list.blade.php ENDPATH**/ ?>