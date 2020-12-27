package ute.DoAn1.controller.admin;

import java.io.IOException;
import java.sql.Date;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ute.DoAn1.constant.SystemConstant;
import ute.DoAn1.model.UserModel;
import ute.DoAn1.service.IUserService;
import ute.DoAn1.utils.FormUtil;
import ute.DoAn1.utils.SessionUtil;

/**
 * Servlet implementation class New
 */
@WebServlet(urlPatterns = { "/admin-User" })
public class AUserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Inject
	private IUserService userService;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AUserController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		UserModel user = new UserModel();
		user.setListResult(userService.findAll());
		request.setAttribute(SystemConstant.USER, user);

		String action = request.getParameter("action");
		String email = request.getParameter("id");
		if (action != null && action.equals("new")) {
			System.out.println(action);

		} else if (action != null && action.equals("edit")) {
			System.out.println(action);
			System.out.println(email);
		} else {

			RequestDispatcher rd = request.getRequestDispatcher("/views/admin/new/list.jsp");
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
					request.getContextPath() + "/admin-User?action=update&message=user_update&ready=success");
			SessionUtil.getInstance().putValue(request, "USERMODEL", model);
		}
	}

}
