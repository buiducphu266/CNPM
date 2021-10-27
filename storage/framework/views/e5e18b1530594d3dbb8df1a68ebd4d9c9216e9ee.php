<!-- Header desktop -->
<?php
    $loadmenu = \App\Helpers\Helper::menus($menus);
?>
<div class="container-menu-desktop">
    <div class="top-bar">
        <div class="content-topbar flex-sb-m h-full container">
            <div class="left-top-bar">
                Free shipping for standard order over $100
            </div>

            <div class="right-top-bar flex-w h-full">



                <?php if(auth()->guard('member')->check()==0): ?>
                <a href="/login" class="flex-c-m trans-04 p-lr-25">
                    LOGIN
                </a>
                <?php else: ?>
                    <a href="/my-account" class="flex-c-m trans-04 p-lr-25">
                        My Account
                    </a>
                    <a href="/logout" class="flex-c-m trans-04 p-lr-25">
                        LOGOUT
                    </a>
                <?php endif; ?>
            </div>
        </div>
    </div>

    <div class="wrap-menu-desktop">
        <nav class="limiter-menu-desktop container">

            <!-- Logo desktop -->
            <a href="#" class="logo">
                <img src="/template/front-end/images/icons/logo-01.png" alt="IMG-LOGO">
            </a>

            <!-- Menu desktop -->
            <div class="menu-desktop">
                <ul class="main-menu">
                    <li class="active-menu">
                        <a href="/">Home</a>

                    </li>

                    <?php echo $loadmenu; ?>


                    <li>
                        <a href="about.html">About</a>
                    </li>

                    <li>
                        <a href="contact.html">Contact</a>
                    </li>
                </ul>
            </div>

            <!-- Icon header -->
            <div class="wrap-icon-header flex-w flex-r-m">
                <div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search">
                    <i class="zmdi zmdi-search"></i>
                </div>


                <div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart" data-notify="<?php echo e(is_null(\Illuminate\Support\Facades\Session::get('carts')) ? 0 : count(\Illuminate\Support\Facades\Session::get('carts'))); ?>">
                    <i class="zmdi zmdi-shopping-cart"></i>
                </div>

            </div>
        </nav>
    </div>
</div>

<!-- Header Mobile -->
<div class="wrap-header-mobile">
    <!-- Logo moblie -->
    <div class="logo-mobile">
        <a href="index.html"><img src="/template/front-end/images/icons/logo-01.png" alt="IMG-LOGO"></a>
    </div>

    <!-- Icon header -->
    <div class="wrap-icon-header flex-w flex-r-m m-r-15">
        <div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 js-show-modal-search">
            <i class="zmdi zmdi-search"></i>
        </div>

        <div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti js-show-cart" data-notify="<?php echo e(is_null(\Illuminate\Support\Facades\Session::get('carts')) ? 0 : count(\Illuminate\Support\Facades\Session::get('carts'))); ?>">
            <i class="zmdi zmdi-shopping-cart"></i>
        </div>

    </div>

    <!-- Button show menu -->
    <div class="btn-show-menu-mobile hamburger hamburger--squeeze">
				<span class="hamburger-box">
					<span class="hamburger-inner"></span>
				</span>
    </div>
</div>


<!-- Menu Mobile -->
<div class="menu-mobile">


    <ul class="main-menu-m">
        <li>
            <a href="/">Home</a>


        </li>

        <?php echo $loadmenu; ?>


        <li>
            <a href="about.html">About</a>
        </li>

        <li>
            <a href="contact.html">Contact</a>
        </li>
    </ul>
</div>

<!-- Modal Search -->
<div class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
    <div class="container-search-header">
        <button class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
            <img src="/template/front-end/images/icons/icon-close2.png" alt="CLOSE">
        </button>

        <form class="wrap-search-header flex-w p-l-15">
            <button class="flex-c-m trans-04">
                <i class="zmdi zmdi-search"></i>
            </button>
            <input class="plh3" type="text" name="search" placeholder="Search...">
        </form>
    </div>
</div>
<?php /**PATH C:\xampp\htdocs\shoplaravel\resources\views/front-end/top.blade.php ENDPATH**/ ?>