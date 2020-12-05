package ute.DoAn1.controller.web;

import java.io.IOException;
import java.sql.Connection;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ute.DoAn1.DAO.impl.UserDAO;
import ute.DoAn1.model.UserModel;
import ute.DoAn1.service.impl.UserService;
import ute.DoAn1.utils.MyUtils;


/**
 * Servlet implementation class RegisterController
 */
@WebServlet(urlPatterns = { "/user-new" })
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegisterController() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Inject
	UserService userService = new UserService();

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url= null;
		String title = request.getParameter("cus_title").trim();
		String fname = request.getParameter("cus_fname").trim();
		String lname = request.getParameter("cus_lname").trim();
		String email = request.getParameter("cus_email").trim();
		String password = request.getParameter("cus_password").trim();	
		UserModel user = new UserModel();
		user.setTitle(title);
		user.setfName(fname);
		user.setlName(lname);
		user.setEmail(email);
		user.setPassWord(password);

		UserDAO userDAO =  new UserDAO();
		if (userDAO.insert(user)) {
			System.out.print("Insert user successfully");
			url="/views/login.jsp";
		}
		else {
			url="/views/web/regester.jsp";
		}
		
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}

}
