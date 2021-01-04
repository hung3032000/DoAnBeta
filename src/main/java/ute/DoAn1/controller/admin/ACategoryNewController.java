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
import ute.DoAn1.model.CategoriesModel;
import ute.DoAn1.service.ICategoriesService;
import ute.DoAn1.utils.FormUtil;

/**
 * Servlet implementation class ACategoryController
 */
@WebServlet(urlPatterns = { "/admin-CategoryNew" })
public class ACategoryNewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Inject
	private ICategoriesService Icategory;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ACategoryNewController() {
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
		CategoriesModel category = FormUtil.toModel(CategoriesModel.class, request);
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
				RequestDispatcher rd = request.getRequestDispatcher("/views/admin/new/editCategory.jsp");
				rd.forward(request, response);
			}
			if (message2 != null && alert == null && ready != null && ready.equals("success")) {
				request.setAttribute("message2", resourceBundle.getString(message2));
				request.setAttribute("ready", ready);
				RequestDispatcher rd = request.getRequestDispatcher("/views/admin/new/list.jsp");
				rd.forward(request, response);
			}

		} else if (action != null && action.equals("detail")) {
			Integer parent_id = Integer.parseInt(request.getParameter("Categoryid"));
			CategoriesModel category2 = FormUtil.toModel(CategoriesModel.class, request);
			category2 = Icategory.findOne(parent_id);
			request.setAttribute(SystemConstant.MODEL, category2);

			RequestDispatcher rd = request.getRequestDispatcher("/views/admin/new/editCategory.jsp");
			rd.forward(request, response);

		}

		else {
			RequestDispatcher rd = request.getRequestDispatcher("/views/admin/new/editCategory.jsp");
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
		String categoryName = request.getParameter("categoryName");
		Integer parent_id = Integer.parseInt(request.getParameter("Categoryid"));
		String image = request.getParameter("outputfile");
		String action = request.getParameter("action");
		CategoriesModel category = FormUtil.toModel(CategoriesModel.class, request);

		if (action != null && action.equals("New Category")) {
			category.setImage(image);
			category.setParent_id(parent_id);
			category.setName(categoryName);
			category = Icategory.save(category);

			if (category != null) {
				response.sendRedirect(
						request.getContextPath() + "/admin-CategoryNew?action=new&message2=category_new&ready=success");
			} else {
				response.sendRedirect(
						request.getContextPath() + "/admin-CategoryNew?action=new&message=category_exist&alert=error");
			}
		} else if (action != null && action.equals("Edit Category")) {
			Long id = Long.parseLong(request.getParameter("categoryid"));
			category.setImage(image);
			category.setParent_id(parent_id);
			category.setId(id);
			category.setName(categoryName);
			Icategory.update(category);
			response.sendRedirect(
					request.getContextPath() + "/admin-CategoryNew?action=update&message2=category_new&ready=success");
		}else {
			response.sendRedirect(request.getContextPath() + "/admin-CategoryNew?action=new");
		}
	}

}
