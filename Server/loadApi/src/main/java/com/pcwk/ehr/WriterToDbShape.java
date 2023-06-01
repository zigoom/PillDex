package com.pcwk.ehr;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class WriterToDbShape {
    public static void main(String[] args) throws IOException {
        String jdbcUrl = "jdbc:oracle:thin:@localhost:1521:xe"; // 오라클 JDBC URL
        String username = "scott"; // 오라클 계정 이름
        String password = "pcwk"; // 오라클 계정 비밀번호

        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            // 데이터베이스 연결
            connection = DriverManager.getConnection(jdbcUrl, username, password);

            // SQL 쿼리 작성
            String sql = "INSERT INTO DATASHAPE (ITEM_NAME, DRUG_SHAPE, COLOR_CLASS, CHART, LINE_FRONT, LINE_BACK) VALUES (?, ?, ?, ?, ?, ?)";
            preparedStatement = connection.prepareStatement(sql);

            // 데이터 가져오기
            for (int i = 1; i <= 252; i++) {
                StringBuilder urlBuilder = new StringBuilder("https://apis.data.go.kr/1471000/MdcinGrnIdntfcInfoService01/getMdcinGrnIdntfcInfoList01?serviceKey=7g5vSz6O7oF1oyMa%2FdCiUUwmaRA10IlVnv0qa4qOrdUJmiHzR2eMi5upWITgkX2DM6F4FwiSn1mkFa9iVFBDcA%3D%3D&pageNo=" + i + "&numOfRows=100&type=json");
                URL url = new URL(urlBuilder.toString());
                HttpURLConnection conn = (HttpURLConnection) url.openConnection();
                conn.setRequestMethod("GET");
                conn.setRequestProperty("Content-type", "application/json");
                System.out.println("Response code: " + conn.getResponseCode());
                BufferedReader rd = new BufferedReader(new InputStreamReader(url.openStream(), "UTF-8"));

                // 데이터베이스에 데이터 삽입
                String line;
                while ((line = rd.readLine()) != null) {
                    // JSON 데이터 파싱
                    JSONObject jsonObject = new JSONObject(line);
                    JSONObject jsonObjectBody = jsonObject.getJSONObject("body");
                    JSONArray jsonObjectBodyItems = jsonObjectBody.getJSONArray("items");
                    for (int j = 0; j < jsonObjectBodyItems.length(); j++) {
                        JSONObject itemObj = jsonObjectBodyItems.getJSONObject(j);
                        String itemName = itemObj.getString("ITEM_NAME");
                        String drugShape = itemObj.getString("DRUG_SHAPE");
                        String colorClass = itemObj.optString("COLOR_CLASS1", "null");
                        String drugChart = itemObj.getString("CHART");
                        String lineFront = itemObj.optString("LINE_FRONT", "null");
                        String lineBack = itemObj.optString("LINE_BACK", "null");

                        // preparedStatement에 값 설정
                        preparedStatement.setString(1, itemName);
                        preparedStatement.setString(2, drugShape);
                        preparedStatement.setString(3, colorClass);
                        preparedStatement.setString(4, drugChart);
                        preparedStatement.setString(5, lineFront);
                        preparedStatement.setString(6, lineBack);

                        // SQL 실행
                        preparedStatement.executeUpdate();
                    }
                }

                rd.close();
                conn.disconnect();
            }

            System.out.println("데이터 삽입이 완료되었습니다.");

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // 리소스 해제
            if (preparedStatement != null) {
                try {
                    preparedStatement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
