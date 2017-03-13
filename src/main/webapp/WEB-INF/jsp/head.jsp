<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath(); 
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
%>
<div class="row blue-bg border-bottom dashboard-header navbar ">
       <div class="col-sm-12" >
          	<div class="text-right">
          		<a ><label style="color: white;"><u><b>登入</b></u></label></a>
        		&nbsp;&nbsp;
        		<a href="<%=basePath %>register"><label style="color: white;"><u><b>注册</b></u></label></a>
        		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        	</div>
     </div>
 </div>
