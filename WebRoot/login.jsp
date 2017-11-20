<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
  <head>
    <title>我的登录</title>
    <base href="${pageContext.request.contextPath}/css">

    <meta charset="UTF-8">
    
    <link rel="stylesheet" type="text/css" href="css/login.css">
    <script type="text/javascript" src="js/jquery-3.2.0.min.js"></script>
    <script type="text/javascript" src="js/function.js"></script>

  </head>
  
  <body>
     <input type="hidden" id="isReg" value="${REG_IN_REQUEST}" />
     <c:if test="${REG_IN_REQUEST}" var="isReg">
     	<script>
     		alert("Register Successfully,please login!");
     	</script>
     
     </c:if>  
   
     <!--最外层  -->
     <div id="content">
       <!-- 面板-->
       <form action="${pageContext.request.contextPath}/user?cmd=checkLogin" method="post" name="checkform" onSubmit="formCheck()">
       <div id="panel"> 
          <!-- 账号 -->
         <div class="group">
           <label>账号</label>
           <input type="text" name="username" required="required" placeholder="请输入账号">
         </div>
          <!-- 密码 -->
         <div class="group">
           <label>密码</label>
           <input type="password" name="password" required="required" placeholder="请输入密码">
         </div>
         <div class="group">
           <label>验证码</label>
           <input type="text" id="randomCode" name="randomCode" required="required" placeholder="请输入验证码">
           <img alt="验证码" src="${pageContext.request.contextPath}/randomCode" title="看不清？点击切换"
                  onclick="changeRandomCode();" id="randomCodeImg">

         </div>
		 <br>
         <span style="color:red;font-family:'Microsoft Yahei';text-align: center;" name="errorMsg">${errorMsg}</span>
         
          <!-- 登录 -->
         <div class="login">
            <button type="submit">登录</button>
         </div>
       
       </div>
       </form>
       <!-- 注册 -->
       <div class="reg">
          <button onclick="register();">创建新账号?</button>
       </div>
     
     </div>
    
  </body>
</html>
