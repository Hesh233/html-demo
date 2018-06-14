<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>商家信息填写</title>
</head>
<body>
<body>
      <form action="/ssmdemo/user/shopInfregister" method="post" >
       
        <label for="shopname">商家名字</label>
        <input type="text" id="shopname" name="shopname"/><br/>
<!--         <label for="notice">公告</label> -->
<!--         <input type="text" id="notice" name="notice"/><br/> -->
        <label for="address">商家地址</label>
        <input type="text" id="shopaddress" name="shopaddress"/><br/>
        <label for="telephone">电话号码</label>
        <input type="text" id="telephone" name="telephone"/><br/>
         <input type="button" id="bt1" value="点击上传图片" onClick="sendimage()"> 
         <input type="button" id="bt2" value="提交" onClick="checksubmit()"> 
         <input type="submit" value="提交"/>
      </form>
      <script>
      function sendimage()
      {
    	  //上传图片有待填写
      }
      function chechsubmit()
      {
    	  //检测提交有待填写
      }
      </script>
</body>
</html>