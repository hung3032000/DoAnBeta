package ute.DoAn1.controller.admin;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ute.DoAn1.model.RoleModel;
import ute.DoAn1.service.IRoleService;
import ute.DoAn1.utils.FormUtil;

/**
 * Servlet implementation class ARoleController
 */
@WebServlet(urlPatterns = {"/admin-Role"})
public class ARoleController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       @Inject
       private IRoleService Irole;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ARoleController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RoleModel role = FormUtil.toModel(RoleModel.class, request);
		role.setListResult(Irole.findAll());
		request.setAttribute("role", role);
		
		
		RequestDispatcher rd = request.getRequestDispatcher("/views/admin/new/list.jsp");
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
