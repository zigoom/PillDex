package com.pcwk.ehr.mode.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pcwk.ehr.mode.domain.PillVO;

@Repository("modeDao")
public class ModeDaoImpl implements ModeDao {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	@Override
	public List<PillVO> parseDataFromDb(String shape, String color, String chart, String frontLine, String backLine,
			String printFB) throws SQLException {
		List<PillVO> matchDataList = new ArrayList<PillVO>();
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
				pill.setItemName(rs.getString("itemName"));
				pill.setEntpName(rs.getString("entpName"));
				pill.setEfcyQesitm(rs.getString("efcyQesitm"));
				pill.setUseMethodQesitm(rs.getString("useMethodQesitm"));
				pill.setAtpnQesitm(rs.getString("atpnQesitm"));
				pill.setDepositMethodQesitm(rs.getString("depositMethodQesitm"));
				pill.setItemImage(rs.getString("itemImage"));

				pillVO.add(pill);
			}

			for (int i = 0; i < pillVO.size(); i++) {
				System.out.print(pillVO.get(i).getItemName() + ", ");
				System.out.println(pillVO.get(i).getEntpName());
				System.out.println(pillVO.get(i).getEfcyQesitm());
				System.out.println(pillVO.get(i).getUseMethodQesitm());
				System.out.println(pillVO.get(i).getAtpnQesitm());
				System.out.println(pillVO.get(i).getDepositMethodQesitm());
				System.out.println(pillVO.get(i).getItemName());
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

	@Override
	public String parseDataFromDb(PillVO inVO) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

}
