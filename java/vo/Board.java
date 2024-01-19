package vo;

import java.util.Date;

public class Board {

	private int no;
	private String title;
	private User user;
	private String content;
	private int replyCnt;
	private String deleted;
	private Date updateedDate;
	private Date createdDate;
	
	public Board() {}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getReplyCnt() {
		return replyCnt;
	}

	public void setReplyCnt(int replyCnt) {
		this.replyCnt = replyCnt;
	}

	public String getDeleted() {
		return deleted;
	}

	public void setDeleted(String deleted) {
		this.deleted = deleted;
	}

	public Date getUpdateedDate() {
		return updateedDate;
	}

	public void setUpdateedDate(Date updateedDate) {
		this.updateedDate = updateedDate;
	}

	public Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}

	@Override
	public String toString() {
		return "Board [no=" + no + ", title=" + title + ", user=" + user + ", content=" + content + ", replyCnt="
				+ replyCnt + ", deleted=" + deleted + ", updateedDate=" + updateedDate + ", createdDate=" + createdDate
				+ "]";
	}
	
}
