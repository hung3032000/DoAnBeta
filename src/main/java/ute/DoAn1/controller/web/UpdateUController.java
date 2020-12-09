package ute.DoAn1.controller.web;

import java.io.IOException;
import java.sql.Date;
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
import ute.DoAn1.utils.SessionUtil;

/**
 * Servlet implementation class UpdateUController
 */
@WebServlet(urlPatterns = { "/user-update", "/user-delete", "/user-uppass" })
public class UpdateUController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Inject
	UserService userService = new UserService();

	@Inject
	private ICategoriesService Icategory;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateUController() {
		super();
	}

	ResourceBundle resourceBundle = ResourceBundle.getBundle("message");

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		CategoriesModel category = new CategoriesModel();
		category.setListResult(Icategory.findAllP());
		request.setAttribute("category", category);
		String action = request.getParameter("action");
		if (action != null && action.equals("update")) {
			String alert = request.getParameter("alert");
			String message = request.getParameter("message");
			String ready = request.getParameter("ready");
			if (message != null && alert != null && ready == null) {
				request.setAttribute("message", resourceBundle.getString(message));
				request.setAttribute("alert", alert);
				RequestDispatcher rd = request.getRequestDispatcher("/views/web/userinf.jsp");
				rd.forward(request, response);
			}
			if (message != null && alert == null && ready != null && ready.equals("success")) {
				request.setAttribute("message", resourceBundle.getString(message));
				request.setAttribute("ready", ready);
				RequestDispatcher rd = request.getRequestDispatcher("/views/web/userinf.jsp");
				rd.forward(request, response);
			}
		}else if(action != null && action.equals("show")) {
			RequestDispatcher rd = request.getRequestDispatcher("/views/web/userinf.jsp");
			rd.forward(request, response);
		} 
		
		else {
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
		request.setCharacterEncoding("UTF-8");
		String action = request.getParameter("action");
		String email = request.getParameter("email");
		if (action != null && action.equals("update")) {
			UserModel model = FormUtil.toModel(UserModel.class, request);
			String title = request.getParameter("cus_title").trim();
			String fname = request.getParameter("cus_fname").trim();
			String lname = request.getParameter("cus_lname").trim();
			String address = request.getParameter("cus_address");
			String daybirth = request.getParameter("cus_daybirthday").trim();
			String monthbirth = request.getParameter("cus_monthbirthday").trim();
			String yearbirth = request.getParameter("cus_yearbirthday").trim();
			Date birthdate = Date.valueOf(yearbirth + "-" + monthbirth + "-" + daybirth);
			model.setEmail(email);
			model.setTitle(title);
			model.setfName(fname);
			model.setlName(lname);
			model.setAddress(address);
			model.setDateOfBirth(birthdate);
			userService.update(model);
			response.sendRedirect(
					request.getContextPath() + "/user-update?action=update&message=user_update&ready=success");
			SessionUtil.getInstance().putValue(request, "USERMODEL", model);
		}
	}

}
