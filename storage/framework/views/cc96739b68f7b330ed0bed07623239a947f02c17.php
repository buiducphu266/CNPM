<?php $__env->startSection('content'); ?>
<div>
    <p>Họ và tên: <?php echo e((App\Helpers\Helper::getNameCus($cart -> member ->id)) -> name); ?></p>
    <p>Số điện thoại: <?php echo e((App\Helpers\Helper::getNameCus($cart -> member ->id)) -> phone); ?></p>
    <p>Địa chỉ: <?php echo e((App\Helpers\Helper::getNameCus($cart -> member ->id)) -> address); ?></p>
    <p>Email: <?php echo e((App\Helpers\Helper::getNameCus($cart -> member ->id)) -> email); ?></p>
    <p>Note: <?php echo e($cart -> note); ?></p>

</div>
<table class="table">
    <thead>
    <tr>
        <th>Hình ảnh</th>
        <th>Tên sản phẩm</th>
        <th>Giá tiền</th>
        <th>Số lượng</th>
        <th>Tổng tiền</th>

    </tr>
    </thead>
    <tbody>
    <?php $__currentLoopData = $cart_details; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $cart_detail): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

        <tr>
            <td>
                <img width="100px" src="<?php echo e($cart_detail -> product -> thumb); ?>">
            </td>
            <td><?php echo e($cart_detail -> product -> name); ?></td>
            <td><?php echo e($cart_detail -> price); ?></td>
            <td><?php echo e($cart_detail -> qty); ?></td>

            <td><?php echo e($cart_detail -> price * $cart_detail -> qty); ?></td>

        </tr>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </tbody>
</table>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('admin.main', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\shoplaravel\resources\views/admin/order/detail.blade.php ENDPATH**/ ?>