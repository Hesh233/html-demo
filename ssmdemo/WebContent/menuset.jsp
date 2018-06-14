<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <title>layui</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="${ pageContext.request.contextPath }/layui/css/layui.css"  media="all">
  <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
</head>
<body>  
<div style="margin-bottom: 5px;">          
 
<!-- 示例-970 -->
<ins class="adsbygoogle" style="display:inline-block;width:970px;height:90px" data-ad-client="ca-pub-6111334333458862" data-ad-slot="3820120620"></ins>
 
</div>
 
<div class="layui-btn-group demoTable">
  <button class="layui-btn" data-type="getCheckData">获取选中行数据</button>
  <button class="layui-btn" data-type="getCheckLength">获取选中数目</button>
  <button class="layui-btn" data-type="isAll">验证是否全选</button>
  <button class="layui-btn"data-type="selectdel">选中删除</button>
  <button class="layui-btn"data-type="insert">添加数据</button>
</div>

<table class="layui-table" lay-data="{width: 892, height:332,url:'/ssmdemo/shopInf/setMenunew', page:true, id:'idTest'}" lay-filter="demo">
  <thead>
    <tr>
      <th lay-data="{type:'checkbox', fixed: 'left'}"></th>
      <th lay-data="{field:'id', width:80, sort: true, fixed: true}">id</th>
      <th lay-data="{field:'menubarid', width:80}">菜单id</th>
      <th lay-data="{field:'name', width:80, sort: true}">菜名</th>
      <th lay-data="{field:'price', width:80}">价格</th>
      <th lay-data="{field:'status', width:160}">状态</th>
      <th lay-data="{fixed: 'right', width:178, align:'center', toolbar: '#barDemo'}"></th>
    </tr>
  </thead>
</table>
<!-- <table class="layui-table"   lay-filter="demo" id="idTest"></table>   -->
          
<script src="${ pageContext.request.contextPath }/layui/layui.js" charset="utf-8"></script>
<script src="${ pageContext.request.contextPath }/layui/lay/modules/table.js" charset="utf-8"></script>
<script src="${ pageContext.request.contextPath }/layui/lay/modules/jquery.js" charset="utf-8"></script>

    	<script type="text/html" id="barDemo">
  <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
  <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
layui.use('table', function(){
  var table = layui.table;
  //监听表格复选框选择
  table.on('checkbox(demo)', function(obj){
    console.log(obj)
  });
  //监听工具条
  table.on('tool(demo)', function(obj){
    var data = obj.data;
    var checkStatus = table.checkStatus('idTest')
    ,dataa = checkStatus.data;
    console.log(dataa.menubarid)
    if(obj.event === 'detail'){
      layer.msg('ID：'+ data.id + ' 的查看操作');
    } else if(obj.event === 'del'){
      layer.confirm('真的删除行么', function(index){
    	  obj.del();
        layer.close(index);
      });
    } else if(obj.event === 'edit'){
    	layer.prompt({
    		 formType: 2,
    		 value:JSON.stringify(data),
    		 title: '请输入对应属性值,price为double型'
    		}, function(value, index, elem){
    		layer.close(index);
    		//layer.alert(value);
    		$.ajax({
    		type: "post",
    		url: "/ssmdemo/shopInf/change",
    		data: {data:value,id:data.id,menubarid:data.menubarid},
    		async: true,
    		 success:function(msg) {     //搞不懂值传过去相等了还是判断出不等
    			 msg = eval('(' + msg + ')');
    			 if(msg=="success"){
    			 layer.msg("修改成功",{time:2000});   }
                 else{
                 layer.msg("修改失败",{time:2000});}
             },
             error:function(msg){//没试过请求失败
           	  layer.msg("请求失败",{time:2000});
             }
    		});
    		setTimeout("reload()","2000"); //2秒后执行testFunction()函数，只执行一次。不放在成功那里，方便查看，不管成功失败都刷新
    		});
    }
  });
  var $ = layui.$, active = {
    getCheckData: function(){ //获取选中数据
      var checkStatus = table.checkStatus('idTest')
      ,data = checkStatus.data;
      layer.alert(JSON.stringify(data));
    }
  ,insert: function(){ ///////////////////////////
	  layer.prompt({
 		 formType: 2,
 		 value:'{"price":,"name":"","id":,"menubarid":,"status":""}',
 		 title: '请输入对应属性值,price为double型,String字符串类型要添加""'
 		}, function(value, index, elem){
 		layer.close(index);
 		$.ajax({
 		type: "post",
 		url: "/ssmdemo/shopInf/insert",
 		data: {data:value},
 		async: true,
 		 success:function(msg) {  
 			msg = eval('(' + msg + ')');
 			 if(msg=="success"){
 			 layer.msg("添加成功",{time:2000});}
              else{
              layer.msg("添加失败",{time:2000});}
          },
          error:function(msg){//没试过请求失败
        	  layer.msg("请求失败",{time:2000});
          }
 		});
 		  setTimeout("reload()","2000");
  });
  }
  ,selectdel: function(){ 
	  var table = layui.table;
	  var checkStatus = table.checkStatus('idTest')
      ,data = checkStatus.data;
	  layer.confirm('真的删除么', function(index){
      //监听表格复选框选择
      var ids = new Array();
	      for (var i in data){
	             ids[i]=(data[i].id);
	              console.log(ids[i]);
	        }
	      if(ids[0]==null)           //判断不为空
	    	  {
	    	  layer.msg("请选择要删除的行",{time:2000}); 
	    	  return;
	    	  }
      $.ajax({  
          type : "POST",  
          url :"/ssmdemo/shopInf/selectdel", 
         
          dataType : "text",  
          data : {data:ids},  
          complete:function(msg) {  
              layer.msg("删除成功",{time:2000});   
          },
          error:function(msg){//没试过请求失败
        	  layer.msg("请求失败",{time:2000});
          }
      }); 
      setTimeout("reload()","2000"); //2秒后执行testFunction()函数，只执行一次。
      layer.close(index);
	  });
  }
    ,getCheckLength: function(){ //获取选中数目
      var checkStatus = table.checkStatus('idTest')
      ,data = checkStatus.data;
      layer.msg('选中了：'+ data.length + ' 个');
    }
    ,isAll: function(){ //验证是否全选
      var checkStatus = table.checkStatus('idTest');
      layer.msg(checkStatus.isAll ? '全选': '未全选')
    }
  }; 
  $('.demoTable .layui-btn').on('click', function(){
    var type = $(this).data('type');
    active[type] ? active[type].call(this) : '';
  });
});
function reload(){
	var table = layui.table;
	table.reload('idTest', {//自动渲染重新加载延时2秒加载解决
		  url: '/ssmdemo/shopInf/setMenunew'
		});
}
</script>

</body>
</html>