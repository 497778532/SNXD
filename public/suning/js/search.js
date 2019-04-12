$(function () {
    $('.middleBar').html(template('historyTemplate',{model:getSearchData()}))
    console.log(getSearchData())
    $('input').val('').on('keypress input',function (e) {
        var keycode = e.keyCode;
        var searchName = $(this).val();
        if(keycode=='13'){
            e.preventDefault();
            var key = $.trim($(this).val());
            console.log(key)
            if(!key){
                mui.toast('请输入关键字');
                return false;
            }
            addSearchData(key);
            location.href = 'searchList.html?key='+key;
            return false
        }
    });
    $('.icon').on('tap',function () {
        localStorage.clear();
        $('.middleBar').html(template('historyTemplate',{model:getSearchData()}))
    })
})
var getSearchData = function(){
    return JSON.parse(localStorage.getItem('suNingHistory') || '[]');
};
var addSearchData = function(key){
    var list = getSearchData();

    $.each(list,function(i,item){
        if(item == key){
            list.splice(i,1);
        }
    });
    list.push(key);
    if(list.length >15){
        list.splice(0,list.length-10);
    }

    localStorage.setItem('suNingHistory',JSON.stringify(list));
};
