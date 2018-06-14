<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    	<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>layout 后台大布局 - Layui</title>
  <link rel="stylesheet" href="${ pageContext.request.contextPath }/layui/css/layui.css">
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo">layui 后台布局</div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
    <ul class="layui-nav layui-layout-left">
      <li class="layui-nav-item"><a href="">控制台</a></li>
      <li class="layui-nav-item"><a href="">商品管理</a></li>
      <li class="layui-nav-item"><a href="">用户</a></li>
      <li class="layui-nav-item">
        <a href="javascript:;">其它系统</a>
        <dl class="layui-nav-child">
          <dd><a href="">邮件管理</a></dd>
          <dd><a href="">消息管理</a></dd>
          <dd><a href="">授权管理</a></dd>
        </dl>
      </li>
    </ul>
    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item">
        <a href="javascript:;">
          <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
          ${username}
        </a>
        <dl class="layui-nav-child">
          <dd><a href="">基本资料</a></dd>
          <dd><a href="">安全设置</a></dd>
        </dl>
      </li>
      <li class="layui-nav-item"><a href="">退了</a></li>
    </ul>
  </div>
  
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
            <dd><a href="/ssmdemo/index">超链接</a></dd>
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
        <li class="layui-nav-item"><a href="javascript:void(0);" onclick="iframelistener(this.id);" id="/ssmdemo/shopInf/menusetting">菜单设置1</a></li>
        <li class="layui-nav-item"><a href="javascript:void(0);" onclick="iframelistener(this.id);" id="/ssmdemo/shopInf/menuset">菜单设置2</a></li>
<!--         到时候c:foreach遍历生成菜单可以把url赋值到hidden标签上 -->
      </ul>
    </div>
  </div>
  
  <div class="layui-body">
    <!-- 内容主体区域 -->\
    <iframe src="/ssmdemo/shopInf/menuset"  scrolling="no" id="main" name="main" frameborder="0"  src="" style="min-height:600px;width:100%;height:100%;">

  </iframe>
  </div>
  
  <div class="layui-footer">
    <!-- 底部固定区域 -->
    © layui.com - 底部固定区域
  </div>
</div>
<script src="layui/layui.js"></script>
<script>
//JavaScript代码区域
layui.use('element', function(){
  var element = layui.element; 
});
// 计算页面的实际高度，iframe自适应会用到  
function calcPageHeight(doc) {  
    var cHeight = Math.max(doc.body.clientHeight, doc.documentElement.clientHeight)  
    var sHeight = Math.max(doc.body.scrollHeight, doc.documentElement.scrollHeight)  
    var height  = Math.max(cHeight, sHeight)  
    return height  
}  
//根据ID获取iframe对象  
var ifr = document.getElementById('main')  
ifr.onload = function() {  
    //解决打开高度太高的页面后再打开高度较小页面滚动条不收缩  
    ifr.style.height='0px';  
    var iDoc = ifr.contentDocument || ifr.document  
    var height = calcPageHeight(iDoc)  
    if(height < 850){  
      height = 850;  
    }  
    ifr.style.height = height + 'px'  
} 
function iframelistener(obj)//从id获取url
{
	obj = JSON.stringify(obj);//对象转字符
	obj = obj.substring(1,obj.length-1);
	document.getElementById("main").src=obj;
	}
</script>

</body>
</html>