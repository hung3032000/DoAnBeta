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

import ute.DoAn1.model.CategoriesModel;
import ute.DoAn1.model.UserModel;
import ute.DoAn1.service.ICategoriesService;
import ute.DoAn1.service.impl.UserService;
import ute.DoAn1.utils.FormUtil;

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
	}

	@Inject
	private ICategoriesService Icategory;

	@Inject
	UserService userService = new UserService();

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	ResourceBundle resourceBundle = ResourceBundle.getBundle("message");

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		CategoriesModel category = new CategoriesModel();
		category.setListResult(Icategory.findAllP());
		request.setAttribute("category", category);

		String action = request.getParameter("action");
		if (action != null && action.equals("new")) {
			String alert = request.getParameter("alert");
			String message = request.getParameter("message");
			String message2 = request.getParameter("message2");
			String ready = request.getParameter("ready");
			if (message != null && alert != null && ready == null) {
				request.setAttribute("message", resourceBundle.getString(message));
				request.setAttribute("alert", alert);
				RequestDispatcher rd = request.getRequestDispatcher("/views/web/register.jsp");
				rd.forward(request, response);
			}
			if (message2 != null && alert == null && ready != null && ready.equals("success")) {
				request.setAttribute("message2", resourceBundle.getString(message2));
				request.setAttribute("ready", ready);
				RequestDispatcher rd = request.getRequestDispatcher("/views/login.jsp");
				rd.forward(request, response);
			}
		} else if (action != null && action.equals("login")) {
			RequestDispatcher rd = request.getRequestDispatcher("/views/login.jsp");
			rd.forward(request, response);
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("/views/web/register.jsp");
			rd.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String action = request.getParameter("action");
		String email = request.getParameter("cus_email").trim();
		UserModel model = FormUtil.toModel(UserModel.class, request);
		model = userService.findOne(email);
		if (action != null && action.equals("new")) {
			String title = request.getParameter("cus_title").trim();
			String fname = request.getParameter("cus_fname").trim();
			String lname = request.getParameter("cus_lname").trim();
			String password = request.getParameter("cus_password").trim();
			if (userService.checkRegister(fname, lname, email, password)) {
				// đã tồn tại trong db
				if (model != null) {
					response.sendRedirect(
							request.getContextPath() + "/user-new?action=new&message=user_exist&alert=error");
				}
				// thêm mới user
				else {
					UserModel model2 = FormUtil.toModel(UserModel.class, request);
					model2.setTitle(title);
					model2.setfName(fname);
					model2.setlName(lname);
					model2.setEmail(email);
					model2.setPassWord(password);
					model2 = userService.save(model2);
					if (model2 != null) {
						response.sendRedirect(
								request.getContextPath() + "/user-new?action=new&message2=user_new&ready=success");
					} else {
						response.sendRedirect(
								request.getContextPath() + "/user-new?action=new&message=user_exist&alert=error");
					}
				}
			} else {
				response.sendRedirect(
						request.getContextPath() + "/user-new?action=new&message=user_empty_fill&alert=error");
			}
		} else {
			response.sendRedirect(request.getContextPath() + "/user-new?action=new");
		}
	}
}
