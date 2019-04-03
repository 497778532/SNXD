$(function () {
    $('.login-btn').on('tap', function () {
        var username = $('#username').val();
        var password = $('#password').val();
        var data = {username: username, password: password}
        if (username.length == 0) {
            mui.toast("用户名不能为空");
            return;
        }
        if (password.length == 0) {
            mui.toast("密码不能为空");
            return;
        }
        $.ajax({
            type: 'post',
            url: '/api/user/login',
            datType: 'json',
            data: data,
            success: function (data) {
                if (data.success) {
                    if (location.search && location.search.indexOf('?returnUrl=') > -1) {
                        var returnUrl = location.search.replace('?returnUrl=', '');
                        location.href = returnUrl;
                    }
                    /*2.首页*/
                    else {
                        location.href = '/suning/index.html';
                    }
                } else {
                   mui.toast('账号密码错误')
                }
            }


        })
    });
    $('#goReg').on('tap', function () {
        mui.openWindow({
            url: 'reg.html',
            id: 'reg'
        })
    })
})