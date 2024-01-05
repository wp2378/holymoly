package dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import ibatis.IbatisUtil;
import vo.Board;

public class BoardDao {

	private SqlMapClient ibatis = IbatisUtil.getSqlMapClient();
	
	public void insertBoard(Board board) throws SQLException {
		ibatis.insert("boards.insertBoard", board);
	}
	
	/**
	 * 게시글의 전체 행 갯수를 반환한다.
	 * @return 전체 행의 갯수
	 * @throws SQLException
	 */
	public int getTotalRows() throws SQLException{
		return (Integer) ibatis.queryForObject("boards.getTotalRows");
		
	}
	
	
	/**
	 * 게시글 목록을 반환한다.
	 * @param param 게시글 목록 조회조건을 포함하는 Map객체다.
	 * @return 게시글 목록
	 * @throws SQLException
	 */
	@SuppressWarnings("unchecked")
	public List<Board> getBoards(Map<String, Object> param) throws SQLException {
		return (List<Board>) ibatis.queryForList("boards.getBoards",param);
	}
}
