
@extends('front-end.main')

@section('content')



    <div class="container p-t-100">
        <div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
            <a href="/" class="stext-109 cl8 hov-cl1 trans-04">
                Home
                <i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
            </a>

            <span class="stext-109 cl4">
                    Shoping Cart
                </span>
        </div>
    </div>
    @include('admin.alert')
    @if(count($products))
    <form class="bg0 p-t-75 p-b-85" method="post">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 col-xl-7 m-lr-auto m-b-50">
                    <div class="m-l-25 m-r--38 m-lr-0-xl">
                        <div class="wrap-table-shopping-cart">

                            <table class="table-shopping-cart">
                                @php
                                $total = 0;
                                @endphp
                                <tbody><tr class="table_head">
                                    <th class="column-1">Product</th>
                                    <th class="column-2"></th>
                                    <th class="column-3">Price</th>
                                    <th class="column-4">Quantity</th>
                                    <th class="column-5">Total</th>
                                </tr>
                                @foreach($products as $product)
                                    @php

                                    $price = $product->price_sale != 0 ? $product->price_sale : $product->price;
                                    $total_price = $price * $carts[$product->id];
                                    $total += $total_price;
                                    @endphp
                                    <tr class="table_row">
                                        <td class="column-1">
                                            <div class="how-itemcart1">
                                                <img src="{{ $product->thumb }}" alt="IMG">
                                            </div>
                                        </td>
                                        <td class="column-2">{{ $product->name }}</td>
                                        <td class="column-3">{{ number_format($price) }}</td>
                                        <td class="column-4">
                                            <div class="wrap-num-product flex-w m-l-auto m-r-0">
                                                <div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
                                                    <i class="fs-16 zmdi zmdi-minus"></i>
                                                </div>

                                                <input class="mtext-104 cl3 txt-center num-product" type="number" name="num_product[{{ $product->id }}]" value="{{ $carts[$product->id] }}">

                                                <div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
                                                    <i class="fs-16 zmdi zmdi-plus"></i>
                                                </div>
                                            </div>
                                        </td>
                                        <td class="column-5">{{ number_format($total_price) }}</td>
                                        <td class="p-r-15"><a href="/carts/delete/{{ $product->id }}">Xoá</a></td>
                                    </tr>
                                @endforeach
                                @csrf
                                </tbody></table>
                        </div>

                        <div class="flex-w flex-sb-m bor15 p-t-18 p-b-15 p-lr-40 p-lr-15-sm">
                            <div class="flex-w flex-m m-r-20 m-tb-5">
                                <input class="stext-104 cl2 plh4 size-117 bor13 p-lr-20 m-r-10 m-tb-5" type="text" name="coupon" placeholder="Coupon Code">

                                <div class="flex-c-m stext-101 cl2 size-118 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5">
                                    Apply coupon
                                </div>
                            </div>

                            <input type="submit" formaction="/update-cart" value="Updata Cart" class="flex-c-m stext-101 cl2 size-119 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-10">


                        </div>
                    </div>
                </div>

                <div class="col-sm-10 col-lg-7 col-xl-5 m-lr-auto m-b-50">
                    <div class="bor10 p-lr-40 p-t-30 p-b-40 m-l-63 m-r-40 m-lr-0-xl p-lr-15-sm">
                        <h4 class="mtext-109 cl2 p-b-30">
                            Cart Totals
                        </h4>


                        <div class="flex-w flex-t p-t-27 p-b-33">
                            <div class="size-208">
                                    <span class="mtext-101 cl2">
                                        Total:
                                    </span>
                            </div>

                            <div class="size-209 p-t-1">
                                    <span class="mtext-110 cl2">
                                        {{ number_format($total) }}
                                        <input type="text" name="total_price" value="{{ $total }}" hidden>
                                    </span>
                            </div>
                        </div>









                    @if(auth()->guard('member')->check() == 0)
                            <input type="submit" formaction="/non-login" value="Login to pay" class="flex-c-m stext-101 cl0 size-116 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer">
                        @else
                            <div class="flex-w flex-t p-t-27 p-b-33">
                                <div class="size-208">
                                    <span class="mtext-101 cl2">
                                        Name:
                                    </span>
                                </div>

                                <div class="size-209 p-t-1">
                                    <span class="mtext-110 cl2">
                                        {{ $customer->name }}
                                    </span>
                                </div>

                                <div class="size-208">
                                    <span class="mtext-101 cl2">
                                        Phone:
                                    </span>
                                </div>

                                <div class="size-209 p-t-1">
                                    <span class="mtext-110 cl2">
                                        {{ $customer->phone }}
                                    </span>
                                </div>

                                <div class="size-208">
                                    <span class="mtext-101 cl2">
                                        Address:
                                    </span>
                                </div>

                                <div class="size-209 p-t-1">
                                    <span class="mtext-110 cl2">
                                        {{ $customer->address }}
                                    </span>
                                </div>

                                <div class="size-208">
                                    <span class="mtext-101 cl2">
                                        Email:
                                    </span>
                                </div>

                                <div class="size-209 p-t-1">
                                    <span class="mtext-110 cl2">
                                        {{ $customer->email }}
                                    </span>
                                </div>

                                <div class="size-208">
                                    <span class="mtext-101 cl2">
                                        Note:
                                    </span>
                                </div>

                                <div class="size-209 p-t-1">
                                    <div class="bor8 bg0 m-b-12">
                                        <textarea class="cl8 plh3 size-110 p-lr-15" name="note"></textarea>
                                    </div>
                                </div>


                            </div>
                            <input type="submit" formaction="/logged" value="Proceed to Checkout" class="flex-c-m stext-101 cl0 size-116 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer">
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </form>
    @else
    <div class="text-center p-t-100" >
        <p>Giỏ hàng không có sản phẩm nào</p>
    </div>
    @endif
@endsection
