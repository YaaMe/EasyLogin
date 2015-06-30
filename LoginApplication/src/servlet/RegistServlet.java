package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.*;
public class RegistServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public RegistServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		String name=request.getParameter("registname");
		String password=request.getParameter("registpassword");
		String password_ck=request.getParameter("registpasswordck");
		String div="regist success!";
		if(!password.equals(password_ck))//判断密码键入相等
			div="password wrong in check!";
		else{
			User new_user=new User(name,password);
			UserDAO user_dao=new UserDAO();
			if(!user_dao.isExistUser(name))//确认是新用户，然后建立文件并存储
				user_dao.save(new_user);
			else
				div="user "+name+" is exist!";
		}
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		out.print(div);
		out.flush();
		out.close();

	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
