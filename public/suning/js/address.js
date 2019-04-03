$(function () {
    getAddress(function (data) {
        $('.address-list').html(template('addressTemplate',{list:data}))
    })
})
var getAddress=function (callback) {
    sn.loginAjax({
        url:' /api/address/queryAddress',
        success:function (data) {
            callback&&callback(data)
        }

    })
}