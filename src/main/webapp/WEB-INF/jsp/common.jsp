<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath(); 
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
%>
<script type="text/javascript" src="<%=basePath%>js/jquery.min.js"></script>

<script type="text/javascript" src="<%=basePath%>js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/plugins/layer/layer.js"></script>
<script type="text/javascript" src="<%=basePath%>js/content.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/plugins/datapicker/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="<%=basePath%>js/plugins/validate/jquery.validate.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/plugins/validate/validate.expand.js"></script>
<script type="text/javascript" src="<%=basePath%>js/plugins/validate/messages_zh.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/demo/form-validate-demo.min.js"></script>

<link rel="stylesheet" type="text/css" href="<%=basePath%>css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/animate.min.css">
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/style.min.css">
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/plugins/bootstrap-table/bootstrap-table.min.css">
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/login.min.css">
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/input.css">