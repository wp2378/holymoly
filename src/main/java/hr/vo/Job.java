package hr.vo;

public class Job {
	
	
	private String id;
	private String title;
	private int Minsalary;
	private int Maxsalary;
	
	public Job() {}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
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

	
