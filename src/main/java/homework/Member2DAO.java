package homework;

import common.JDBConnect;
import jakarta.servlet.ServletContext;
import model1.board.BoardDTO;

public class Member2DAO extends JDBConnect {
	
	public Member2DAO(ServletContext application) {
		super(application);
	}
	
	public int insertMember(Member2DTO dto) {
		int result = 0;
		
		try {
			String query = "INSERT INTO member2 VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
			
			psmt = con.prepareStatement(query);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPass());
			psmt.setString(3, dto.getName());
			psmt.setString(4, dto.getEmail());
			psmt.setInt(5, dto.getAddrNum());
			psmt.setString(6, dto.getAddr1());
			psmt.setString(7, dto.getAddr2());
			psmt.setString(8, dto.getPhone());
			
			result = psmt.executeUpdate();
		} catch (Exception e) {
			System.out.println("회원가입 중 예외 발생");
			e.printStackTrace();
		}
		
		return result;
	}
	
}
