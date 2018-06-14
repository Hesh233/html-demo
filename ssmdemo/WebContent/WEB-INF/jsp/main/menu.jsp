<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" pageEncoding="utf-8"
	isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
   String path=request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<script type="text/javascript">
	layui.use(['jquery'], function(){
		var $ = layui.$;   
		$(function(){
			var pathname = window.location.pathname;
			var hrefMenu = $("ul.layui-nav-tree a[href='"+pathname+"']");
			hrefMenu.parent().addClass("layui-this");
			hrefMenu.parent().parent().parent().addClass("layui-nav-itemed");
		});       
	});
	</script>
	<!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
<link rel="stylesheet" href="${ pageContext.request.contextPath }/layui/css/layui.css" media="all">
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item layui-nav-itemed">
          <a class="" href="javascript:;">所有商品</a>
          <dl class="layui-nav-child">
            <dd><a href="/ssmdemo/shopInf/menusetting">菜单设置</a></dd>
            <dd><a href="javascript:;">列表二</a></dd>
            <dd><a href="/ssmdemo/testdemo">列表三</a></dd>
            <dd><a href="">超链接</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">解决方案</a>
          <dl class="layui-nav-child">
            <dd><a href="javascript:;">列表一</a></dd>
            <dd><a href="javascript:;">列表二</a></dd>
            <dd><a href="">超链接</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item"><a href="/ssmdemo/shopInf/menusetting">菜单设置1</a></li>
        <li class="layui-nav-item"><a href="/ssmdemo/menuset.jsp">菜单设置2</a></li>
      </ul>
    </div>
  </div>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->











  
