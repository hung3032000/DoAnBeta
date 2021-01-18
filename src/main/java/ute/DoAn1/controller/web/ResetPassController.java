package ute.DoAn1.controller.web;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ute.DoAn1.model.UserModel;
import ute.DoAn1.service.impl.UserService;
import ute.DoAn1.utils.FormUtil;
import ute.DoAn1.utils.SessionUtil;

/**
 * Servlet implementation class ResetPassController
 */
@WebServlet(urlPatterns = { "/user-resetpass" })
public class ResetPassController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Inject
	private UserService userService;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ResetPassController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		String email = request.getParameter("cus_email");
		UserModel model = FormUtil.toModel(UserModel.class, request);
		model = userService.findOne(email);
		String passWord = request.getParameter("cus_password").trim();
		String passWordN = request.getParameter("cus_newpass").trim();
		String passWordConf = request.getParameter("cus_confnewpass").trim();
		String passWordU = model.getPassWord();
		if (userService.checkPass(passWord, passWordU)) {
			if (userService.checkCPass(passWordN, passWordConf)) {
				model.setEmail(email);
				model.setPassWord(passWordN);
				userService.updatePass(model);
				response.sendRedirect(
						request.getContextPath() + "/user-update?action=update&message=user_updatepass&ready=success");
				SessionUtil.getInstance().putValue(request, "USERMODEL", model);
			} else {
				response.sendRedirect(
						request.getContextPath() + "/user-update?action=update&message=user_wrongcpass&alert=error");

			}

		} else {
			response.sendRedirect(
					request.getContextPath() + "/user-update?action=update&message=user_wrongpass&alert=error");
		}

	}

}
