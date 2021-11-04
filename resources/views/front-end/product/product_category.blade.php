
@extends('front-end.main')

@section('content')
<section class="bg0 p-t-23 p-b-140 p-t-100">
    <div class="container">
        <div class="p-b-10">
            <h3 class="ltext-103 cl5">
                {{ $menu->name }}
            </h3>
            <input id="menu_id" value="{{ $menu->id }}" type="hidden">
        </div>

        <div class="flex-w flex-sb-m p-b-52">
            <div class="flex-w flex-l-m filter-tope-group m-tb-10">
                <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5 how-active1" data-filter="*">
                    All Products
                </button>


            </div>

            <div class="flex-w flex-c-m m-tb-10">
                <div class="flex-c-m stext-106 cl6 size-104 bor4 pointer hov-btn3 trans-04 m-r-8 m-tb-4 js-show-filter">
                    <i class="icon-filter cl2 m-r-6 fs-15 trans-04 zmdi zmdi-filter-list"></i>
                    <i class="icon-close-filter cl2 m-r-6 fs-15 trans-04 zmdi zmdi-close dis-none"></i>
                    Filter
                </div>

                <div class="flex-c-m stext-106 cl6 size-105 bor4 pointer hov-btn3 trans-04 m-tb-4 js-show-search">
                    <i class="icon-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-search"></i>
                    <i class="icon-close-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-close dis-none"></i>
                    Search
                </div>
            </div>

            <!-- Search product -->
            <div class="dis-none panel-search w-full p-t-10 p-b-15">
                <div class="bor8 dis-flex p-l-15">
                    <button class="size-113 flex-c-m fs-16 cl2 hov-cl1 trans-04">
                        <i class="zmdi zmdi-search"></i>
                    </button>

                    <input class="mtext-107 cl2 size-114 plh2 p-r-15" id="search_product" type="text" placeholder="Search">
                </div>
            </div>

            <!-- Filter -->
            <div class="dis-none panel-filter w-full p-t-10">
                <div class="wrap-filter flex-w bg6 w-full p-lr-40 p-t-27 p-lr-15-sm">
                    <div class="filter-col1 p-r-15 p-b-27">
                        <div class="mtext-102 cl2 p-b-15">
                            Sort By
                        </div>

                        <ul>
                            <li class="p-b-6">
                                <a href="{{ request()->url() }}" class="filter-link stext-106 trans-04">
                                    Default
                                </a>
                            </li>



                            <li class="p-b-6">
                                <a href="{{ request()->fullUrlWithQuery(['price' => 'asc']) }}" class="filter-link stext-106 trans-04">
                                    Price: Low to High
                                </a>
                            </li>

                            <li class="p-b-6">
                                <a href="{{ request()->fullUrlWithQuery(['price' => 'desc']) }}" class="filter-link stext-106 trans-04">
                                    Price: High to Low
                                </a>
                            </li>
                        </ul>
                    </div>

                    <div class="filter-col2 p-r-15 p-b-27">
                        <div class="mtext-102 cl2 p-b-15">
                            Price
                        </div>

                        <ul>
                            <li class="p-b-6">
                                <a href="{{ request()->url() }}" class="filter-link stext-106 trans-04 filter-link-active">
                                    All
                                </a>
                            </li>

                            <li class="p-b-6">
                                <a href="{{ request()->fullUrlWithQuery(['fill' => '1']) }}" class="filter-link stext-106 trans-04">
                                    < 1.000.000 VNĐ
                                </a>
                            </li>

                            <li class="p-b-6">
                                <a href="{{ request()->fullUrlWithQuery(['fill' => '2']) }}" class="filter-link stext-106 trans-04">
                                     1.000.000 - 2.500.000 VNĐ
                                </a>
                            </li>

                            <li class="p-b-6">
                                <a href="{{ request()->fullUrlWithQuery(['fill' => '3']) }}" class="filter-link stext-106 trans-04">
                                    > 2.500.000 VNĐ
                                </a>
                            </li>



                        </ul>
                    </div>


                </div>
            </div>
        </div>
        <div id="list_cate">
            @include('front-end.product.product')
        </div>


        {!! $products->links() !!}
    </div>
</section>
@endsection

@section('footer_client')
    <script>
        $(document).ready(function (){
            $(document).on('keyup','#search_product', function (){
                var keyword = $(this).val();

                $.ajax({
                    type: "get",
                    url: "{{ request()->url() }}/search",
                    data: {
                        keyword: keyword
                    },
                    datatype: "json",
                    success: function (results){
                        $('#list_cate').html(results.html);
                    }
                })
            })
        })
    </script>
@endsection
