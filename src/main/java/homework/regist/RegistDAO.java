package homework.regist;

import common.JDBConnect;
import jakarta.servlet.ServletContext;

public class RegistDAO extends JDBConnect {
	
	// DB연결을 위한 인수생성자 정의
	public RegistDAO(ServletContext application) {
		super(application);
	}
	
	// 회원정보 입력을 위한 메소드 정의
	public int registInsert(RegistDTO dto) {
		int result = 0;
		String query = " INSERT INTO regist_member VALUES"
				+ "(?, ?, ?, ?, ?, ?, ?, ?, ?, ?) ";
		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPass());
			psmt.setString(3, dto.getName());
			psmt.setString(4, dto.getEmail());
			psmt.setString(5, dto.getMailing());
			psmt.setString(6, dto.getZipcode());
			psmt.setString(7, dto.getAddr1());
			psmt.setString(8, dto.getAddr2());
			psmt.setString(9, dto.getMobile());
			psmt.setString(10, dto.getSms());
			result = psmt.executeUpdate();
		} catch (Exception e) {
			System.out.println("회원가입 중 예외 발생");
			e.printStackTrace();
		}
		
		return result;
	}
	
	// 아이디가 존재하는지 검사
	public boolean isExist(String id) {
		// 동적 쿼리문 작성
		String query = " SELECT id FROM regist_member WHERE id=? ";
		try {
			psmt = con.prepareStatement(query);
			// 첫번째 인파라미터에 매개변수id를 대입
			psmt.setString(1, id);
			// 쿼리 실행
			rs = psmt.executeQuery();
			
			// rs가 존재할경우 false 반환
			if (rs.next()) {
				return false; 
			}
		} catch (Exception e) {
			System.out.println("아이디 중복확인 중 예외 발생");
			e.printStackTrace();
		}
		
		// if문에서 걸리지 않았다면 true 반환
		return true;
	}
	
}
