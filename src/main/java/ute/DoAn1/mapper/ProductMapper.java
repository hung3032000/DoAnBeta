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
			product.setStatus(resultSet.getInt("status"));
			product.setCategorie_id(resultSet.getLong("categorie_id"));
			product.setQuantity(resultSet.getInt("quantity"));
			product.setOrigin(resultSet.getString("origin"));
			product.setSize(resultSet.getString("size"));
			product.setColor(resultSet.getString("color"));
			product.setShortdecription(resultSet.getString("shortdecription"));
			product.setCreated_at(resultSet.getTimestamp("created_at"));
			product.setUpdated_at(resultSet.getTimestamp("updated_at"));
			
			return product;
		} catch (SQLException e) {
			return null;
		}
	}

}
