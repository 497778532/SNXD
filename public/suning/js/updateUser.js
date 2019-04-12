$(function () {
    sn.loginAjax({
        url: '/api/user/queryUserMessage',
        success: function (data) {
            var mobile=sn.getTel(data.mobile);
            $('.black1').html(mobile);
            sn.vCode($('#getcode'),mobile);
        }
    })

})

