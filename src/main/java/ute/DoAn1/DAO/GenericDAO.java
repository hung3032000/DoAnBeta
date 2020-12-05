package ute.DoAn1.DAO;

import java.util.List;

import ute.DoAn1.mapper.RowMapper;


public interface GenericDAO<T> {
	<T> List<T> query(String sql, RowMapper<T> rowMapper, Object... parameters);
	void update (String sql, Object... parameters);
	Long insert (String sql, Object... parameters);

}
