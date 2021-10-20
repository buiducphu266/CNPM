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
            <th>Name</th>
            <th>Email</th>
            <th>Password</th>
            <th>Phân quyền</th>

            <th style="width: 100px">&nbsp;</th>
        </tr>
        </thead>
        <tbody id="list">
        @foreach($users as $user)
            <tr>
                <td>{{ $user -> id }}</td>
                <td>{{ $user -> name }}</td>
                <td>{{ $user -> email }}</td>
                <td>{{ $user -> password }}</td>
                @foreach($user->roles as $role)
                    <td>{{ $role -> name }}</td>
                @endforeach
                <td>
                    <a class="btn btn-primary btn-sm" href="/admin/users/edit/{{ $user->id  }}">
                        <i class="fas fa-edit"></i>
                    </a>
                    <a href="#" class="btn btn-danger btn-sm"
                       onclick="removeRow({{ $user->id  }}, '/admin/users/destroy')">
                        <i class="fas fa-trash"></i>
                    </a>
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
    {!! $users->links() !!}
@endsection

@section('footer')
    <script>
        $(document).ready(function (){
            $(document).on('keyup','#keyword', function (){
                var keyword = $(this).val();

                $.ajax({
                    type: "get",
                    url: "/admin/users/search",
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

