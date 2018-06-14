<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录&注册</title>
<style>
#box {
	width: 500px;
	height: 400px;
	background: lightgoldenrodyellow;
	border: 1px solid black;
}

#head_list input { //
	div是块级元素，定义为float后在宽度允许的情况下，能在一行内容纳 float: left;
	width: 25%;
}

.active { //
	初始及点击后的按钮类 color: cornflowerblue;
}
</style>
</head>
<body>
	<div id="box">
		//包含tab按钮和内容的
		<div id="head_list">
			//tab按钮及内容 <input type="button" value="用户端" class="active" /> <input
				type="button" value="商家端" /> <input type="button" value="配送端" /> <input
				type="button" value="登录" />
		</div>
		<div id="menu_content">
			//tab按钮对应的相应内容
			//username匹配英文（1~10）
			//username匹配汉字输入(2~7个汉字之间)
			//password限制为英文和数字之间，不能全部是数字，不能全部是字母，必须是数字或字母(4~16)
			<div style="display: block;">
				<form action="/ssmdemo/user/register" method="post" id="register1">
					<label for="username">名字</label> <input type="text" id="username1"
						name="username" /><br /> <label for="password">密码</label> <input
						type="password" id="password" name="password" /><br /> <label
						for="password">确认密码</label> <input type="password"
						id="passwordconfirm" name="passwordconfirm" /><br /> <input
						type="hidden" name="type" id="type" value="1">
					<!-- 						<input type="submit" value="注册" > -->
					<input type="button" value="注册" onClick="checkLogin(this)"
						id="btn1" /> <input type="reset" value="重置" />
				</form>
				<!--       id 是不会提交给后台的，所以后台一定只能用 name 去识别。 -->
			</div>
			<div style="display: none;">
				<form action="/ssmdemo/user/register" method="post" id="register2">
					<label for="username">名字</label> <input type="text" id="username2"
						name="username" /><br /> <label for="password">密码</label> <input
						type="password" id="password" name="password" /><br /> <label
						for="password">确认密码</label> <input type="password"
						id="passwordconfirm" name="passwordconfirm" /><br /> 
						 <input
						type="hidden" name="type" id="type" value="2">
					<!-- 					<input type="submit" value="注册" > -->
					<input type="button" value="注册" onClick="checkLogin(this)"
						id="btn2" /> <input type="reset" value="重置" />
				</form>
			</div>
			<div style="display: none;">
				<form action="/ssmdemo/user/register" method="post" id="register3">
					<label for="username">名字</label> <input type="text" id="username3"
						name="username" /><br /> <label for="password">密码</label> <input
						type="password" id="password" name="password" /><br /> <label
						for="password">确认密码</label> <input type="password"
						id="passwordconfirm" name="passwordconfirm" /><br /> <input
						type="hidden" name="type" id="type" value="3">
					<!-- 						<input type="submit" value="注册" > -->
					<input type="button" value="注册" onClick="checkLogin(this)"
						id="btn3" /> <input type="reset" value="重置" />
				</form>
			</div>
			<div style="display: none;">
				<form action="/ssmdemo/user/login" method="post" id="login">
					<label for="username">名字</label> <input type="text" id="username4"
						name="username" /><br /> <label for="password">密码</label> <input
						type="password" id="password" name="password" /><br /> <input
						type="hidden" name="type" id="type" value="4">
					<!-- 						<input type="submit" value="登录" > -->
					<input type="button" value="登录" onClick="checkLogin(this)"
						id="btn4" /> 
						<input type="reset" value="重置" />
				</form>
			</div>
		</div>
	</div>
	<script>
		var head_list = document.getElementById("head_list");
		var menu_content = document.getElementById("menu_content");
		var oli = head_list.getElementsByTagName("input");//获取tab列表
		var odiv = menu_content.getElementsByTagName("div");//获取tab内容列表
		for (var i = 0; i < oli.length; i++) {
			oli[i].index = i;//定义index变量，以便让tab按钮和tab内容相互对应
			oli[i].onclick = function() {//移除全部tab样式和tab内容
				for (var i = 0; i < oli.length; i++) {
					oli[i].className = "";
					odiv[i].style.display = "none";
				}
				this.className = "active";//为当前tab添加样式
				odiv[this.index].style.display = "block";//显示当前tab对应的内容
			}
		}
		//<!-- 校验登入 -->     JS正则表达式检测，实际没有写上拦截效果,拦截实现可以参考https://blog.csdn.net/makang456/article/details/52334003
		function checkLogin(obj) {
			var id = obj.id;
			var userName;
			var loginForm = document.getElementById(getform(id));
			//   var loginForm=document.getElementById("register1");
			var userName = document.getElementById(getusername(id)).value;
			var userPass = document.getElementById("password").value;
			if (userName == '') {
				alert("用户名不能为空！");
				return false;
			}

			if (filterSqlStr(userName)) {
				alert("用户名字符中包含了敏感字符" + sql_str() + ",请重新输入！");
				return false;
			}

			//loginForm.action="/ssmdemo/user/register";  
			loginForm.submit();
		}
		//获取是哪个表单  跳转
		function getform(id) {
			var formId;
			if (id == 'btn1') {
				formId = "register1"
			}
			if (id == 'btn2') {
				formId = "register2"
			}
			if (id == 'btn3') {
				formId = "register3"
			}
			if (id == 'btn4') {
				formId = "login"
			}
			return formId;
		}
		//获取从那个表单的username
		function getusername(id) {
			var userId;
			if (id == 'btn1') {
				userId = "username1"
			}
			if (id == 'btn2') {
				userId = "username2"
			}
			if (id == 'btn3') {
				userId = "username3"
			}
			if (id == 'btn4') {
				userId = "username4"
			}
			return userId;
		}

		//<!-- 过滤一些敏感字符函数 -->  
		function filterSqlStr(value) {

			var sqlStr = sql_str().split(',');
			var flag = false;

			for (var i = 0; i < sqlStr.length; i++) {

				if (value.toLowerCase().indexOf(sqlStr[i]) != -1) {
					flag = true;
					break;

				}
			}
			return flag;
		}

		function sql_str() {
			var str = "and,delete,or,exec,insert,select,union,update,count,*,',join,>,<";
			return str;
		}
	</script>
</body>
</html>