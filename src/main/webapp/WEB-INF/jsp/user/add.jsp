<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%
	String path = request.getContextPath(); 
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>用户注册</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<jsp:include page="../common.jsp" ></jsp:include>
<link rel="stylesheet" type="text/css" href="<%=basePath %>css/plugins/verification-code/drag.css" >
<script type="text/javascript" src="<%=basePath %>js/plugins/verification-code/drag.js"></script>
<script type="text/javascript">
	function save(){
		var val = $(".drag_text").text().trim();
		if(val!="验证通过"){
			$("#drag-lable").css("display","block");
			return false;
			//setTimeout("$(\"#drag-lable\").css(\"display\",\"none\")",5000);
		}
		$("#signupForm").submit();
	}
	
	$(function(){
		var flag="${flag}";
		if(flag==1){
			$("#errorInfo").css("display","block")
			setTimeout("$(\"#errorInfo\").css(\"display\",\"none\")",5000);
		}else if(flag==2){
			$("#signupForm").attr("action", "");
			layer.open({
				  type: 1
				  ,title: false //不显示标题栏
				  ,closeBtn: false
				  ,area: '300px;'
				  ,shade: 0.8
				  ,id: 'LAY_layuipro' //设定一个id，防止重复弹出
				  ,resize: false
				  ,btn: ['完善资料', '进入首页']
				  ,btnAlign: 'c'
				  ,moveType: 1 //拖拽模式，0或者1
				  ,content: '<div style="padding: 50px; line-height: 22px; background-color: #393D49; color: #fff; font-weight: 300;">注册成功！<br/>恭喜您注册成功，光荣的成为一个有号的人。希望您能经常光顾本网站无私的分享一些自身的经历为他人指点迷津以及加强自身反套路经验！这么好的装逼机会还不赶紧动起来。。。</div>'
				  ,success: function(layero){
				    var btn = layero.find('.layui-layer-btn');
				    btn.find('.layui-layer-btn0').attr({
				      href: 'http://www.baidu.com'
				      ,target: '_self'
				    });
				    btn.find('.layui-layer-btn1').attr({
				      href: '<%=basePath%>'
				      ,target: '_self'
				    });
				  }
			});
		}
	});
</script>
</head>
<body class="gray-bg">
	<jsp:include page="../head.jsp"></jsp:include>
	     <div class="row"><div class="gray-bg">&nbsp;&nbsp;</div></div>
	     <div class="row"><div class="gray-bg">&nbsp;&nbsp;</div></div>
	     <div class="row"><div class="gray-bg">&nbsp;&nbsp;</div></div>
	     <div class="row"><div class="gray-bg">&nbsp;&nbsp;</div></div>
	     <div class="row"><div class="gray-bg">&nbsp;&nbsp;</div></div>
	     <div class="row"><div class="gray-bg">&nbsp;&nbsp;</div></div>
	    <div class="wrapper wrapper-content  animated fadeInRight article">
	        <div class="row">
	        	<div class="ibox float-e-margins">
		        	 <div class="ibox-content">
			            <div class="form-group">
		                	<div class="col-sm-3 col-lg-offset-5">
		                		 <h3>
		                		 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		                		 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		                		 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		                		 &nbsp;&nbsp;&nbsp;&nbsp;
		                		 	反套路平台账号注册
		                		 </h3>
		               		 </div>
			             </div>
			             <div class="form-group">
		                	<div class="col-sm-3 col-lg-offset-5">
		                		  <p><h5>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: blue">欢迎大家踊跃注册账号无私分享曝光各种欺骗陷阱,为其他人提供参考。</span></h5></p>
		               		 </div>
			             </div>
			            <form:form class="bs-example bs-example-form form-horizontal" modelAttribute="userBase" role="form" id="signupForm"  action="register/save">
			                <div class="form-group">
			                	<div class="col-sm-3 col-lg-offset-5">
				                    <input type="text" class="form-control" placeholder="请填写账号 如：admin" id="loginName" name="loginName" required="" />
			               		</div>
			                </div>
			                <div class="form-group">
			                	<div class="col-sm-3 col-lg-offset-5">
			                    	<input type="password" class="form-control" placeholder="请填写密码 如：abc123" id="password" name="password" required="" />
			               		</div>
			                </div>
			                <div class="form-group">
				                <div class="col-sm-3 col-lg-offset-5">
				                    <input type="password" class="form-control" placeholder="请再次填写密码" id="confirm_password" name="confirm_password" required="" />
				               	</div>
			                </div>
			                <div class="form-group">
				                <div class="col-sm-3 col-lg-offset-5">
				                    <div id="drag"></div>
				                </div>
				                <span id="drag-lable" style="color:#a94442;display:none;" class="col-sm-2 help-block m-b-none"><i class="fa fa-times-circle"></i>请拖动验证码进行校验!</span>
			                </div>
			                <div class="form-group" id="errorInfo" style="display:none;">
			                	<div class="col-sm-3 col-lg-offset-5">
			                		<span  style="color:#a94442;">注册失败,请重新注册!</span>
			                	</div>
			                </div>
			                <div class="form-group">
			                	<div class="col-sm-3 col-lg-offset-5">
			                		  <button type="button" class="btn btn-primary block full-width m-b" id="btn" onclick="save()">注 册</button>
			               		 </div>
			             	</div>
			
			                <p class="text-muted text-center"><small>已经有账户了？</small><a href="login.html">点此登录</a>
			                </p>
			            </form:form>
		            </div>
	           </div>
	        </div>
	    </div>
	<jsp:include page="../foot.jsp"></jsp:include>
	<script type="text/javascript">
		$('#drag').drag();
	</script>
</body>
</html>
