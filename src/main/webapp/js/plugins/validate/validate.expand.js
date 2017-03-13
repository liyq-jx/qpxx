/**
 * jquery.validate.min.js
 * 自定义校验规则补充
 */
var e="<i class='fa fa-times-circle'></i> ";
$.validator.addMethod("loginName", function(value, element) {
    return this.optional(element) || /^[a-zA-Z\d]\w{3,11}[a-zA-Z\d]$/.test(value);
}, e+"请设置字母开头且不少于4位的合法账号!");  

$.validator.addMethod("password", function(value, element) {
    return this.optional(element) || /^[A-Za-z0-9\u4e00-\u9fa5]+$/.test(value);
}, e+"请检查密码格式,密码是由字母和数字组成!");  