package ute.DoAn1.controller.admin;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ute.DoAn1.model.ProductModel;
import ute.DoAn1.service.IProductService;
import ute.DoAn1.utils.FormUtil;

/**
 * Servlet implementation class AProductController
 */
@WebServlet(urlPatterns = {"/admin-Product"})
public class AProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    @Inject
    private IProductService Iproduct;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AProductController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductModel product = FormUtil.toModel(ProductModel.class, request);
		product.setListResult(Iproduct.findAll());
		request.setAttribute("product", product);
		
		
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
