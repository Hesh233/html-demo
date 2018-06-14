<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" pageEncoding="utf-8"
	isELIgnored="false"%>

<!DOCTYPE html>
<html>
  <head>
    <!-- 引入common -->
    <%@ include file="/WEB-INF/jsp/shop/common.jsp" %>
    
    <style type="text/css">
    
    
    
.info-box {
	display: block;
	min-height: 90px;
	background: #fff;
	width: 100%;
	box-shadow: 0 1px 1px rgba(0,0,0,0.1);
	border-radius: 2px;
	margin-bottom: 15px
}

.info-box small {
	font-size: 14px
}

.info-box .progress {
	background: rgba(0,0,0,0.2);
	margin: 5px -10px 5px -10px;
	height: 2px
}

.info-box .progress,.info-box .progress .progress-bar {
	border-radius: 0
}

.info-box .progress .progress-bar {
	background: #fff
}

.info-box-icon {
	border-top-left-radius: 2px;
	border-top-right-radius: 0;
	border-bottom-right-radius: 0;
	border-bottom-left-radius: 2px;
	display: block;
	float: left;
	height: 90px;
	width: 90px;
	text-align: center;
	font-size: 45px;
	line-height: 90px;
	background: rgba(0,0,0,0.2)
}

.info-box-icon>img {
	max-width: 100%
}

.info-box-content {
	padding: 5px 10px;
	margin-left: 90px
}

.info-box-number {
	display: block;
	font-weight: bold;
	font-size: 18px
}

.progress-description,.info-box-text {
	display: block;
	font-size: 14px;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis
}

.info-box-text {
	text-transform: uppercase
}

.info-box-more {
	display: block
}
    
    </style>
    
    
    <script type="text/javascript">
      layui.use('element', function(){
        var element = layui.element;
        $ = layui.$;  
      });  
    </script>   
  </head>
  
  <body class="layui-layout-body">
    <div class="layui-layout layui-layout-admin">
      <%@ include file="/WEB-INF/jsp/shop/top.jsp" %>
      <%@ include file="/WEB-INF/jsp/shop/menu.jsp" %>
      
      <div class="layui-body">
        <div class="layui-fluid">  
        
          <div class="layui-row layui-content-nav">
            <div class="layui-col-xs12">
              <span class="layui-breadcrumb"  lay-separator=">">  
                <a href=""><i class="fa fa-home fa-lg"></i>首页</a>
                <a href="">新闻</a>  
                <a href="">国际</a>  
              </span>
	        </div>
          </div>  
           
	       
             
            <div class="layui-row">
        <div class="layui-col-md3 layui-col-sm6 layui-col-xs12">
          <div class="info-box">
            <span class="info-box-icon layui-bg-blue"><i class="fa fa-cog"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">CPU Traffic</span>
              <span class="info-box-number">90<small>%</small></span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
        <div class="layui-col-md3 layui-col-sm6 layui-col-xs12">
          <div class="info-box">
            <span class="info-box-icon layui-bg-red"><i class="fa fa-first-order"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">Likes</span>
              <span class="info-box-number">41,410</span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->

        <!-- fix for small devices only -->
        <div class="clearfix visible-sm-block"></div>

        <div class="layui-col-md3 layui-col-sm6 layui-col-xs12">
          <div class="info-box">
            <span class="info-box-icon layui-bg-green"><i class="fa fa-shopping-cart"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">Sales</span>
              <span class="info-box-number">760</span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
        <div class="layui-col-md3 layui-col-sm6 layui-col-xs12">
          <div class="info-box">
            <span class="info-box-icon layui-bg-orange"><i class="fa fa-users"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">New Members</span>
              <span class="info-box-number">2,000</span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
      </div>
            
          
        
        </div>	
        
        <div class="layui-fluid">  
        
          <div class="layui-row">
          </div>
        
        </div>
        
      </div>
      <%@ include file="/WEB-INF/jsp/shop/bottom.jsp" %>
    </div>
  </body>
</html>