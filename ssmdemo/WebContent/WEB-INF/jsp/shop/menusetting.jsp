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
 
<table class="layui-table" lay-data="{url:'/ssmdemo/shopInf/setMenu', id:'test3'}" lay-filter="test3">
  <thead>
    <tr>
      <th lay-data="{type:'checkbox'}">ID</th>
      <th lay-data="{field:'id', width:180, sort: true}">id</th>
      <th lay-data="{field:'menuname', width:180, sort: true}">menuname</th>
      <th lay-data="{field:'shopid', edit: 'text', minWidth: 150}">shopid</th>
    </tr>
  </thead>
</table>
              
          
<script src="${ pageContext.request.contextPath }/layui/layui.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
layui.use('table', function(){
  var table = layui.table;
  
  //监听单元格编辑
  table.on('edit(test3)', function(obj){
    var value = obj.value //得到修改后的值
    ,data = obj.data //得到所在行所有键值
    ,field = obj.field; //得到字段
    layer.msg('[ID: '+ data.id +'] ' + field + ' 字段更改为：'+ value);
  });
});
</script>

</body>
</html>