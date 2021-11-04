<div class="wrap-header-cart js-panel-cart">
    <div class="s-full js-hide-cart">

    </div>

    <div class="header-cart flex-col-l p-l-65 p-r-25">
        <div class="header-cart-title flex-w flex-sb-m p-b-8">
				<span class="mtext-103 cl2">
					Your Cart
				</span>
            <?php
                $total = 0;
            ?>
            <div class="fs-35 lh-10 cl2 p-lr-5 pointer hov-cl1 trans-04 js-hide-cart">
                <i class="zmdi zmdi-close"></i>
            </div>
        </div>

        <div class="header-cart-content flex-w js-pscroll">
            <ul class="header-cart-wrapitem w-full">

                <?php if(count($products)>0 && is_null(\Illuminate\Support\Facades\Session::get('carts')) == false): ?>
                    <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <?php

                            $price = $product->price_sale != 0 ? $product->price_sale : $product->price;
                            $total_price = $price * $carts[$product->id];
                            $total += $total_price;
                        ?>
                        <li class="header-cart-item flex-w flex-t m-b-12">
                            <div class="header-cart-item-img">
                                <img src="<?php echo e($product->thumb); ?>" alt="IMG">
                            </div>

                            <div class="header-cart-item-txt p-t-8">
                                <a href="/san-pham/<?php echo e($product->id); ?>-<?php echo e(Str::slug($product->name, '-')); ?>.html" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
                                    <?php echo e($product->name); ?>

                                </a>

                                <span class="header-cart-item-info">
                                        <?php echo e($carts[$product->id]); ?> x <?php echo e(number_format($price)); ?>

                                    </span>
                            </div>
                        </li>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                <?php endif; ?>

            </ul>

            <div class="w-full">
                <div class="header-cart-total w-full p-tb-40">
                    Total: <?php echo e(number_format($total)); ?>

                </div>

                <div class="header-cart-buttons flex-w w-full">
                    <a href="/carts" class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-r-8 m-b-10">
                        View Cart
                    </a>

                    <a href="/carts" class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-b-10">
                        Check Out
                    </a>
                </div>
            </div>
        </div>

    </div>
</div>
<?php /**PATH C:\xampp\htdocs\shoplaravel\resources\views/front-end/cart/cart.blade.php ENDPATH**/ ?>