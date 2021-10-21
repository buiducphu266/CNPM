
<!DOCTYPE html>
<html lang="en">
<head>
    <?php echo $__env->make('front-end.header', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
</head>
<body class="animsition">

<!-- Header -->
<header>
    <?php echo $__env->make('front-end.top', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
</header>

<!-- Cart -->
<?php echo $__env->make('front-end.cart.cart', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>



<?php echo $__env->yieldContent('content'); ?>


<!-- Footer -->
<?php echo $__env->make('front-end.footer', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
</body>
</html>
<?php /**PATH C:\xampp\htdocs\shoplaravel\resources\views/front-end/main.blade.php ENDPATH**/ ?>