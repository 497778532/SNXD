$(function () {
    console.log(1)
    mui('.mui-scroll-wrapper').scroll({
        scrollY: true, //是否竖向滚动
        scrollX: false, //是否横向滚动
        startX: 0, //初始化时滚动至x
        startY: 0, //初始化时滚动至y
        indicators: false, //是否显示滚动条
        deceleration: 0.0006, //阻尼系数,系数越小滑动越灵敏
        bounce: true//是否启用回弹
    });
    var key = sn.getUrlParams().key || '';
    $('input').val(key);
    var currPage = 1;
    loading();
    var render = function (callback) {
        /*获取搜索框当中的按钮*/
        var key = $.trim($('input').val());
        /*判断是否输入了内容*/
        if (!key) {
            mui.toast('请输入关键字');
            return false;
        }
        /*获取需要排序的方式*/
        var type = $('[data-order].cur').attr('data-order');
        var value = $('[data-order].cur').find('i').hasClass('down') ? 2 : 1;
        var order = {};
        if (type) {
            order[type] = value;
        }
        var pageSize = 4;
        getProductListData($.extend({
            proName: key,
            page: currPage,
            pageSize: pageSize
        }, order), function (data) {

            /*渲染商品列表*/
            if (currPage == 1) {
                $('.productsList').html(template('productTpl', {model: data}))
            } else {
                $('.productsList').append(template('productTpl', {model: data}));
            }
            callback && callback();
        });
    };
    render();
    $('input').on('keypress', function (e) {
            var keycode = e.keyCode;
            var searchName = $(this).val();
            if (keycode == '13') {
                e.preventDefault();
                var key = $.trim($(this).val());
                if (!key) {
                    mui.toast('请输入关键字');
                    return false;
                }
                $('[data-order].cur').removeClass('cur').find('i').removeClass('top down');
                $('.productsList').html('<div class="loading"><span class="mui-icon mui-icon-spinner"></span></div>');
                currPage = 1;
                render();
            }
        }
    );
    $('[data-order]').on('tap', function () {
       $('.mui-scroll').css({"transform":"translate3d(0px, 0px, 0px)"});
        var $this = $(this);
        if (!$this.hasClass('cur')) {
            $this.find('i').addClass('down');
            $this.addClass('cur').siblings().removeClass('cur').find('i').removeClass('top down');
        } else {
            if ($this.find('i').hasClass('top')) {
                $this.find('i').removeClass('top').addClass('down')
            } else {
                $this.find('i').removeClass('down').addClass('top')
            }
        }
        loading()
        currPage = 1;
        render();
    });


    mui.init({
        /*4.下拉刷新*/
        pullRefresh: {
            container: ".mui-scroll-wrapper",
            contentnomore:'没有更多数据了',
            down: {
                callback: function () {
                    /*注意：下拉操作完成之后 业务 */
                    /*模拟一次向后台发送请求 响应之后的时间消耗*/
                    var that = this;
                    /*这个是下拉组件对象  对象当中含有终止下拉操作的方法*/
                    /*当前页码*/
                    currPage = 1;
                    /*开发真实的业务*/
                    render(function () {
                        /*下拉效果隐藏*/
                        that.endPulldownToRefresh();
                    });
                }
            },
            /*5.上拉加载*/
            up: {
                callback: function () {
                    /*注意：上拉操作完成之后 业务 */
                    /*模拟一次向后台发送请求 响应之后的时间消耗*/
                    var that = this;
                    /*这个是上拉组件对象  对象当中含有终止下拉操作的方法*/
                    setTimeout(function () {
                        /*上拉效果隐藏*/
                        /*可传参 如果传的是true 表示没有更多数据*/
                        that.endPullupToRefresh();
                    }, 200);

                    /*下一页*/
                    currPage++;
                    /*开发真实的业务*/
                    render(function () {
                        console.log(1)
                        /*上拉效果隐藏*/
                        /*可传参 如果传的是true 表示没有更多数据*/
                        that.endPullupToRefresh();
                    });
                }
            }
        }
    });
    // getProductListData({
    //     proName: key,
    //     page: 1,
    //     pageSize: 4
    // }, function (data) {
    //     $('.productsList').html(template('productTpl', {model: data}))
    // });
    //
    //
    //
    //
    // $('input').on('keypress', function (e) {
    //     var keycode = e.keyCode;
    //     var searchName = $(this).val();
    //
    //         ;
    //         getProductListData({
    //             proName: key,
    //             page: 1,
    //             pageSize: 4
    //         }, function (data) {
    //             $('.productsList').html(template('productTpl', {model: data}))
    //         });
    //     }
    // })
    // $('.sn-nav-search li').on('tap', function () {
    //
    //     var key = $.trim($(this).val());
    //     if (!key) {
    //         mui.toast('请输入关键字');
    //         return false;
    //     }
    //     var order=$this.attr('data-order');
    //     var orderVal=$this.find('i').hasClass('top')?1:2;
    //     var params={
    //         proName: key,
    //         page: 1,
    //         pageSize: 4
    //     }
    //     console.log(orderVal)
    //     params[order]=orderVal;
    //     getProductListData(params,function (data) {
    //         $('.productsList').html(template('productTpl', {model: data}))
    //     })
    //
    // })

})

var getProductListData = function (prams, callback) {
    $.ajax({
        type: 'get',
        url: '/api/product/queryProduct',
        data: prams,
        dataType: 'json',
        success: function (data) {
            /*模拟一下加载时间*/
            setTimeout(function () {
                if (data.data.length == 0) mui.toast('没有更多商品了');
                callback && callback(data);
            }, 200);
        }
    });
}
var loading = function () {
    $('.productsList').html('<div class="loading"><span class="mui-icon mui-icon-spinner"></span></div>');
}