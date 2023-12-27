package hr.dao;

import java.util.List;

import helper.JdbcTemplate;
import hr.dto.DepartDateilDto;
import hr.vo.Department;

public class DepartmentDao {
	
	public DepartDateilDto getDepartmentDetail(int deptId) {
		String sql = """
				select d.department_id,
				       d.department_name,
				       d.manager_id,
				       m.first_name,
				       d.location_id,
				       l.city,
				       l.street_address
				from departments d, employees m, locations l
				where d.department_id = ?
				and d.manager_id = m.employee_id
				and d.location_id = l.location_id
				""";
		return JdbcTemplate.selectOne(sql, rs-> {
			DepartDateilDto dto = new DepartDateilDto();
			dto.setId(rs.getInt("department_id"));
			dto.setName(rs.getString("department_name"));
			dto.setManagerId(rs.getInt("manager_id"));
			dto.setLocationId(rs.getInt("location_id"));
			dto.setName(rs.getString("first_name"));
			dto.setCity(rs.getString("city"));
			dto.setStreeAddress(rs.getString("street_address"));
			
		return dto;
		},deptId);
			
	}
	
	public List<Department> getAllDepartments() {
		String sql = """
				SELECT
					DEPARTMENT_ID,
					DEPARTMENT_NAME,
					MANAGER_ID,
					LOCATION_ID
				FROM
					DEPARTMENTS
				WHERE
					MANAGER_ID IS NOT NULL
				ORDER BY
					DEPARTMENT_ID ASC
				""";
		
		return JdbcTemplate.selectList(sql, rs -> {
			Department dept = new Department();
			dept.setId(rs.getInt("department_id"));
			dept.setName(rs.getString("department_name"));
			dept.setManagerId(rs.getInt("manager_id"));
			dept.setLocationId(rs.getInt("location_id"));
			return dept;
		});
	}

}
