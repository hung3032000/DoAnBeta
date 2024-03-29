package ute.DoAn1.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import ute.DoAn1.model.CategoriesModel;

public class CategoriesMapper implements RowMapper<CategoriesModel> {

	@Override
	public CategoriesModel mapRow(ResultSet resultSet) {
		try {
			CategoriesModel category = new CategoriesModel();
			category.setId(resultSet.getLong("id"));
			category.setName(resultSet.getString("name"));
			category.setParent_id(resultSet.getInt("parent_id"));
			category.setImage(resultSet.getString("image"));
			category.setStatus(resultSet.getInt("status"));
			category.setCreated_at(resultSet.getTimestamp("created_at"));
			category.setUpdated_at(resultSet.getTimestamp("updated_at"));
			return category;
		} catch (SQLException e) {
			return null;
		}
	}

}
