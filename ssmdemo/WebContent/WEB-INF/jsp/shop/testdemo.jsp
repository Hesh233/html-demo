<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" pageEncoding="utf-8"
	isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
	<!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
<link rel="stylesheet" href="${ pageContext.request.contextPath }/layui/css/layui.css" media="all">
</head>
<body>
	<ul class="layui-nav layui-nav-tree" lay-filter="test">
		<!-- 侧边导航: <ul class="layui-nav layui-nav-tree layui-nav-side"> -->
		<li class="layui-nav-item layui-nav-itemed"><a href="javascript:;">默认展开</a>
			<dl class="layui-nav-child">
				<c:forEach var="s" items="${itemname1[0]}" varStatus="i">
					<dd>
						<a href="${pageContext.request.contextPath}${itemname1[1].get(i.count-1)}">${itemname1[0].get(i.count-1)}</a>
					</dd>
				</c:forEach>
			</dl></li>
		<li class="layui-nav-item"><a href="javascript:;">解决方案</a>
			<dl class="layui-nav-child">
				<dd>
					<a href="javascript:;">后台模版</a>
					<dl class="layui-nav-child">
						<c:forEach var="s" items="${itemname2[0]}" varStatus="i">
							<dd>
								<a href="${pageContext.request.contextPath}${itemname2[1].get(i.count-1)}">${itemname2[0].get(i.count-1)}</a>
							</dd>
						</c:forEach>
					</dl>
				</dd>
				<dd>
					<c:forEach var="s" items="${itemname1[0]}" varStatus="i">
					<dd>
						<a href="${pageContext.request.contextPath}${itemname1[1].get(i.count-1)}">${itemname1[0].get(i.count-1)}</a>
					</dd>
				</c:forEach>
				</dd>
			</dl></li>
		<li class="layui-nav-item"><a href="">产品</a></li>
		<li class="layui-nav-item"><a href="">大数据</a></li>
	</ul>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
	<script src="layui/layui.js"></script>
	<script>
		layui.use('element', function() {
			var element = layui.element; //导航的hover效果、二级菜单等功能，需要依赖element模块  
			//监听导航点击
			element.on('nav(demo)', function(elem) {
				layer.msg(elem.text());
			});
		});
	</script>
</body>
</html>