package reviewjsp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Date;

import db.DBConnectionMgr;

public class LoginMgrPool {
	private DBConnectionMgr pool = null;
	
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	Date now = new Date();
	String nowDate = dateFormat.format(now);
	
	public LoginMgrPool() {
		try {
			pool = DBConnectionMgr.getInstance();
		}catch(Exception e) {
			System.out.println("오류: DBConnection Pool 실패.");
		}
	}
	
	public int loginIdCheck(String user_id, String user_pwd) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		int flag = 2;
		
		try {
			con = pool.getConnection();
			sql = "select count(*) from user_mst where user_id = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, user_id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				flag = rs.getInt(1); // 이 부분
			}
		}catch (Exception e) {
			e.printStackTrace(); //소드를 호출하면 메소드가 내부적으로 예외 결과를 화면에 출력한다. printStackTrace는 가장 자세한 예외 정보를 제공한다
		}finally {
			pool.freeConnection(con, pstmt, rs);  // 반납
		}
		
		if(flag != 2) {
			try {
				con = pool.getConnection();
				sql = "select count(*) from user_mst where user_id = ? and user_pwd = ?";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, user_id);
				pstmt.setString(2, user_pwd);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					flag = rs.getInt(1);
				}
			}catch (Exception e) {
				e.printStackTrace();
			}finally {
				pool.freeConnection(con, pstmt, rs);
			}
		}
		return flag;
	}
	
	public UserBean getUserBean(String user_id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		UserBean bean = new UserBean();
		
		try {
			con = pool.getConnection();
			sql = "select * from user_mst where user_id = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, user_id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				bean.setUser_id(rs.getString(1));
				bean.setUser_pwd(rs.getString(2));
				bean.setUser_name(rs.getString(3));
				bean.setUser_birthday(rs.getString(4));
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return bean;
	}
}
