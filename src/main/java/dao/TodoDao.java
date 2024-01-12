package dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import ibatis.IbatisUtil;
import vo.Todo;

public class TodoDao {

	private SqlMapClient ibates = IbatisUtil.getSqlMapClient();


	public void insertTodo (Todo todo) throws SQLException {
		ibates.insert("todos.insertTodo", todo);
	}
	
	public int getTotalRows() throws SQLException {
		return (Integer) ibates.queryForObject("todos.getTotalRows");
		
	}
	
	@SuppressWarnings("unchecked")
	public List<Todo> getTodos(Map<String, Object> param) throws SQLException {
		return (List<Todo>) ibates.queryForList("todos.getTodos", param);
	}
	
	
}