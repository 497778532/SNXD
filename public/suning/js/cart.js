$(function () {
    $("img").lazyload({
        placeholder: "images/loading.gif",
        effect: "fadeIn",
        threshold: 180,
    });
    sn.getCartData(function (data) {
        window.data = data.data;
        $('.content').html(template('cartTemplate', data));
        getNum()
        $('#all').on('click', function () {
            $('.cartBody').find('input').prop('checked', $(this).prop('checked'));
            getNum()
        });
        $('.cartBody').find('input').on('click', function () {
            getNum();
            var length = $('.cartBody').find('input').length;
            var checkLength = $('.cartBody').find('input:checked').length;
            $('#all').prop('checked', length == checkLength)
        })
        btnTap();
        $('.deleteBtn').on('tap',function () {
            var parent=$(this).parents('li')
            var id=parseInt(parent.attr('data-id'));
           deleteCart({id:id},function (data) {
               console.log(data)
               if (data.success){
                   parent.remove()
               }else {
                   mui.toast('删除失败，请重试')
               }
           })
        })

    })

});

var getItemById = function (arr, id) {
    var obj = null;
    arr.forEach(function (item, i) {
        if (item.id == id) {
            obj = item;
        }
    });
    return obj
}

const upDateCart = function (params, callback) {
    sn.loginAjax({
        type: 'post',
        url: '/api/cart/updateCart',
        data: params,
        dataType: 'json',
        success: function (data) {
            callback && callback(data)
        },
        error: function (message) {
            console.log(message)
        }
    });
}
var getCartData = function (callback) {
    /*不做分页查询*/
    sn.cartLoginAjax({
        type: 'get',
        url: '/api/cart/queryCartPaging',
        data: {
            page: 1,
            pageSize: 100
        },
        dataType: 'json',
        success: function (data) {
            callback && callback(data)
        },
        error: function (message) {
            console.log(message)
        }
    });
}
const btnTap = function () {
    var fn = _.debounce(function () {
        var num = parseInt($(this).siblings('.num').html())
        var id = $(this).parent().attr('data-id');
        if (num > 1) {
            console.log($(this))
            if ($(this).hasClass('jia')) {
                num++;
            }
            if ($(this).hasClass('jian')) {
                num--;
            }
            $(this).siblings('.num').html(num);
            upDateCart({id: id, size: 1, num: num}, function (data) {
            })
        } else {
            $(this).parents('li').remove()
            deleteCart({id: id}, function (data) {
                console.log(data)
            })
        }
        ;
        getNum2()
    }, 300)
    $('.product .btn-size').on('tap', fn);
}

const deleteCart = function (params, callback) {
    sn.loginAjax({
        type: 'get',
        url: '/api/cart/deleteCart',
        data: params,
        dataType: 'json',
        success: function (data) {
            callback && callback(data)
        },
        error: function (message) {
            console.log(message)
        }
    });
}
var getNum = function () {
    var num = 0;
    var checkPro = $('.cartBody input:checked');
    for (var i = 0; i < checkPro.length; i++) {
        // 得到每一个拿到的产品
        var product = getItemById(window.data, $(checkPro[i]).attr('data-id'));
        num += product.price * product.num
    }
    $('#cartAmount').html(Math.ceil(num * 100) / 100)
}

var getNum2 = function () {
    var num = 0;
    var product = $('.product')
    for (var i = 0; i < product.length; i++) {
        var money = $(product[i]).find('.money').html();
        var number = $(product[i]).find('.num').html();
        num += money * number
    }
    ;
    $('#cartAmount').html(num)
}