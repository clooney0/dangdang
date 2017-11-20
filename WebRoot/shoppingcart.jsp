<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="css/shoppingcart.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.0.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/function.js"></script>
    <title>购物车</title>
</head>
<body>


<!-- top -->
<div id="head_operate">

    <div class="divwidth">
        <div class="head_welcome">
        <span id="nickname"><span class="hi hi_none">欢迎光临当当，请</span>
            <a href="login.jsp" class="login_link">登录</a>
            <a href="register.jsp">免费注册</a></span>

        </div>


        <ul class="head_operate_nav">
            <li class="head_cart">
                <a href="javascript:;" name="购物车">购物车</a>
            </li>
            <li>
                <a target="_blank" href="javascript:;">我的订单</a>
            </li>
        </ul>

    </div>


</div>

<div class="logo">
    <img src="img/dd_logo.jpg">
    <span class="current">我的购物车</span>
    <span>填写订单</span>
    <span>完成订单</span>
</div>

<hr id="logohr">


<div class="divwidth">

    <div id="shopping">
        <form action="">
            <table>
                <tr id="table_title">
                    <%--<th><span id="choseAll"></span>全选</th>--%>
                    <th><input type="checkbox" onclick="allSelect();">全选</th>
                    <th>商品名称</th>
                    <th>商品价格</th>
                    <th>购买数量</th>
                    <th>操作</th>
                </tr>
                <tr id="product_id_0">
                    <td><span id="chose0" class="custom-checkbox"></span></td>
                    <td class="thumb"><img src=""/><a href="product-view.jsp">偷影子的人</a></td>
                    <td class="price" id="price_id_0">
                        <span class="cny">￥14.30</span>
                        <input type="hidden" value="14.30"/>
                    </td>
                    <td class="number">
                        <span class="del" name="del">-</span>
                        <input id="num0" class="count" type="text" name="number" value="1"/>
                        <span class="add" name="add">+</span>
                    </td>
                    <td class="delete"><a href="javascript:void(0)">删除</a></td>
                </tr>
                <tr id="product_id_1">
                    <td><span id="chose1"></span></td>
                    <td class="thumb"><img src=""/><a href="product-view.jsp">偷影子的人</a></td>
                    <td class="price" id="price_id_1">
                        <span class="cny">￥14.30</span>
                        <input type="hidden" value="14.30"/>
                    </td>
                    <td class="number">
                        <span class="del" name="del">-</span>
                        <input id="num1" class="count" type="text" name="number" value="1"/>
                        <span class="add" name="add">+</span>
                    </td>
                    <td class="delete"><a href="javascript:void(0)">删除</a></td>
                </tr>
            </table>
            <div class="total"><span id="total">总计：￥0</span></div>
            <div class="button">结&nbsp;&nbsp;算</div>
        </form>
    </div>
</div>

<hr id="shoppinghr">

<div id="footer">
    Copyright(C) 当当网 2004-2013,All Rights Reserved. 京ICP证1000001号
</div>
</div>
</body>
</html>