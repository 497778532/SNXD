$(function () {
    $("img").lazyload({
        placeholder: "images/loading.gif",
        effect: "fadeIn",
        threshold: 180,
    });
    mui('.mui-scroll-wrapper.left').scroll({
        deceleration: 0.0005, //flick 减速系数，系数越大，滚动速度越慢，滚动距离越小，默认值0.0006
        indicators: false, //是否显示滚动条
    });
    mui('.mui-scroll-wrapper.right').scroll({
        deceleration: 0.01, //flick 减速系数，系数越大，滚动速度越慢，滚动距离越小，默认值0.0006
        indicators: true, //是否显示滚动条
    });
    $('.search').on('tap', function () {
        location.href = 'search.html';
    })
    getFirstCate(function (data) {
        $('.left ul').html(template('firstTemplate', data));
        var liId = parseInt(window.sessionStorage.getItem('liId'));
        var defaultId = liId ? liId : data.rows[0].id;
        var defaultLi = ($(".left ul li[data-id=" + defaultId + "]"));
        getSecondCate({id: defaultId}, function (data) {
            $('.right .mui-scroll').html(template('secondTemplate', data));
            defaultLi.siblings().find('a').removeClass('now');
            defaultLi.find('a').addClass('now');
            $("img").lazyload({
                placeholder: "images/loading.gif",
                effect: "fadeIn",
                threshold: 180,
            });
            btnTap();
            buttonTap();
        });
        $('.left').on('tap', 'ul li', function () {
            scrollRight.scrollTo(0, 0, 100);
            window.sessionStorage.setItem('liId', $(this).data('id'));
            $('.left').find('li a').removeClass('now');
            $(this).find('a').addClass('now');
            getSecondCate({
                id: $(this).data('id')
            }, function (data) {
                $('.right .mui-scroll').html(template('secondTemplate', data));
                btnTap();
                // btnTap();
                buttonTap();
                $("img").lazyload({
                    placeholder: "images/loading.gif",
                    effect: "fadeIn",
                    threshold: 180,
                });
            });
        });
    });
})
var scrollRight = mui('.right').scroll({
    indicators: false
});

const getFirstCate = function (callback) {
    $.ajax({
        type: 'get',
        url: "/api/category/queryTopCategory",
        data: '',
        dataType: 'json',
        success: function (data) {
            callback && callback(data)
        }
    })
}
const getSecondCate = function (params, callback) {
    $.ajax({
        type: 'get',
        url: '/api/category/querySecondCategory',
        data: params,
        dataType: 'json',
        success: function (data) {
            /*����ȡ����֮�������*/
            callback && callback(data);
        }
    });
}
const btnTap = function () {
    $('.product .btn-size').on('tap', function () {
        var that = $(this);
        if ($(this).hasClass('jia')) {
            var numElement = $(this).siblings('.num')
            // 获得被点击的这个产品旁边的num元素
            var num = numElement.html();
            num++;
            numElement.html(num);
            if (num > 0) {
                $(this).siblings().css("visibility", "visible");
                var params = {size: 1,}
            }
        }
        if ($(this).hasClass('jian')) {
            var id = parseInt($(this).parent().attr('data-id'));
            var numElement = $(this).siblings('.num')
            var num = numElement.html();
            num--;
            numElement.html(num);
            if (num <= 0) {
                $(this).parent().find('.jia').siblings().css("visibility", "hidden");
            }
        }
    });

}
const buttonTap = function () {
    $('.button').on('tap', function () {
        var that = $(this)
        var num = parseInt($(this).siblings('.num').html());
        var id = parseInt($(this).parent().attr('productId'));
        sn.getCartData(function (data) {
            var _sourceImg = that.parents('.product').find('img');
            var _back = function () {
            };
            var _target = $(".imgBox");
            objectFlyIn(_sourceImg, _target, _back);
            AddcartOrUpdateCart(data, id, num)
        })

    })
}

function objectFlyIn(_sourceImg, _target, _back) {
    var addOffset = _target.offset();

    var img = _sourceImg;
    var flyer = $('<img style="display: block;width: 50px;height: 50px;border-radius: 50px;position: fixed;z-index: 100000;" src="' + img.attr('src') + '">');
    var X, Y;

    if (img.offset()) {
        X = img.offset().left - $(window).scrollLeft();
        Y = img.offset().top - $(window).scrollTop();
    }
    flyer.fly({
        start: {
            left: X + img.width() / 2 - 25, //开始位置（必填）
            top: Y + img.height() / 2 - 25 //开始位置（必填）
        },
        end: {
            left: addOffset.left + 10, //结束位置（必填）
            top: addOffset.top + 10, //结束位置（必填）
            width: 10, //结束时宽度
            height: 10 //结束时高度
        },
        onEnd: function () { //结束回调
            this.destroy(); //移除dom
            _back();
        }
    });

}

const btnElement = function () {
    sn.getCartData(function (data) {
        var arr3 = $('.product').find('[productId]');
        console.log(arr3)
        for (var i = 0; i < arr3.length; i++) {
            console.log(arr3[i].attr['productId'])
            for (var j = 0; j < data.data.length; j++) {
                if (arr3[i].attr['productId'] == data.data[j]) {
                    console.log(1)
                }
            }
        }
        console.log(data)
        var arr = data.data;
        var arr2 = [];
        arr.forEach(function (item, i) {
            arr2[i] = item.productId;
        })
    })
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
const deleteCart = function (params, callback) {
    sn.loginAjax({
        type: 'post',
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
const addCart = function (params, callback) {
    sn.loginAjax({
        type: 'post',
        url: '/api/cart/addCart',
        data: params,
        success: function (data) {
            callback && callback(data)
        },
        error: function () {
            mui.toast('网络繁忙')
        }
    })
}

// 购物车逻辑 是增加？还是新建
var AddcartOrUpdateCart = function (data, id, num) {
    var arr = data.data;
    if (!arr) {
        addCart({productId: id, size: 1, num: num}, function (data) {
            if (data.success) {
                mui.toast('添加购物车成功')
            } else {
                mui.toast('添加购物车失败')
            }
        })
        return false
    }
    var arr2 = [];
    var arr3 = [];
    // 可以得到对应商品的id
    arr.forEach(function (item, i) {
        arr2[arr[i].id] = arr[i].productId
    })
    //可以得到对应商品的索引
    arr.forEach(function (item, i) {
        arr3[i] = arr[i].productId
    })
    if ($.inArray(id, arr2) > 0) {
        var cartId = $.inArray(id, arr2);
        var cartNum = data.data[$.inArray(id, arr3)].num;
        var params = {id: cartId, size: 1, num: cartNum + num};
        upDateCart(params, function (data) {
            mui.toast('购物车商品增加' + num + '件')
        })
    } else {
        addCart({productId: id, size: 1, num: num}, function (data) {
            if (data.success) {
                mui.toast('添加购物车成功')
            }
        })
    }
}
