window.sn = {};
sn.getUrlParams = function () {

    var search = location.search;
    var params = {};
    if (search.indexOf('?') == 0) {
        search = search.substr(1);
        var arr = search.split('&');
        for (var i = 0; i < arr.length; i++) {
            /*itemArr name=10  ----> [name,10]*/
            var itemArr = arr[i].split('=');
            params[itemArr[0]] = decodeURI(itemArr[1]);
        }
    }
    return params;
};
sn.loginAjax = function (options) {
    $.ajax({
        type: options.type || 'get',
        url: options.url || location.pathname,
        data: options.data || {},
        dataType: options.dataType || 'json',
        beforeSend: function () {
            options.beforeSend && options.beforeSend();
        },
        success: function (data) {
            if (data.error == 400) {
                mui.toast('未登录，请登录');
                setTimeout(function () {
                    location.href = 'login.html?returnUrl=' + location.href;
                }, 1000)

            } else {
                options.success && options.success(data);
            }
        },
        error: function () {
            options.error && options.error();
        }
    });
};
sn.cartLoginAjax = function (options) {
    $.ajax({
        type: options.type || 'get',
        url: options.url || location.pathname,
        data: options.data || {},
        dataType: options.dataType || 'json',
        beforeSend: function () {
            options.beforeSend && options.beforeSend();
        },
        success: function (data) {
            /* error 如果  400  代表未登录 去登录页  携带url*/
            if (data.error == 400) {
                $('.content').html(`
                                     <div class="addLogin" style="">
                                     您还未登录,快去登录吧!
                                      <a href="login.html">登陆</a>
                                     </div>`)
            } else {
                options.success && options.success(data);
            }
        },
        error: function () {
            options.error && options.error();
        }
    });
};
sn.mySerialize = function (serializeStr) {
    var obj = {};
    if (serializeStr) {
        var arr = serializeStr.split('&');
        arr.forEach(function (item, i) {
            var itemArr = item.split('=');
            obj[itemArr[0]] = itemArr[1]
        })
    }
    return obj;
};
sn.getCartData = function (callback) {
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
};
sn.getIndexFromId = function (arr, id) {
    var index = null;
    for (var i = 0; i < arr.length; i++) {
        var item = arr[i];
        if (item && item.productId == id) {
            index = i;
            break;
        }
    }
    return index;
};
sn.getObjectFromId = function (arr, id) {
    var object = null;
    for (var i = 0; i < arr.length; i++) {
        var item = arr[i];
        if (item && item.id == id) {
            object = item;
            break;
        }
    }
    return object;
};
sn.vCode = function (ele, phone) {
    var time = 10;
    var flag = true;   //设置点击标记，防止10内再次点击生效
    //发送验证码
    ele.on('tap', function () {
        var phone = phone;
        if (flag) {
            var timer = setInterval(function () {
                if (time == 10 && flag) {
                    flag = false;
                    $.ajax({
                        type: 'get',
                        url: '/api/user/vCode',
                        datType: 'json',
                        data: phone,
                        success: function (data) {
                            if (data.vCode) {
                                mui.toast('验证码为' + data.vCode);
                                ele.html("已发送");
                            } else {
                                mui.toast('获取短信接口失败,请重试');
                                flag = true;
                                time = 10;
                                clearInterval(timer);
                            }
                        }
                    });
                } else if (time == 0) {
                    ele.html("获取验证码");
                    clearInterval(timer);
                    time = 10;
                    flag = true;
                } else {
                    ele.html(time + "s 重新发送");
                    time--;
                }
            }, 1000);
        }

    });
};
sn.getTel = function (tel) {
    var reg = /^(\d{3})\d{4}(\d{4})$/;
    return tel.replace(reg, "$1****$2");
}