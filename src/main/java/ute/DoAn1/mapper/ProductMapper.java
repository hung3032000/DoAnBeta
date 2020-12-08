package ute.DoAn1.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import ute.DoAn1.model.ProductModel;

public class ProductMapper implements RowMapper<ProductModel> {

	@Override
	public ProductModel mapRow(ResultSet resultSet) {
		
		try {
			ProductModel product = new ProductModel();
			product.setId(resultSet.getLong("id"));
			product.setName(resultSet.getString("name"));
			product.setPrice(resultSet.getInt("price"));
			product.setContent(resultSet.getString("content"));
			product.setImage(resultSet.getString("image"));
			product.setCategorie_id(resultSet.getLong("categorie_id"));
			return product;
		} catch (SQLException e) {
			return null;
		}
	}

}
