package com.pcwk.ehr;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class parser {

	public static void main(String[] args) {
		BufferedReader br = null;
		try {
			br = new BufferedReader(new FileReader("C:\\JAVA0309\\PROJECT\\FIVEGUYS\\Server\\loadApi\\sbData.csv"));
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String str;
		try {
			while ((str = br.readLine()) != null) {
				JSONObject jsonObject = new JSONObject(str);
				JSONObject jsonObjectBody = jsonObject.getJSONObject("body");
				JSONArray jsonObjectBodyItems = jsonObjectBody.getJSONArray("items");
				JSONObject itemNameObj = jsonObjectBodyItems.getJSONObject(0);
				String itemName = itemNameObj.getString("itemName");
				String enptName = itemNameObj.getString("entpName");
				String depositMethodQesitm = itemNameObj.getString("depositMethodQesitm");
				String useMethodQesitm = itemNameObj.getString("useMethodQesitm");
				String atpnQesitm = itemNameObj.getString("atpnQesitm");
				String efcyQesitm = itemNameObj.getString("efcyQesitm");
				try {
					String itemImage = itemNameObj.getString("itemImage");
				} catch (JSONException e) {
					System.out.println("이미지가 없습니다.");
				}

				System.out.println(itemName);
				System.out.println(enptName);
				System.out.println(depositMethodQesitm);
				System.out.println(useMethodQesitm);
				System.out.println(atpnQesitm);
				System.out.println(efcyQesitm);

			}
		} catch (IOException e) {
			e.printStackTrace();
		}

		// JSON 파싱
//		JSONObject jsonObject = new JSONObject(result);

	}

}
