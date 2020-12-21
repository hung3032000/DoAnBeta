package ute.DoAn1.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import ute.DoAn1.model.OrderItemsModel;
import ute.DoAn1.model.ProductModel;

public class OrderItemsMapper implements RowMapper<OrderItemsModel> {

	@Override
	public OrderItemsModel mapRow(ResultSet resultSet) {
		try {
			OrderItemsModel orderItems = new OrderItemsModel();
			orderItems.setId(resultSet.getLong("id"));
			orderItems.setOrderId(resultSet.getLong("order_id"));
			orderItems.setProductId(resultSet.getLong("product_id"));
			orderItems.setQuantity(resultSet.getLong("quantity"));
			orderItems.setTotalPrice(resultSet.getLong("totalprice"));
			try {
				ProductModel product = new ProductModel();
	
				product.setId(resultSet.getLong("id"));
				product.setName(resultSet.getString("name"));
				product.setPrice(resultSet.getInt("price"));
				product.setContent(resultSet.getString("content"));
				product.setImage(resultSet.getString("image"));
				product.setCategorie_id(resultSet.getLong("categorie_id"));
				product.setQuantity(resultSet.getInt("quantity"));
				product.setOrigin(resultSet.getString("origin"));
				product.setSize(resultSet.getString("size"));
				product.setColor(resultSet.getString("color"));
				product.setShortdecription(resultSet.getString("shortdecription"));
				orderItems.setProduct(product);
			} catch (Exception e) {
				System.out.print(e.getMessage());
			}
		
			return orderItems;
		} catch (SQLException e) {
			return null;
		}
	}

}
