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
            <th>Hình ảnh</th>
            <th>Tên sản phẩm</th>
            <th>Danh mục</th>
            <th>Giá gốc</th>
            <th>Số lượng</th>
            <th>Active</th>
            <th>Update</th>

            <th style="width: 100px">&nbsp;</th>
        </tr>
        </thead>
        <tbody id="list">
            @foreach($products as $product)
                <tr>
                    <td>{{ $product -> id }}</td>
                    <td>
                        <a target="_blank" href="{{ $product->thumb }}"><img width="100px" src="{{ $product->thumb }}"></a>
                    </td>
                    <td>{{ $product -> name }}</td>
                    <td>{{ $product -> menu ->name }}</td>
                    <td>{{ $product -> price }}</td>
                    <td>{{ $product -> qty }}</td>
                    <td>{!!  \App\Helpers\Helper::active($product -> active) !!}</td>
                    <td>{{ $product -> updated_at }}</td>
                    <td>
                        <a class="btn btn-primary btn-sm" href="/admin/products/edit/{{ $product->id  }}">
                            <i class="fas fa-edit"></i>
                        </a>
                        <a href="#" class="btn btn-danger btn-sm"
                           onclick="removeRow({{ $product->id  }}, '/admin/products/destroy')">
                            <i class="fas fa-trash"></i>
                        </a>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
    <div>
        {!! $products->links() !!}
    </div>
@endsection

@section('footer')
    <script>
        $(document).ready(function (){
            $(document).on('keyup','#keyword', function (){
                var keyword = $(this).val();

                $.ajax({
                    type: "get",
                    url: "/admin/products/search",
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


