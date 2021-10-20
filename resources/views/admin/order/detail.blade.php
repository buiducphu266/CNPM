@extends('admin.main')

@section('content')
<div>
    <p>Họ và tên: {{ $cart -> customer -> name }}</p>
    <p>Số điện thoại: {{ $cart -> customer -> phone }}</p>
    <p>Địa chỉ: {{ $cart -> customer -> address }}</p>
    <p>Email: {{ $cart -> customer -> email }}</p>
    <p>Note: {{ $cart -> note }}</p>

</div>
<table class="table">
    <thead>
    <tr>
        <th>Hình ảnh</th>
        <th>Tên sản phẩm</th>
        <th>Giá tiền</th>
        <th>Số lượng</th>
        <th>Tổng tiền</th>

    </tr>
    </thead>
    <tbody>
    @foreach($cart_details as $cart_detail)

        <tr>
            <td>
                <img width="100px" src="{{ $cart_detail -> product -> thumb }}">
            </td>
            <td>{{ $cart_detail -> product -> name }}</td>
            <td>{{ $cart_detail -> price }}</td>
            <td>{{ $cart_detail -> qty }}</td>

            <td>{{ $cart_detail -> price * $cart_detail -> qty }}</td>

        </tr>
    @endforeach
    </tbody>
</table>
@endsection
