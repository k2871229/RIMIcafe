package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import dto.Board;

public class BoardDAO {

	private Connection conn;
	private ResultSet rs;
	
	public BoardDAO() {
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
	
	//DB���� �ݱ�
	public void closeAll() {	
		try {
			if(rs != null) rs.close();
			if(conn != null) conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}	
	}
	
	// ���� �ð� ������
	public String getDate() {
		String SQL = "select now()";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return ""; //�����ͺ��̽� ����
	}
	
	// ���� �ֱٿ� �ۼ��� ���� id+1�� ��������.
	public int getNext() {
		String SQL = "select BRD_NUM from BOARDTBL order by BRD_NUM desc";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getInt(1) + 1;
			}
			return 1; //ù ��° �Խù��� ���
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return -1; //�����ͺ��̽� ����
	}
	
	//�� �ۼ�
	public int write(String brd_title, String mem_id, String brd_content) {
		
		int next = getNext();
		String now = getDate();
		
		String SQL = "insert into boardtbl values(?, ?, ?, ?, ?, ?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, next);
			pstmt.setString(2, brd_title);
			pstmt.setString(3, mem_id);
			pstmt.setString(4, brd_content);
			pstmt.setString(5, now);
			pstmt.setInt(6, 1);  	//�������� ���� ��
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll();
		}
		return -1; //�����ͺ��̽� ����
	}
	
	// ������ ���ڿ� �°� �Խñ۵��� �ִ� 5�� ����
	public ArrayList<Board> getList(int pageNumber) {
		String SQL = "select * from boardtbl where brd_num < ? and brd_delete = 1 order by brd_num desc limit 5";
		ArrayList<Board> list = new ArrayList<Board>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Board brd = new Board();
				brd.setBrd_num(rs.getInt(1));
				brd.setBrd_title(rs.getString(2));
				brd.setMem_id(rs.getString(3));
				brd.setBrd_content(rs.getString(4));
				brd.setBrd_date(rs.getString(5));
				brd.setBrd_delete(rs.getInt(6));
				list.add(brd);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return list;
	}
	
	// ���� �������� �ִ��� ������(����¡ó��)
	public boolean nextPage(int pageNumber) {
		String SQL = "select * from boardtbl where brd_num < ? and brd_delete = 1 order by brd_num desc limit 5";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext() - (pageNumber - 1) * 5);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return true; //���� �������� ����
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll();
		}
		return false;	//���� �������� ����
	}
}
	
