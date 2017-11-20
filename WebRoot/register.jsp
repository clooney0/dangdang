<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>注册用户</title>
	<link type="text/css" rel="stylesheet" href="css/style.css" />
	<link rel='stylesheet' href='css/bootstrap.min.css'>
	<link href="font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" />
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-3.2.0.min.js"></script>
	<script type="text/javascript" src="js/function.js"></script>

	
</head>
<body>
 	<i class="fa fa-spinner fa-spin"></i> Spinner icon when loading content...
 
	<div class="container">
	    <div class="row">
	        <div class="col-md-offset-3 col-md-6">
	            <form class="form-horizontal" name="checkform" on action="${pageContext.request.contextPath}/user?cmd=addUser" method="post">
	               
	                <span class="heading">用户注册</span>
	                
	                <span id="tip" class="tip" ></span>
	                
	                <div class="form-group">
	                    <input type="email" class="form-control" id="usernameId" name="username"
	                     required="required" placeholder="用户名或电子邮件" onblur="checkUsername();">
	                    <i class="fa fa-user-o"></i>
	                </div>
	               
					<div class="form-group">
						<input type="phone" class="form-control" id="inputPhone" name="phone" required="required" placeholder="手 机 号">
						<i class="fa fa-phone"></i>
					</div>
	                <div class="form-group help">
	                    <input type="password" class="form-control" id="inputPassword" name="password" required="required" placeholder="密　码">
	                    <i class="fa fa-lock"></i>
	                    <a href="#" class="fa fa-question-circle"></a>
	                </div>
					<div class="form-group">
						<input type="password" class="form-control" id="checkPassword" name="checkpassword" required="required" placeholder="确 认 密 码">
						<i class="fa fa-lock"></i>
						<a href="#" class="fa fa-question-circle"></a>
					</div>
					
	                <div class="form-group">
	                    <div class="main-checkbox">
	                        <input type="checkbox" value="None" id="checkbox1" name="check"/>
	                        <label for="checkbox1"></label>
	                    </div>
	                    <span class="text">Remember me</span>
	                    <button type="submit" class="btn btn-success btn-lg" onclick="registerCheck()">注册</button>
					   

	                </div>
	            </form>
	        </div>
	    </div>
	</div>


</body>
</html>
