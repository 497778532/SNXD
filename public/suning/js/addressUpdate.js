$(function () {
    var id=parseInt(sn.getUrlParams().addressId);
    getAddress(function (data) {
        var obj=sn.getObjectFromId(data,id)
        console.log(obj)
        $('#addr-name').val(obj.recipients)
        $('#addr-tel').val(obj.mobile)
        $('#addr-address').val(obj.address)
        $('#addr-detail').val(obj.addressDetail)
        $('#addr-postCode').val(obj.postCode);

    })
    $('.sn-btn').on('tap',function () {
        var params={
            id:id,
            address: $('#addr-address').val(),
            addressDetail:$('#addr-detail').val(),
            recipients:$('#addr-name').val(),
            postcode:$('#addr-postCode').val(),
        }
        updataAddress(params,function (data) {
            if(data.success){
                history.back(-1)
            }else {
                mui.toast('网络异常，请重试')
            }
        })
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
var updataAddress=function (params,callback) {
    sn.loginAjax({
        url:' /api/address/updateAddress',
        type:'post',
        data:params,
        success:function (data) {
            callback&&callback(data);
        }
    })
}