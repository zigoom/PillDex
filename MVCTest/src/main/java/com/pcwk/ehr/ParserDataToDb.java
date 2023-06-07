package com.pcwk.ehr;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ParserDataToDb {
	public List<String> parseDataFromDb(String shape, String color, String chart, String frontLine, String backLine,
			String printFB) throws SQLException {
		List<String> matchDataList = new ArrayList<>();

		String jdbcUrl = "jdbc:oracle:thin:@localhost:1521:xe";
		String username = "scott";
		String password = "pcwk";
		StringBuilder sb = new StringBuilder(200);
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		List<PillVO> pillVO = new ArrayList<PillVO>();

		try {
			conn = DriverManager.getConnection(jdbcUrl, username, password);
			System.out.println("DB 연결 성공");

			sb.append("SELECT * FROM DATANAME WHERE item_name IN (");
			sb.append("SELECT item_name FROM datashape WHERE ");

			if (!shape.isEmpty()) {
				sb.append("drug_shape = ?");
			}
			if (!color.isEmpty()) {
				if (!shape.isEmpty()) {
					sb.append(" AND ");
				}
				sb.append("color_class = ?");
			}
			if (!chart.isEmpty()) {
				if (!shape.isEmpty() || !color.isEmpty()) {
					sb.append(" AND ");
				}
				sb.append("chart LIKE '%' || ? || '%'");
			}
			if (!frontLine.isEmpty() || !backLine.isEmpty()) {
				if (!shape.isEmpty() || !color.isEmpty() || !chart.isEmpty()) {
					sb.append(" AND ");
				}
				sb.append("(line_front = ? OR line_back = ?)");
			}
			if (!printFB.isEmpty()) {
				if (!shape.isEmpty() || !color.isEmpty() || !chart.isEmpty() || !frontLine.isEmpty()
						|| !backLine.isEmpty()) {
					sb.append(" AND ");
				}
				sb.append("(print_front LIKE '%' || ? || '%' OR print_back LIKE '%' || ? || '%')");
			}

			sb.append(")");

			pstmt = conn.prepareStatement(sb.toString());

			int parameterIndex = 1;

			if (!shape.isEmpty()) {
				pstmt.setString(parameterIndex++, shape);
			}
			if (!color.isEmpty()) {
				pstmt.setString(parameterIndex++, color);
			}
			if (!chart.isEmpty()) {
				pstmt.setString(parameterIndex++, chart);
			}
			if (!frontLine.isEmpty() || !backLine.isEmpty()) {
				pstmt.setString(parameterIndex++, frontLine);
				pstmt.setString(parameterIndex++, backLine);
			}
			if (!printFB.isEmpty()) {
				pstmt.setString(parameterIndex++, printFB);
				pstmt.setString(parameterIndex++, printFB);
			}

			rs = pstmt.executeQuery();

			while (rs.next()) {
				PillVO pill = new PillVO();
				pill.setITEM_NAME(rs.getString("item_name"));
				pill.setENTP_NAME(rs.getString("entp_name"));
				pill.setEFCY_QESITM(rs.getString("efcy_qesitm"));
				pill.setUSE_METHOD_QESITM(rs.getString("use_method_qesitm"));
				pill.setATPN_QESITM(rs.getString("atpn_qesitm"));
				pill.setDEPOSIT_METHOD_QESITM(rs.getString("deposit_method_qesitm"));
				pill.setITEM_IMAGE(rs.getString("item_image"));

				pillVO.add(pill);
			}

			for (int i = 0; i < pillVO.size(); i++) {
				System.out.print(pillVO.get(i).getITEM_NAME() + ", ");
				System.out.println(pillVO.get(i).getENTP_NAME());
				System.out.println(pillVO.get(i).getEFCY_QESITM());
				System.out.println(pillVO.get(i).getUSE_METHOD_QESITM());
				System.out.println(pillVO.get(i).getATPN_QESITM());
				System.out.println(pillVO.get(i).getDEPOSIT_METHOD_QESITM());
				System.out.println(pillVO.get(i).getITEM_IMAGE());
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (rs != null) {
				rs.close();
			}
			if (pstmt != null) {
				pstmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		}

		return matchDataList;
	}
}
