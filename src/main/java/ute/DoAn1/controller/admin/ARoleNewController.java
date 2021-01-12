package ute.DoAn1.controller.admin;

import java.io.IOException;
import java.util.ResourceBundle;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ute.DoAn1.constant.SystemConstant;
import ute.DoAn1.model.RoleModel;
import ute.DoAn1.service.IRoleService;
import ute.DoAn1.utils.FormUtil;

/**
 * Servlet implementation class ARoleNewController
 */
@WebServlet(urlPatterns = { "/admin-RoleNew" })
public class ARoleNewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Inject
	private IRoleService IRole;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ARoleNewController() {
		super();
		// TODO Auto-generated constructor stub
	}

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
			String message2 = request.getParameter("message2");
			String ready = request.getParameter("ready");
			if (message != null && alert != null && ready == null) {
				request.setAttribute("message", resourceBundle.getString(message));
				request.setAttribute("alert", alert);
				RequestDispatcher rd = request.getRequestDispatcher("/views/admin/new/editRole.jsp");
				rd.forward(request, response);
			}
			if (message2 != null && alert == null && ready != null && ready.equals("success")) {
				request.setAttribute("message2", resourceBundle.getString(message2));
				request.setAttribute("ready", ready);
				response.sendRedirect(request.getContextPath() + "/admin-Role");

			}

		} else if (action != null && action.equals("detail")) {
			String roleId = request.getParameter("roleId");
			RoleModel role = FormUtil.toModel(RoleModel.class, request);
			role = IRole.findOne(roleId);
			request.setAttribute(SystemConstant.MODEL, role);

			RequestDispatcher rd = request.getRequestDispatcher("/views/admin/new/editRole.jsp");
			rd.forward(request, response);

		}

		else if (action != null && action.equals("delete")) {
			String roleId = request.getParameter("roleId");
			RoleModel role = FormUtil.toModel(RoleModel.class, request);
			role = IRole.findOne(roleId);
			IRole.delete(role);

			response.sendRedirect(request.getContextPath() + "/admin-Role");

		}

		else {

			RequestDispatcher rd = request.getRequestDispatcher("/views/admin/new/editRole.jsp");
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
		String RoleID = request.getParameter("roleID");
		String RoleName = request.getParameter("roleName");
		String RoleCode = request.getParameter("roleCode");
		int status = Integer.parseInt(request.getParameter("status").trim());
		String action = request.getParameter("action");
		RoleModel role = FormUtil.toModel(RoleModel.class, request);

		if (action != null && action.equals("New role")) {
			role.setRoleId(RoleID);
			role.setName(RoleName);
			role.setCode(RoleCode);
			role.setStatus(status);
			role = IRole.save(role);
			if (role != null) {
				response.sendRedirect(
						request.getContextPath() + "/admin-RoleNew?action=new&message2=category_new&ready=success");
			} else {
				response.sendRedirect(
						request.getContextPath() + "/admin-RoleNew?action=new&message=category_exist&alert=error");
			}

		} else if (action != null && action.equals("Edit role")) {
			role.setRoleId(RoleID);
			role.setName(RoleName);
			role.setCode(RoleCode);
			role.setStatus(status);
			IRole.update(role);

			response.sendRedirect(
					request.getContextPath() + "/admin-RoleNew?action=new&message2=category_new&ready=success");
		}

		else {
			response.sendRedirect(request.getContextPath() + "/admin-RoleNew?action=new");
		}
	}

}
