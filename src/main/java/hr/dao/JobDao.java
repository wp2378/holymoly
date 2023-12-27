package hr.dao;

import java.util.List;

import helper.JdbcTemplate;
import hr.vo.Job;

public class JobDao {

	public List<Job> getAllJobs() {
		String sql = """
				SELECT
				 	   JOB_ID,
					   JOB_TITLE,
					   MIN_SALARY,
					   MAX_SALARY
				FROM
					JOBS
				ORDER BY JOB_ID ASC
				""";
		
		return JdbcTemplate.selectList(sql, rs -> {
			Job j = new Job();
			j.setId(rs.getString("job_id"));
			j.setTitle(rs.getString("job_title"));
			j.setMinsalary(rs.getInt("min_salary"));
			j.setMaxsalary(rs.getInt("max_salary"));
			return j;
		});
	}
	
	public Job getJobById(String jobId ) {
			String sql = """
					select *
					from jobs
					where job_id = ?
				""";
			
			return JdbcTemplate.selectOne(sql, rs -> {
				Job j = new Job();
				j.setId(rs.getString("job_id"));
				j.setTitle(rs.getString("job_title"));
				j.setMinsalary(rs.getInt("min_salary"));
				j.setMaxsalary(rs.getInt("max_salary"));
				return j;
			}, jobId);
	}
}
