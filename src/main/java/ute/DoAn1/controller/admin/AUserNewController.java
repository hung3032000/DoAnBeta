package ute.DoAn1.controller.admin;

import java.io.IOException;
import java.sql.Date;
import java.time.LocalDate;
import java.util.ResourceBundle;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ute.DoAn1.constant.SystemConstant;
import ute.DoAn1.model.UserModel;
import ute.DoAn1.service.impl.UserService;
import ute.DoAn1.utils.FormUtil;

/**
 * Servlet implementation class AUserNewController
 */
@WebServlet(urlPatterns = { "/admin-New" })
public class AUserNewController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AUserNewController() {
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

		request.setCharacterEncoding("UTF-8");
		String action = request.getParameter("action");
		String email = request.getParameter("email");

		if (action != null && action.equals("new")) {
			String alert = request.getParameter("alert");
			String message = request.getParameter("message");
			String message2 = request.getParameter("message2");
			String ready = request.getParameter("ready");
			if (message != null && alert != null && ready == null) {
				request.setAttribute("message", resourceBundle.getString(message));
				request.setAttribute("alert", alert);
				RequestDispatcher rd = request.getRequestDispatcher("/views/admin/new/editUser.jsp");
				rd.forward(request, response);
			}
			if (message2 != null && alert == null && ready != null && ready.equals("success")) {
				request.setAttribute("message2", resourceBundle.getString(message2));
				request.setAttribute("ready", ready);
				RequestDispatcher rd = request.getRequestDispatcher("/views/admin/new/list.jsp");
				rd.forward(request, response);
			}

		}

		else if (action != null && action.equals("detail")) {

			UserModel model = FormUtil.toModel(UserModel.class, request);
			model = userService.findOne(email);
			request.setAttribute(SystemConstant.MODEL, model);
			if(model.getDateOfBirth() != null) {
			Date birthDate = model.getDateOfBirth();
			LocalDate birth = birthDate.toLocalDate();
			String daySelected = Integer.toString(birth.getDayOfMonth());
			String monthSelected = Integer.toString(birth.getMonthValue());
			String yearSelected = Integer.toString(birth.getYear());
			request.setAttribute("day", daySelected);
			request.setAttribute("month", monthSelected);
			request.setAttribute("year", yearSelected);
			}
			else {
				request.setAttribute("day", null);
				request.setAttribute("month", null);
				request.setAttribute("year", null);
			}

			RequestDispatcher rd = request.getRequestDispatcher("/views/admin/new/editUser.jsp");
			rd.forward(request, response);

		}

		else if (action != null && action.equals("edit")) {
			String alert = request.getParameter("alert");
			String message = request.getParameter("message");
			String ready = request.getParameter("ready");
			if (message != null && alert != null && ready == null) {
				request.setAttribute("message", resourceBundle.getString(message));
				request.setAttribute("alert", alert);
				RequestDispatcher rd = request.getRequestDispatcher("/views/admin/new/editUser.jsp");
				rd.forward(request, response);
			}
			if (message != null && alert == null && ready != null && ready.equals("success")) {
				request.setAttribute("message", resourceBundle.getString(message));
				request.setAttribute("ready", ready);
				RequestDispatcher rd = request.getRequestDispatcher("/views/admin/new/list.jsp");
				rd.forward(request, response);
			}
		}

		else {
			RequestDispatcher rd = request.getRequestDispatcher("/views/admin/new/editUser.jsp");
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
		String email = request.getParameter("email").trim();
		UserModel model = FormUtil.toModel(UserModel.class, request);
		model = userService.findOne(email);
		if (action != null && action.equals("New User")) {
			String title = request.getParameter("userTitle").trim();
			String fname = request.getParameter("fname").trim();
			String lname = request.getParameter("lname").trim();
			String password = request.getParameter("password").trim();
			String roleid = request.getParameter("roleid").trim();
			String status = request.getParameter("status").trim();
			if (userService.checkRegister(fname, lname, email, password)) {
				// có trong db
				if (model != null) {
					response.sendRedirect(
							request.getContextPath() + "/admin-New?action=new&message=user_exist&alert=error");
				}
				// thêm mới user
				else {
					UserModel model2 = FormUtil.toModel(UserModel.class, request);
					model2.setTitle(title);
					model2.setfName(fname);
					model2.setlName(lname);
					model2.setEmail(email);
					model2.setPassWord(password);
					model2.setRoleId(Long.parseLong(roleid));
					model2.setStatus(Integer.parseInt(status));
					model2 = userService.save(model2);
					if (model2 != null) {
						response.sendRedirect(
								request.getContextPath() + "/admin-User?action=new&message2=user_new&ready=success");
					} else {
						response.sendRedirect(
								request.getContextPath() + "/admin-New?action=new&message=user_exist&alert=error");
					}
				}
			} else {
				response.sendRedirect(
						request.getContextPath() + "/admin-New?action=new&message=user_empty_fill&alert=error");
			}
		}else if(action != null && action.equals("Edit User")) {
			String title = request.getParameter("userTitle").trim();
			String fname = request.getParameter("fname").trim();
			String lname = request.getParameter("lname").trim();
			Long roleid =  Long.parseLong(request.getParameter("roleid").trim());
			Integer status = Integer.parseInt(request.getParameter("status").trim());
			String address = request.getParameter("address");
			String daybirth = request.getParameter("Days").trim();
			String monthbirth = request.getParameter("Month").trim();
			String yearbirth = request.getParameter("Year").trim();
			if(!daybirth.equals("Day") && !monthbirth.equals("Month") && !yearbirth.equals("Year")) {
			Date birthdate = Date.valueOf(yearbirth + "-" + monthbirth + "-" + daybirth);	
			model.setDateOfBirth(birthdate);
			}
			model.setTitle(title);
			model.setfName(fname);
			model.setlName(lname);
			model.setAddress(address);
			model.setRoleId(roleid);
			model.setStatus(status);
			userService.update(model);
			response.sendRedirect(
					request.getContextPath() + "/admin-User?action=edit&message=user_update&ready=success");
		}
		
		else {
			response.sendRedirect(request.getContextPath() + "/admin-User?action=new");
		}
	}
}
