package cn.eddie.servlet;

import cn.eddie.entity.CartItem;
import cn.eddie.entity.ShoppingCart;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/shoppingcart")
public class ShoppingCartServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String cmd = req.getParameter("cmd");
        if (cmd.equals("additems")) {
            additems(req,resp);
        }else if (cmd.equals(" ")){

        } else {
            delete(req, resp);
        }
    }

    //添加商品
    protected void additems(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String name = req.getParameter("name");
        String num = req.getParameter("num");
        System.out.println("name="+name);
        System.out.println("num="+num);

        ShoppingCart cart = (ShoppingCart)req.getSession().getAttribute("SHOPPINGCART_IN_SESSION");
        if(cart==null){
            cart = new ShoppingCart();
            req.getSession().setAttribute("SHOPPINGCART_IN_SESSION", cart);
        }


        //业务逻辑
        CartItem item = new CartItem();
        item.setName(name);
        if(num!=null){
            item.setCount(Integer.valueOf(num));
        }


        if("电脑".equals(name)){
            item.setId(101L);
            item.setPrice(200D);
        }else if("手机".equals(name)){
            item.setId(102L);
            item.setPrice(2000D);
        }else if("Pad".equals(name)){
            item.setId(103L);
            item.setPrice(20D);
        }

        //购物车添加商品
        cart.additems(item);
        //跳转
        req.getRequestDispatcher("/shoppingcart.jsp").forward(req, resp);




    }

    // 删除商品
    protected void delete(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String idStr = req.getParameter("id");
        ShoppingCart cart = (ShoppingCart)req.getSession().getAttribute("SHOPPINGCART_IN_SESSION");
        cart.delete(Long.valueOf(idStr));
        resp.sendRedirect( req.getContextPath()+"/shoppingcart.jsp");

    }


}
