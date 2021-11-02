@extends('admin.main')

@section('content')
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
                <th>Tên khách hàng</th>
                <th>Ghi chú đơn hàng</th>
                <th>Tổng tiền</th>
                <th>Trạng thái</th>
                <th>Ngày đặt hàng</th>

                <th style="width: 100px">&nbsp;</th>
            </tr>
        </thead>
        <tbody id="list">
        @foreach($orders as $order)
            <tr>
                <td>{{ $order -> id }}</td>
                <td>{{ (App\Helpers\Helper::getNameCus($order -> member ->id))->name }}</td>
                <td>{{ $order -> note }}</td>

                <td>{{ number_format($order -> total_price) }}</td>
                <td>{{ $order -> status == 0 ? 'Đang chờ xử lí' : 'Đã giao' }}</td>
                <td>{{ $order -> created_at }}</td>
                <td>
                    <a class="btn btn-primary btn-sm" href="/admin/order/view/{{ $order->id  }}">
                        <i class="fas fa-eye"></i>
                    </a>
                    <a href="#" class="btn btn-danger btn-sm"
                       onclick="removeRow({{ $order->id  }}, '/admin/order/destroy')">
                        <i class="fas fa-trash"></i>
                    </a>
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
    <div>
        {!! $orders->links() !!}
    </div>
@endsection

@section('footer')
    <script>
        $(document).ready(function (){
            $(document).on('keyup','#keyword', function (){
                var keyword = $(this).val();

                $.ajax({
                    type: "get",
                    url: "/admin/order/search",
                    data: {
                        keyword: keyword
                    },
                    datatype: "json",
                    success: function (results){
                        $('#list').html(results.html);
                    }
                })
            })
        })
    </script>
@endsection
