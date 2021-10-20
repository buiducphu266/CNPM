$.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
});

function loadMore()
{
    const page = $('#page').val();
    $.ajax({
        type : 'POST',
        dataType : 'JSON',
        data : { page },
        url : '/services/load-product',
        success : function (result) {
            if (result.html !== '') {
                $('#loadProduct').append(result.html);
                $('#page').val(page + 1);
            } else {
                alert('Đã load xong Sản Phẩm');
                $('#button-loadMore').css('display', 'none');
            }
        }
    })
}

$(document).on('keyup','#search_product', function (){
    var keyword = $('#search_product').val();
    var menu_id = $('#menu_id').val();

    $.ajax({
        type : 'GET',
        data : {
            keyword: keyword.value,
            menu_id: menu_id.value,
        },
        url : '/search-product',
        success : function (result) {
            console.log(result);
        }
    })
})
