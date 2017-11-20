package cn.eddie.servlet;

import cn.eddie.dao.UserDao;
import cn.eddie.entity.User;
import cn.eddie.util.StringUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/user")
public class UserServlet extends HttpServlet{

	
	private UserDao dao = new UserDao();

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=UTF-8");

        String parameter = req.getParameter("cmd");
        System.out.println(parameter);

        if(parameter.equals("addUser")){
            addUser(req, resp);
        } else if(parameter.equals("checkLogin")){
            checkLogin(req, resp);
        }


    }

    //register
    protected void addUser(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        // 1.获取请求参数
        String username = req.getParameter("username");
        String phone = req.getParameter("phone");
        String password = req.getParameter("password");
        String checkpwd = req.getParameter("checkpassword");

        System.out.println("username="+username+",phone="+phone+",password="+password+",checkpwd="+checkpwd);

        if( password.equals(checkpwd) ) {
            // 2.处理业务逻辑
            User user = new User(null, username, phone, password);
            User queryUser = dao.queryUser(username,phone);
            if(queryUser==null) {     //如果用户不存在
                boolean flag = dao.addUser(user);
                System.out.println(flag);
                // 3.响应
                if (flag) { // success
//                    Object requestReg = req.getAttribute("REG_IN_REQUEST");
//                    if(requestReg!=null){
//                        //object--->字符串--->integer
//                        //Integer num = Integer.valueOf(requestReg.toString());
//                    	
//
//                    }else{
//                        req.setAttribute("REG_IN_REQUEST",1);
//                    }

                    //resp.sendRedirect(req.getContextPath() + "/ethan/dangdang/register.jsp?reg=yes");
                    //send to login.jsp
                	req.setAttribute("REG_IN_REQUEST", flag);
                	req.getRequestDispatcher("/login.jsp").forward(req, resp);
                

                } else { // fail

                }
            }else{      //User exist
                //方案一
                PrintWriter out = resp.getWriter();
                //out.write("<script language='javascript'>alert('The phone has been registered!');");
                out.write("<script language='javascript'>alert('Phone is exist!');");
                out.println("window.history.go(-1)</script>");
                
                out.close();
                System.out.println("register fail!");

                //方案二 未成功~
               // resp.sendRedirect(req.getContextPath() + "/ethan/dangdang/register.jsp?error=yes");
            }


        } else {
            resp.sendRedirect(req.getContextPath() + "/register.jsp");
        }
    }

    //checklogin
    protected void checkLogin(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        // 1.获取请求参数
        //验证码校验
        //获取用户填写的验证码
        String randomCode = req.getParameter("randomCode");
        //Session的验证码
        String sessionRandomCode = (String)req.getSession().getAttribute("RANDOMCODE_IN_SESSION");

        if(!StringUtils.hasLength(randomCode) || !StringUtils.hasLength(sessionRandomCode)){
            req.setAttribute("errorMsg", "验证码不能为空或验证码过时!");
            req.getRequestDispatcher("/login.jsp").forward(req, resp);
            return;
        }
        if(!randomCode.equals(sessionRandomCode)){
            req.setAttribute("errorMsg", "验证码错误，请重新输入!");
            req.getRequestDispatcher("/login.jsp").forward(req, resp);
            return;
        }


        String username = req.getParameter("username");
        String password = req.getParameter("password");
        
        System.out.println("login_username===="+username+",login_pwd==="+password);
        
        
        
        //
        User user = dao.checkLogin(username, password);
       // PrintWriter out = resp.getWriter();     //初始化out对象
        //跳转
        if(user!=null){
            //弹框提示，点击确定后返回登录界面
            // out.print("<script language='javascript'>alert('Login Successfully!!');window.location.href='register.jsp';</script>");
            // resp.sendRedirect(req.getContextPath()+"/ethan/dangdang/index.jsp");
            req.getSession().setAttribute("USER_IN_SESSION", user);
            resp.sendRedirect(req.getContextPath()+"/index.jsp");
        } else {
            req.setAttribute("errorMsg", "用户名或密码错误!");
            req.getRequestDispatcher("/login.jsp").forward(req, resp);
            return;
        }


    }



}
