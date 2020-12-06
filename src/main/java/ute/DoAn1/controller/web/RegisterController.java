package ute.DoAn1.controller.web;

import java.io.IOException;
import java.util.ResourceBundle;

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
import ute.DoAn1.utils.FormUtil;

/**
 * Servlet implementation class RegisterController
 */
@WebServlet(urlPatterns = { "/user-new", "/user-update" })
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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	ResourceBundle resourceBundle = ResourceBundle.getBundle("message");

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		if (action != null && action.equals("new")) {
			String alert = request.getParameter("alert");
			String message = request.getParameter("message");
			String ready = request.getParameter("ready");

			if (message!=null && alert != null && ready == null) {	
				request.setAttribute("message", resourceBundle.getString(message));
				request.setAttribute("alert", alert);
				RequestDispatcher rd = request.getRequestDispatcher("/views/web/register.jsp");
				rd.forward(request, response);
			}
			if(message!=null && alert == null && ready != null && ready.equals("success")) {
				request.setAttribute("message", resourceBundle.getString(message));
				request.setAttribute("ready", ready);
				RequestDispatcher rd = request.getRequestDispatcher("/views/login.jsp");
				rd.forward(request, response);
			}
		} else if (action != null && action.equals("update")) {
			String alert = request.getParameter("alert");
			String message = request.getParameter("message");
			if (message != null && alert != null) {
				request.setAttribute("message", resourceBundle.getString(message));
				request.setAttribute("alert", alert);
			}
			RequestDispatcher rd = request.getRequestDispatcher("/views/");
			rd.forward(request, response);
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("/views/web/home.jsp");
			rd.forward(request, response);
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		String title = request.getParameter("cus_title").trim();
		String fname = request.getParameter("cus_fname").trim();
		String lname = request.getParameter("cus_lname").trim();
		String email = request.getParameter("cus_email").trim();
		String password = request.getParameter("cus_password").trim();
		UserModel model = FormUtil.toModel(UserModel.class, request);
		model = userService.findOne(email);
		if (action != null && action.equals("new")) {
			if (model != null) {
				response.sendRedirect(request.getContextPath() + "/user-new?action=new&message=user_exist&alert=error");
			} else {

				UserModel user = new UserModel();
				user.setTitle(title);
				user.setfName(fname);
				user.setlName(lname);
				user.setEmail(email);
				user.setPassWord(password);

				UserDAO userDAO = new UserDAO();
				if (userDAO.insert(user)) {
					response.sendRedirect(
							request.getContextPath() + "/user-new?action=new&message=user_new&ready=success");
				} else {
					response.sendRedirect(
							request.getContextPath() + "/user-new?action=new&message=user_exist&alert=error");

				}
			}
		} else {

		}
	}

}
