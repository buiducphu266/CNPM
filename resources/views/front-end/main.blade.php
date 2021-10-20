
<!DOCTYPE html>
<html lang="en">
<head>
    @include('front-end.header')
</head>
<body class="animsition">

<!-- Header -->
<header>
    @include('front-end.top')
</header>

<!-- Cart -->
@include('front-end.cart.cart')



@yield('content')


<!-- Footer -->
@include('front-end.footer')
</body>
</html>
