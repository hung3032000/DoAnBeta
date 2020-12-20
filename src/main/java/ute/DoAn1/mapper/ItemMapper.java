package ute.DoAn1.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import ute.DoAn1.model.ItemsModel;
import ute.DoAn1.model.OrderModel;
import ute.DoAn1.model.ProductModel;

public class ItemMapper implements RowMapper<ItemsModel> {

	@Override
	public ItemsModel mapRow(ResultSet resultSet) {
		try {
			ItemsModel item = new ItemsModel();
			item.setQuantity(resultSet.getInt("title"));
			item.setPrice(resultSet.getLong("lname"));
			try {
				OrderModel order = new OrderModel();
				order.setId(resultSet.getLong("id"));
				order.setTotalprice(resultSet.getLong("totalprice"));
				order.setStatus(resultSet.getInt("status"));
				order.setCreated_at(resultSet.getTimestamp("created_at"));
				order.setUpdated_at(resultSet.getTimestamp("updated_at"));
				item.setOrder(order);
			} catch (Exception e) {
				System.out.print(e.getMessage());
			}
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
				item.setProduct(product);
			} catch (Exception e) {
				System.out.print(e.getMessage());
			}
			return item;
		} catch (SQLException e) {
			return null;
		}
	}

}
