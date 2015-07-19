//一些通用辅助函数

/**
 * 获取URL参数
 * @param  {[string]} name [参数名]
 * @return {[string]}      [对应的参数值]
 */
function get_url_param(name) {
   var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)","i");
   var r = window.location.search.substr(1).match(reg);
   if (r!=null) return (r[2]); return null;
}