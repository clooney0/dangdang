<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>详情</title>

    <base href="${pageContext.request.contextPath}/css">

    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="css/product-view.css">


    <script type="text/javascript" src="js/jquery-3.2.0.min.js"></script>
    <script type="text/javascript" src="js/function.js"></script>

</head>

<body>
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

    <div class="sellers">
        <div class="book"><img src="img/book-01.jpg"></div>
        <a class="bookname" href="product-view.jsp">偷影子的人</a> <br/>
        <p class="introduction">一部令法国为之动容的温情疗愈小说，法国年度畅销图书，吴佩慈、SHE落泪推荐！
        附赠浪漫告白卡——“青春初吻”纪念明信片</p>

        <div class="detail">
            <hr>
            作者:(法)<a href="https://en.wikipedia.org/wiki/Marc_Levy">马克·李维</a> &nbsp;&nbsp;出版社:<a>湖南文艺出版社</a>&nbsp;&nbsp;&nbsp;出版时间:2012年07月<br>
            在<a>当当小说榜</a>排名14位
        </div>

        <%-- 加入购物车  立即购买 表单--%>
        <form action="${pageContext.request.contextPath}/shoppingcart?cmd=additems" method="post">


        <div class="price">
            <span>抢购价</span><br>
            <span class="discountRate">￥14.30</span><span class="discount">（4.8折）</span>
            <span>定价</span><span class="pricing">￥29.80</span>
            <hr>

        </div>
        <div id="quantities">
            <input type="text" id="quantity" value="1">
            <a id="add" href="javascript:;">+</a>
            <a id="dec" href="javascript:;">-</a>
        </div>

        <div class="add2Cart">
            <img src="img/shoppingCart.png" alt="#">
            <a href="javascript:;" >加入购物车</a>
        </div>

        <div class="buynow">
            <a href="javascript:;" >立即购买</a>
        </div>

        </form>

        <ul class="tab_clearfix">
            <li class="productDetial">商品详情</li>
            <li class="productComment">商品评论</li>
        </ul>


        <div class="material">

            <li>版 次：1</li>
            <li>页 数：</li>
            <li>字 数：</li>
            <li>印刷时间：2012年07月01日</li>
            <li>开 本：32开</li>
            <li>纸 张：胶版纸</li>
            <li>包 装：平装-胶订</li>
            <li>是否套装：否</li>
            <li>国际标准书号ISBN：9787540455958</li>
            <li class="clearfix_category" dd_name="详情所属分类" id="detail-category-path">
                <label>所属分类：</label>
                <span class="lie">
                    <a target="_bland" href="#" class="green">图书</a>&gt;
                    <a target="_bland" href="#" class="green">小说</a>&gt;
                    <a target="_bland" href="#" class="green">外国小说</a>&gt;
                    <a target="_bland" href="#" class="green">法国</a></span>
            </li>


            <div class="descrip">
                <div class="title">内容简介</div>
                <p>不知道姓氏的克蕾儿。这就是你在我生命里的角色，我童年时的小女孩，今日蜕变成了女人，一段青梅竹马的回忆，一个时间之神没有应允的愿望。<br>
                一个老是受班上同学欺负的瘦弱小男孩，因为拥有一种特殊能力而强大：他能“偷别人的影子”，因而能看见他人心事，听见人们心中不愿意说出口的秘密。
                他开始成为需要帮助者的心灵伙伴，为每个偷来的影子找到点亮生命的小小光芒。<br>
                某年灿烂的夏天，他在海边邂逅了一位又聋又哑的女孩。他该如何用自己的能力帮助她？他将如何信守与她共许的承诺？
                </p>
            </div>

            <div class="title">产品特色</div>
            <img src="img/tyzdr.jpg">

        </div>


        <div class="comment">
            <h6>评论( <span id="count" >777</span> )</h6>

            <p>
                <textarea id="commentContent" rows="5" cols="100" placeholder="请输入你的评论" ></textarea>
            </p>

            <input type="text" id="nickname" value="匿名">
            <input type="button" id="release" value="发布">
            <article id="article">
                <h6><span class="red">金龙鱼</span> 2017年4月7日14:33 <span id="floor">777</span>楼</h6>
                <p class="red">我要上神评~~
            </article>

        </div>


    </div>


</div>




<!-- footer -->
<div id="footer">
    <hr>
    Copyright(C)&nbsp;当当网&nbsp;2004-2013,All&nbsp;Rights&nbsp;Reserved
    <img alt="" align="center" src="img/validate.gif">
    京ICP证041189号出版物经营许可证&nbsp; 新出发京批字第直0673号


</div>












</body>
</html>
