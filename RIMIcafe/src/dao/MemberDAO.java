package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import dto.Member;

public class MemberDAO {
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public MemberDAO() {
		try {
			String url = "jdbc:mysql://localhost:3306/rimicafe?useSSL=false&allowPublicKeyRetrieval=true";
			String user = "root";
			String password = "1234";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, password);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//로그인
	public int login(String mem_id, String mem_pw) {
		String sql = "SELECT mem_pw From membertbl WHERE mem_id = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mem_id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(mem_pw)) {
						return 1; //로그인 성공
				} else
						return 0; //비밀번호 불일치
				}
				return -1; //아이디가 없을 때
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2; //데이터베이스 오류
	}
	
	// 회원가입
	public int join(Member member) {
		String sql = "INSERT INTO MEMBERTBL(MEM_ID, MEM_PW, MEM_NAME, MEM_ADDRESS, MEM_PHONE, MEM_DATE) values ( ?, ?, ?, ?, ?, sysdate())";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getMem_id());
			pstmt.setString(2, member.getMem_pw());
			pstmt.setString(3, member.getMem_name());
			pstmt.setString(4, member.getMem_address());
			pstmt.setString(5, member.getMem_phone());
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // 데이터베이스 오류
	}
}
	
