<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>首页</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<jsp:include page="../jsp/common.jsp" ></jsp:include>
<style type="text/css">
	ol,ul,li{padding:0;margin:0}
	.banner{POSITION: relative; WIDTH: 750px; FLOAT: left; HEIGHT: 120px; OVERFLOW: hidden}
	.banner OL{POSITION: absolute; TOP: 0px; LEFT: 0px}
	.banner LI{WIDTH: 750px; HEIGHT: 120px}
</style>
<script type="text/javascript">
$(function() {
    var index = 0;
    var adtimer;
    var _wrap = $("#container ol"); //
    var len = $("#container ol li").length;
    if (len > 1) {
        $("#container").hover(function() {
            clearInterval(adtimer);
        },
        function() {
            adtimer = setInterval(function() {

                var _field = _wrap.find('li:first'); //此变量不可放置于函数起始处,li:first取值是变化的
                var _h = _field.height(); //取得每次滚动高度(多行滚动情况下,此变量不可置于开始处,否则会有间隔时长延时)
                _field.animate({
                    marginTop: -_h + 'px'
                },
                500,
                function() { //通过取负margin值,隐藏第一行
                    _field.css('marginTop', 0).appendTo(_wrap); //隐藏后,将该行的margin值置零,并插入到最后,实现无缝滚动
                })

            },
            5000);
        }).trigger("mouseleave");
        function showImg(index) {
            var Height = $("#container").height();
            $("#container ol").stop().animate({
                marginTop: -_h + 'px'
            },
            1000);
        }
    }
});
</script>
</head>
<body class="gray-bg">
	<jsp:include page="../jsp/head.jsp" ></jsp:include>
    <div class="row">
	 <div class="gray-bg">
    	<div class="col-lg-4 col-lg-offset-2 pull-right">
    		<form class="form-search">
    			<div class="col-sm-8">
		        	<input type="text" id="serach" name="serach" class="form-control" placeholder="输入框"/>
	           </div>
	           <div class="col-sm-2">
		        	<a class="btn btn-success btn-outline btn-sm">
		               <i class="fa fa-search"></i> 查询
		           </a>
	           </div>
	           </form>
           </div>
	    </div>
    </div>
    <div class="wrapper wrapper-content  animated fadeInRight article">
    	<div class="row">
            <div class="col-lg-8 col-lg-offset-2">
                <div class="ibox float-e-margins">
                    <div class="ibox-content">
                    	<div class="row">
	                       <div class="col-lg-12">
	                       		<div class="col-lg-4 b-r">
		                        	<img src="https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2421449454,2185424703&fm=23&gp=0.jpg"  height="25%" width="70%"/>
		                        </div>
		                    	<div class="col-lg-8">
			                       <div class="banner" id="container">
			                       		<ol>
			                        		<c:forEach items="${encyclopedias}" var="s">
			                        			<li>
			                        				<p><h3><a href="http://www.baidu.com" >${s.title }</a></h3></p>
			                        				<p>
			                        					<h5>
			                        						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				                        					<c:if test="${fn:length(s.content)>'50'}">
				                        						${fn:substring(s.content, 0, 49)} ...
				                        					</c:if>
				                        					<c:if test="${fn:length(s.content)<='50'}">
				                        						${s.content }
				                        					</c:if>
			                        					</h5>
			                        				</p>
			                        				<div class="row">
			                        					<div class="col-sm-6">
			                        						&nbsp;<a href="www.baidu.com">更多</a>
			                        					</div>
			                        					<div class="col-sm-6">
				                        				<div class="small text-right">
								                       		<div> <i class="fa fa-comments-o"> </i> 0评论 </div>
								                       		<div> <i class="fa fa-clock-o"> </i> <fmt:formatDate value="${s.createTime }" pattern="yyyy-MM-dd"/> </div>
								                       </div>
								                       </div>
							                       </div>
			                        			</li>
			                        		</c:forEach>
		                        	   </ol>
			                       </div>
		                        </div>
	                        </div>
                       </div>
                    </div>
                </div>
            </div>
        </div>
    	<c:forEach items="${encyclopediaTypes }"  var="s" varStatus="ss">
    		<div class="row">
	            <div class="col-lg-8 col-lg-offset-2">
	                <div class="ibox float-e-margins">
	                    <div class="ibox-content">
	                    	<div class="row">
		                    	<div class="col-lg-12">
			                    	<div class="col-lg-8 b-r">
			                        	<a href="www.baidu.com" class="btn-link">
				                            <h2>${s.name}</h2>
				                        </a>
				                        <div class="small m-b-xs">
				                        	<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${s.common }</p>
				                        </div>
				                        <div class="row">
				                        	<div class="col-md-12">
				                        		<h5>* ${s.remark }</h5>
				                        	</div>
				                        </div>
			                        </div>
			                         <div class="col-lg-4">
			                         	<c:if test="${ss.index==1 }">
			                         		<img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1488519575613&di=e647eb42cf3ede4eeb7ce90ce7658c53&imgtype=0&src=http%3A%2F%2Fn1.itc.cn%2Fimg8%2Fwb%2Frecom%2F2016%2F07%2F13%2F146839547352645982.JPEG"  height="25%" width="70%"/>
			                         	</c:if>
			                         	<c:if test="${ss.index==0 }">
				                        	<img src="https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=26075073,716374040&fm=23&gp=0.jpg"  height="25%" width="70%"/>
			                         	</c:if>
			                        </div>
		                        </div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
    	</c:forEach>
    </div>
   	<jsp:include page="../jsp/foot.jsp" ></jsp:include>
</body>
</html>
