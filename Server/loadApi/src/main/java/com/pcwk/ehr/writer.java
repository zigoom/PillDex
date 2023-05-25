package com.pcwk.ehr;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;

public class Writer {
	public static void main(String[] args) throws IOException {
		String result = "";

		BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(new FileOutputStream("sbData.csv"), "UTF-8"));
		for (int i = 1; i < 45; i++) {
			StringBuilder urlBuilder = new StringBuilder(
					"https://apis.data.go.kr/1471000/MdcinGrnIdntfcInfoService01/getMdcinGrnIdntfcInfoList01?serviceKey=7g5vSz6O7oF1oyMa%2FdCiUUwmaRA10IlVnv0qa4qOrdUJmiHzR2eMi5upWITgkX2DM6F4FwiSn1mkFa9iVFBDcA%3D%3D&pageNo="+i+"&numOfRows=100&type=json");
			URL url = new URL(urlBuilder.toString());
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Content-type", "application/json");
			System.out.println("Response code: " + conn.getResponseCode());
			BufferedReader rd;
			rd = new BufferedReader(new InputStreamReader(url.openStream(), "UTF-8"));
			result = rd.readLine();
			if (conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
				rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			} else {
				rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
			}
			StringBuilder sb = new StringBuilder();
			String line;
			while ((line = rd.readLine()) != null) {
				sb.append(line);
				sb.append("\n");
			}
			rd.close();

			conn.disconnect();

			// CSV file 저장
			writer.write(sb.toString());
			System.out.println("sbData파일 생성.");

		}
		System.out.println("모든 생성 완료");

		writer.close();
		
//		"http://apis.data.go.kr/1471000/DrbEasyDrugInfoService/getDrbEasyDrugList?serviceKey=7g5vSz6O7oF1oyMa%2FdCiUUwmaRA10IlVnv0qa4qOrdUJmiHzR2eMi5upWITgkX2DM6F4FwiSn1mkFa9iVFBDcA%3D%3D&pageNo="
//		+ i
//		+ "&numOfRows=100&entpName=&itemName=&itemSeq=&efcyQesitm=&useMethodQesitm=&atpnWarnQesitm=&atpnQesitm=&intrcQesitm=&seQesitm=&depositMethodQesitm=&openDe=&updateDe=&type=json"

	}
}
