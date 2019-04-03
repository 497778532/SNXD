$(function () {
    $('.send-btn').on('tap', function () {
        var data = $('form').serialize();
        var dataObj = sn.mySerialize(data);
        window.mobile = dataObj.mobile;
        if (dataObj.mobile.length == 0) {
            mui.toast("手机号不能为空");
            return;
        }
        sn.vCode($('.send-btn'), dataObj.mobile)
    })
    $('.reg-btn').on('tap', function () {
        var data = $('form').serialize();
        var dataObj = sn.mySerialize(data);
        if (window.mobile !== dataObj.mobile) {
            mui.toast('验证码错误');
            return
        }
        if (dataObj.username.length == 0) {
            mui.toast("用户名不能为空");
            return;
        }
        if (dataObj.password.length == 0) {
            mui.toast("密码不能为空");
            return;
        }
        if (dataObj.mobile.length == 0) {
            mui.toast("手机号不能为空");
            return;
        }
        if (dataObj.vCode.length == 0) {
            mui.toast("验证码不能为空");
            return;
        }
        if (window.mobile !== dataObj.mobile) {
            mui.toast("验证码错误");
            return;
        }

        $.ajax({
            type: 'post',
            url: '/api/user/register',
            datType: 'json',
            data: data,
            success: function (data) {
                if (data.success) {
                    if (location.search && location.search.indexOf('?returnUrl=') > -1) {
                        var returnUrl = location.search.replace('?returnUrl=', '');
                        location.href = returnUrl;
                    }
                    else {
                        location.href = '/suning/index.html';
                    }
                } else {
                    mui.toast(data.message);
                }
            }


        })
    });
})