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
            <th>Tên</th>
            <th>Nội dung</th>
            <th>Active</th>

            <th style="width: 100px">&nbsp;</th>
        </tr>
        </thead>
        <tbody id="list">
        @foreach($abouts as $about)
            <tr>
                <td>{{ $about -> id }}</td>
                <td>
                    <a target="_blank" href="{{ $about->thumb }}"><img width="100px" src="{{ $about->thumb }}"></a>
                </td>
                <td>{{ $about -> topic }}</td>
                <td>{{ $about -> content }}</td>
                <td>{!!  \App\Helpers\Helper::active($about -> active) !!}</td>
                <td>
                    @if(auth()->user()->can('edit') || auth()->user()->can('view'))
                        <a class="btn btn-primary btn-sm" href="/admin/abouts/edit/{{ $about->id  }}">
                            <i class="fas fa-edit"></i>
                        </a>
                    @endif
{{--                    @can('delete')--}}
                        <a href="#" class="btn btn-danger btn-sm"
                           onclick="removeRow({{ $about->id  }}, '/admin/abouts/destroy')">
                            <i class="fas fa-trash"></i>
                        </a>
{{--                    @endcan--}}
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
    {!! $abouts->links() !!}
@endsection


