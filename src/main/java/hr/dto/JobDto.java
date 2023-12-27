package hr.dto;

public class JobDto {
	
	private int id;
	private String jname;
	private int Minsalary;
	private int Maxsalary;
	
	public JobDto() {}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getJname() {
		return jname;
	}

	public void setJname(String jname) {
		this.jname = jname;
	}

	public int getMinsalary() {
		return Minsalary;
	}

	public void setMinsalary(int minsalary) {
		Minsalary = minsalary;
	}

	public int getMaxsalary() {
		return Maxsalary;
	}

	public void setMaxsalary(int maxsalary) {
		Maxsalary = maxsalary;
	}
	
	
	


}
