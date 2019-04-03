$(function () {
    var gallery = mui('.mui-slider');
    gallery.slider({
        interval: 1000//自动轮播周期，若为0则不自动播放，默认为0；
    });
    $('.sn_topSearch a').on('tap',function () {
        location.href='/suning/search.html'
    })
    $("img").lazyload({
        placeholder : "images/loading.gif",
        effect: "fadeIn",
        threshold :180,
    });
    banner();
    brand();
});
var banner = function () {

    var banner = document.querySelector('.list-wrapper');

    /*屏幕宽度*/
    var height = 2.04;
    /*图片容器*/
    var imageBox = banner.querySelector('ul:first-child');
    var li = imageBox.getElementsByTagName('li')
    var addTransition = function () {
        imageBox.style.transition = 'all 2s';
        imageBox.style.webkitTransition = 'all 2s';
    }
    var removeTransition = function () {
        imageBox.style.transition = 'none';
        imageBox.style.webkitTransition = 'none';
    }
    var setTranslateY = function (marginTop) {
        imageBox.style.marginTop = marginTop + "rem";
    }
    /*程序的核心 index */
    var index = 0;
    var timer = setInterval(function () {
        if (index >= li.length - 1) {
            index = 0;
            removeTransition()
            setTranslateY(-index * height);
        } else {
            index++;
            addTransition();
            setTranslateY(-index * height);
        }

    }, 2000);
}
var brand = function () {
    var left = $('.left-wrapper .brand-logo');
    var right = $('.right-wrapper .brand-logo');
    setInterval(function () {
            if (left.hasClass('brand-logo-big')) {
                left.removeClass('brand-logo-big');
                right.addClass('brand-logo-big')
            } else {
                left.addClass('brand-logo-big');
                right.removeClass('brand-logo-big')
            }
        },5000);
}
