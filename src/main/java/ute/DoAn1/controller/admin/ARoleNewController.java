package ute.DoAn1.controller.admin;

import java.io.IOException;

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
@WebServlet(urlPatterns = {"/admin-RoleNew"})
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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String role_Id = request.getParameter("roleId");
		RoleModel role = FormUtil.toModel(RoleModel.class, request);
		role = IRole.findOne(role_Id);
		request.setAttribute(SystemConstant.MODEL, role);

		RequestDispatcher rd = request.getRequestDispatcher("/views/admin/new/editProduct.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
