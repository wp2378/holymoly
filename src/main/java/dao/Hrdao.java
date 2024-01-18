package dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import ibatis.IbatisUtil;
import vo.Department;
import vo.Employee;

public class Hrdao {

	private SqlMapClient ibatis = IbatisUtil.getSqlMapClient();
	
	public List<Department> getAllDepartments() throws SQLException {
		return (List<Department>) ibatis.queryForList("hr.getAllDepartments");
	}
	
	public List<Employee> getEmployeesByDepartmentid(int deptId) throws SQLException {
		return (List<Employee>) ibatis.queryForList("hr.getEmployeesByDepartmentid", deptId);
	}
}
