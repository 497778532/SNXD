$(function () {
    search();

    var id=sn.getUrlParams().productId;
    getProcuct({id:id},function (data) {
       $('.main').text(data.proName);
       $('.myMain') .html(template('bannerTemplate',data));
        $("img").lazyload({
            placeholder : "images/loading.gif",
            effect: "fadeIn",
            threshold :180,
        });
        var gallery = mui('.mui-slider');
        gallery.slider({
            interval:0//自动轮播周期，若为0则不自动播放，默认为0；
        });
        var data={
            productId:id,
            size:1,
            num:1
        };
        if(!data.productId){
            mui.toast('商品异常');
            return false;
        }
        $('.cart').on('tap',function () {
            sn.loginAjax({
                type:'post',
                url:'/api/cart/addCart',
                data:data,
                success:function (data) {
                    if(data.success){
                        mui.toast('加入购物车成功')
                    }else {
                        mui.toast('添加失败，请重试！');
                    }
                },
                error:function () {
                    mui.toast('网络繁忙')
                }
            })
        })
   })
});

var search = function () {
    /*1.默认固定顶部透明背景*//*监听页面滚动事件*/
    window.onscroll = function () {
        var scrollTop = $(window).scrollTop();
        if(scrollTop>10){
            $('.sn_header').addClass('scroll')
        } else {
            $('.sn_header').removeClass('scroll')
        }
    }
};
var getProcuct=function (params,callback) {
    $.ajax({
        type: 'get',
        url: '/api/product/queryProductDetail',
        data: params,
        dataType: 'json',
        success: function (data) {
            console.log(data )
            callback && callback(data);
        }
    });
}