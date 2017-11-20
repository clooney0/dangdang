<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <base href="${pageContext.request.contextPath}/css">
    <title>Title</title>

    <link rel="stylesheet" type="text/css" href="css/index.css">
</head>
<body>

<!-- login & register -->
<div class="login-reg">
    <span id="islogin">欢迎（${sessionScope.USER_IN_SESSION.username }）
        <a href="${pageContext.request.contextPath}/logout">注销</a>
    </span>
        <a id="login" href="login.jsp" target="_self">登录</a>
        <a id="register" href="register.jsp" target="_self">注册</a>

</div>
<!-- header -->
<div id="header">
    <img alt="#" src="img/logo.jpg">

    <div class="activities">
        <img alt="#" src="img/icon_count.png">
        <a href="#">尾品汇</a>
        <a href="#">当当优品</a>
        <a href="#">数字馆</a>
        <a href="#">都看阅读</a>
    </div>
    <div class="nav">
        <ul>
            <li><a href="#">首页</a></li>
            <li><a href="#">图书</a></li>
            <li><a href="#">音像</a></li>
            <li><a href="#">童装</a></li>
            <li><a href="#">服饰</a></li>
            <li><a href="#">鞋靴</a></li>
            <li><a href="#">运动</a></li>
            <li><a href="#">箱包</a></li>
            <li><a href="#">美妆</a></li>
            <li><a href="#">珠宝</a></li>
            <li><a href="#">家具</a></li>
            <li><a href="#">食品</a></li>
            <li><a href="#">酒</a></li>
            <li><a href="#">手机</a></li>
            <li><a href="#">数码</a></li>
            <li><a href="#">电信</a></li>
            <li><a href="#">家电</a></li>
        </ul>
    </div>

</div>
<!-- content -->
<div id="content">
    <img alt="loading fail!" src="img/banner.png">
    <div class="sellers">
        <div class="sellers-logo"><img alt="loading fail!" src="img/bg_bang.gif"></div>
        <div class="bookFirst"><img src="img/book-01.jpg"></div>
        <div class="bookFirstLogo"><img src="img/bookNo1.gif"></div>
        <div class="bookFirstDetail">

            <a class="bookFirstname" href="product-view.jsp">偷影子的人</a> <br/>
            作者：[法] 马克·李维(Marc Levy)著,段韵灵 译<br/>
            出版社：&nbsp;湖南文艺出版社<br/>
            当当价：<lab class="cny">￥14.30 </lab> <br/>
            不知道姓氏的克雷尔。
            这就是你在我生命力里的角色,我童年时的小女孩,今日蜕变成了女人,一段青梅竹马的回忆,一个时间之神没有应允的愿望。
            一个老师受班上欺负的瘦弱小男孩,因为拥有一种特殊能力而强大:他能“偷别人的影子”，因而能看见他
        </div>

        <div class="bookSecLogo"><img src="img/bookNo2.gif"></div>
        <div class="bookSec"><img src="img/book-02.jpg"></div>

        <div class="bookSecDetail">
            <label class="bookSecname">看见(央视知名记者、主持人柴静：十年个人成长的告白，中国社会变迁的备忘) </label><br/>
            作者：柴静 著 <br/>
            出版社：广西师范大学出版社<br/>
            <label class="cny">￥ 29.40</label>
            <label class="discount">7.4折</label>
        </div>

        <img class="bookThirdLogo" src="img/bookNo3.gif">
        <img class="bookThird" src="img/book-03.jpg">

        <div class="bookThirdDetail">
            <label class="bookThirdname">改变孩子先改变自己 </label> <br/>
            作者：贾容韬 贾毅 著 <br/>
            出版社：作家出版社 <br/>
            <label class="cny">￥ 22.20</label>
            <label class="discount">7.4折</label>

        </div>

    </div>

</div>


<!-- footer -->
<div id="footer">
    Copyright(C)&nbsp;当当网&nbsp;2004-2013,All&nbsp;Rights&nbsp;Reserved
    <img alt="" align="center" src="img/validate.gif">
    京ICP证041189号出版物经营许可证&nbsp; 新出发京批字第直0673号


</div>

</body>
</html>