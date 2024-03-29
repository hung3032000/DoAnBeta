package ute.DoAn1.DAO;

import java.util.List;

import ute.DoAn1.mapper.RowMapper;


public interface GenericDAO<T> {
	@SuppressWarnings("hiding")
	<T> List<T> query(String sql, RowMapper<T> rowMapper, Object... parameters);
	void update (String sql, Object... parameters);
	//insert voi key = auto incre
	Long insert (String sql, Object... parameters);	
	//insert voi key = string
	String insertU(String sql,String email, Object... parameters );
	//
	int count(String sql, Object... parameters);
}
