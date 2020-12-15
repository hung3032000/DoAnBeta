package ute.DoAn1.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import ute.DoAn1.model.ProductImageModel;

public class ProductImageMapper implements RowMapper<ProductImageModel> {

	@Override
	public ProductImageModel mapRow(ResultSet resultSet) {
		try {
			ProductImageModel productI = new ProductImageModel();
			productI.setId(resultSet.getLong("id"));
			productI.setImage(resultSet.getString("image"));
			productI.setProductId(resultSet.getLong("product_id"));
			productI.setCreated_at(resultSet.getTimestamp("created_at"));
			productI.setUpdated_at(resultSet.getTimestamp("updated_at"));
			return productI;
		} catch (SQLException e) {
			return null;
		}
	}
	
}
