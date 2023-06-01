package com.pcwk.ehr.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DbTest {
	public static void main(String[] args) {
		// 데이터베이스 연결 정보
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String username = "SCOTT";
		String password = "pcwk";

		// JDBC 드라이버 로드
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			return;
		}

		// 데이터베이스 연결
		try (Connection connection = DriverManager.getConnection(url, username, password)) {
			// 쿼리 실행
			String sql = "SELECT * FROM MEMBER";
			try (Statement statement = connection.createStatement();
					ResultSet resultSet = statement.executeQuery(sql)) {
				// 결과 처리
				while (resultSet.next()) {
					String memberId = resultSet.getString("ID");
					String memberGrade = resultSet.getString("GRADE");
					String memberName = resultSet.getString("NAME");
					String memberTel = resultSet.getString("TEL");
					String memberBirth = resultSet.getString("BIRTH");
					String memberSex = resultSet.getString("SEX");
					String memberEmailFront = resultSet.getString("EMAIL_FRONT");
					String memberEmailBack = resultSet.getString("EMAIL_BACK");
					String memberRegDt = resultSet.getString("REG_DT");

					// 결과 출력 또는 다른 작업 수행
					System.out.println("memberId = " + memberId);
					System.out.println("memberGrade = " + memberGrade);
					System.out.println("memberName = " + memberName);
					System.out.println("memberTel = " + memberTel);
					System.out.println("memberBirth = " + memberBirth);
					System.out.println("memberSex = " + memberSex);
					System.out.println("memberEmailFront = " + memberEmailFront);
					System.out.println("memberEmailBack = " + memberEmailBack);
					System.out.println("memberRegDt = " + memberRegDt);

				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
