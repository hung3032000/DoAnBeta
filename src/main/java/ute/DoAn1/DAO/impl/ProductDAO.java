package ute.DoAn1.DAO.impl;

import java.util.List;

import ute.DoAn1.DAO.IProductDAO;
import ute.DoAn1.mapper.ProductMapper;
import ute.DoAn1.model.ProductModel;

public class ProductDAO extends AbstractDAO<ProductModel> implements IProductDAO {

	@Override
	public List<ProductModel> findAllC(String category_id, Integer offset, Integer limit) {
		if(offset == null && limit == null) {
			String sql = "SELECT * FROM product where categorie_id =? and status =1;";
			return query(sql, new ProductMapper(),category_id);
		}else {
		String sql = "SELECT * FROM product where categorie_id =? and status = 1 limit ?,?;";
		return query(sql, new ProductMapper(),category_id,offset,limit);
		}
	}

	@Override
	public int getTotalItem(String category_id) {
		String sql = "SELECT count(*) FROM product where categorie_id = ? and status =1;";
		return count(sql,category_id);
	}

	@Override
	public ProductModel findOne(String product_id) {
		String sql = "select * from product where id = ?;";
		List<ProductModel> product = query(sql.toString(), new ProductMapper(), product_id);
		return product.isEmpty() ? null : product.get(0);
	}

	@Override
	public List<ProductModel> findAll() {
		String sql = "SELECT * FROM product";
		return query(sql, new ProductMapper());
	}

	@Override
	public Long save(ProductModel productModel) {
		String sql = "insert into product (name, price,size,color,quantity,origin,shortdecription,content,image,status,categorie_id,created_at) "
				+ "values(?,?,?,?,?,?,?,?,?,?,?,now());";
		return insert(sql, productModel.getName(),productModel.getPrice(),productModel.getSize(),productModel.getColor(),
				productModel.getQuantity(),productModel.getOrigin(),productModel.getShortdecription(),productModel.getContent(),productModel.getImage(),
				productModel.getStatus(),productModel.getCategorie_id());
	}

	@Override
	public ProductModel findOne(long productId) {
		String sql = "SELECT * FROM product where id = ?;";
		List<ProductModel> product = query(sql, new ProductMapper(), productId);
		return product.isEmpty() ? null : product.get(0);
	}

	@Override
	public void update(ProductModel productModel) {
		String sql= "update product set name =?, price =?,size=?,color=?,quantity =?,origin = ?,shortdecription =?, content= ?, "
				+ "image=?, status=?, categorie_id=?, updated_at=now() "
				+ "where id = ?";
		this.update(sql, productModel.getName(),productModel.getPrice(),productModel.getSize(),productModel.getColor(),
				productModel.getQuantity(),productModel.getOrigin(),productModel.getShortdecription(),productModel.getContent(),productModel.getImage(),
				productModel.getStatus(),productModel.getCategorie_id(),productModel.getId());
		}

	@Override
	public void updateStatus(ProductModel productModel) {
		String sql= "update product set name =?, price =?,size=?,color=?,quantity =?,origin = ?,shortdecription =?, content= ?, "
				+ "status=?, categorie_id=?, updated_at=now() "
				+ "where id = ?";
		this.update(sql, productModel.getName(),productModel.getPrice(),productModel.getSize(),productModel.getColor(),
				productModel.getQuantity(),productModel.getOrigin(),productModel.getShortdecription(),productModel.getContent(),
				productModel.getStatus(),productModel.getCategorie_id(),productModel.getId());
		
	}

	@Override
	public void delete(ProductModel productModel) {
		String sql = "update product set status=0,updated_at=now() where id =?;";
		this.update(sql,productModel.getId());
	}
	
}
