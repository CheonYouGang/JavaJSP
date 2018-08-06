package chap13;

import java.sql.*;
import org.apache.log4j.*;
import javax.servlet.ServletException;

public class BBSItem { //자바빈
	
	private int 		seqno;	//순번
	private String  title;	//제목
	private String 	content;//내용
	private String 	writer;	//작성자
	private Date 	wdate;	//저장일자
	private Time 	wtime;	//저장시간
	
	public BBSItem() {
		
	}
	
	public void setSeqno(int seqno) {
		this.seqno = seqno;
	}


	public String getTitle() {
		return title;
	}
	public String getContent() {
		return content;
	}
	public String getWriter() {
		return writer;
	}
	public Date getWdate() {
		return wdate;
	}
	public Time getWtime() {
		return wtime;
	}

	/****************로그****************/
	Logger logger = Logger.getLogger(this.getClass());
	/****************로그****************/
	
	public void readDB() throws ServletException{//DB로부터 게시글을 읽는 메소드
		
		Connection conn = null;
		// Statement 인터페이스: SQL을 실행하는 객체
		Statement stmt = null;
		//PreparedStatement pstmt =null;  

		try{
			Class.forName("org.apache.commons.dbcp.PoolingDriver");
			Class.forName("com.mysql.jdbc.Driver");//추가 해줘야 정상 작동
			conn = DriverManager.getConnection(
					"jdbc:apache:commons:dbcp:/wdbpool");
			
			if(conn == null)
				throw new Exception("db에 연결 할 수가 없습니다.");

			
			String sql = "select * from bbs where seqno='"+seqno+"'";
			//String sql = "select * from bbs where seqno=?";
			logger.info("sql: " + sql);
			stmt = conn.createStatement();
			//pstmt = conn.prepareStatement(sql);
			
			// ResultSet 인터페이스: SQL결과를 저장하는 객체(select)
			ResultSet rs =
					stmt.executeQuery(sql);
			
/*			pstmt.setString(2, title);
			pstmt.setString(3, content);
			pstmt.setString(4, writer);
			pstmt.setDate(5, wdate);
			pstmt.setTime(6, wtime);*/
			
			//ResultSet rs = pstmt.executeQuery(sql);
			
			if(rs.next()) {
				title	= rs.getString("title");	//제목
				content = rs.getString("content");	//내용
				writer  = rs.getString("writer");	//작성자
				wdate   = rs.getDate("wdate");		//저장일자
				wtime	= rs.getTime("wtime");		//저장시각
			}

/*			int rowNum = pstmt.executeUpdate();
			if(rowNum<1)
				throw new Exception("DB에 입력이 불가능 합니다.");*/
			
		}catch(Exception e){
			e.getMessage();	
		}finally{
			try {
				stmt.close();
				//pstmt.close();
			} catch (SQLException e) {

			}
			try {
				conn.close();
			} catch (SQLException e) {

			}

		}
	}	
}
