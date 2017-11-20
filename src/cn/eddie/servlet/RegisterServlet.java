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
import java.util.Arrays;
import java.util.List;

@WebServlet("/ajax_register")
public class RegisterServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private UserDao dao = new UserDao();

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// System.out.println("注册");
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");
		PrintWriter out = resp.getWriter();

		String username = req.getParameter("username");
		System.out.println("usernamebyAjax=" + username);

		User user = new User(null, username, null, null);

		// query database check for username if exist
		User queryUser = dao.queryUsername(username);
		System.out.println("queryUser====" + queryUser);

		// 判断用户名是否存在

		if (StringUtils.hasLength(username)) {
			if (queryUser != null) {
				// System.out.println("亲，用户名已经存在");
				out.print("Username already exist!");

			} else {

				// System.out.println("恭喜你，用户名可以使用");
				out.print("Username can be used");

			}
		} else {
			out.print("Sorry, username can not be null!");
		}

	}

}
