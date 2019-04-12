var getUserData = function (callback) {
    sn.cartLoginAjax({
        type: 'get',
        data: '',
        url:'/api/user/queryUserMessage',
        dataType: 'json',
        success: function (data) {
            callback && callback(data)
        },
        error:function () {
            mui.toast('查询个人信息失败');
        }
    })
};
getUserData(function (data) {
    $('.user-name span').html(sn.getTel(data.mobile))
})
$(function () {
    $("img").lazyload({
        placeholder : "images/loading.gif",
        effect: "fadeIn",
        threshold :180,
    });

});

