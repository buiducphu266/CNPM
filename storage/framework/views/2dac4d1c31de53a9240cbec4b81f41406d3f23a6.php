<div class="row isotope-grid">
    <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
            <!-- Block2 -->
            <div class="block2">
                <div class="block2-pic hov-img0">
                    <img src="<?php echo e($product->thumb); ?>" alt="IMG-PRODUCT">




                </div>

                <div class="block2-txt flex-w flex-t p-t-14">
                    <div class="block2-txt-child1 flex-col-l ">
                        <a href="/san-pham/<?php echo e($product->id); ?>-<?php echo e(Str::slug($product->name, '-')); ?>.html" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                            <?php echo e($product->name); ?>

                        </a>

                        <span class="stext-105 cl3">
                                        <?php echo \App\Helpers\Helper::price($product); ?>


                        </span>


                    </div>


                </div>
            </div>
        </div>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</div>
<?php /**PATH C:\xampp\htdocs\shoplaravel\resources\views/front-end/product/product.blade.php ENDPATH**/ ?>