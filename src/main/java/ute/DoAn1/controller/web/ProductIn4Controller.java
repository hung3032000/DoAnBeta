package ute.DoAn1.controller.web;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ute.DoAn1.model.CategoriesModel;
import ute.DoAn1.model.ProductImageModel;
import ute.DoAn1.model.ProductModel;
import ute.DoAn1.service.ICategoriesService;
import ute.DoAn1.service.IProductImageService;
import ute.DoAn1.service.IProductService;
import ute.DoAn1.utils.FormUtil;

/**
 * Servlet implementation class ProductIn4Controller
 */
@WebServlet(urlPatterns = { "/user-productin4" })
public class ProductIn4Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Inject
	private ICategoriesService Icategory;
	@Inject
	private IProductService Iproduct;
	@Inject
	private IProductImageService IproductI;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductIn4Controller() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Tra ve toan bo danh muc
		CategoriesModel category = FormUtil.toModel(CategoriesModel.class, request);
		category.setListResult(Icategory.findAllP());
		request.setAttribute("category", category);

		
		//load toan bo san pham
		String product_id = request.getParameter("product_id");
		ProductModel product = FormUtil.toModel(ProductModel.class, request);
		product = Iproduct.findOne(product_id);
		request.setAttribute("item", product);
		//load thong tin anh cua 1 product
		ProductImageModel productI = FormUtil.toModel(ProductImageModel.class, request);
		productI.setListResult(IproductI.findAll(product_id));
		request.setAttribute("image", productI);
		
		RequestDispatcher rd = request.getRequestDispatcher("/views/web/productin4.jsp");
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
