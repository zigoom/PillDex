package com.pcwk.ehr;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class ParserShape {
	public void parseData(String filePath) {
		BufferedReader br = null;
		try {
			br = new BufferedReader(new FileReader(filePath));
			String str;
			while ((str = br.readLine()) != null) {
				JSONObject jsonObject = new JSONObject(str);
				JSONObject jsonObjectBody = jsonObject.getJSONObject("body");
				JSONArray jsonObjectBodyItems = jsonObjectBody.getJSONArray("items");
				for (int i = 0; i < jsonObjectBodyItems.length(); i++) {
					JSONObject itemObj = jsonObjectBodyItems.getJSONObject(i);
					String itemName = itemObj.getString("ITEM_NAME");
					String enptName = itemObj.getString("ENTP_NAME");
					String itemImage = itemObj.optString("ITEM_IMAGE", "이미지가 없습니다.");
					String chart = itemObj.getString("CHART");
					String printFront = itemObj.optString("PRINT_FRONT", "없습니다.");
					String printBack = itemObj.optString("PRINT_BACK", "없습니다.");
					String drugShape = itemObj.getString("DRUG_SHAPE");
					String colorClass = itemObj.getString("COLOR_CLASS1");

					System.out.println(itemName);
					System.out.println(enptName);
					System.out.println(itemImage);
					System.out.println(chart);
					System.out.println(printFront);
					System.out.println(printBack);
					System.out.println(drugShape);
					System.out.println(colorClass);

					System.out.println("------------------------");
				}
			}
		} catch (IOException e) {
			e.printStackTrace();
		} catch (JSONException e) {
			e.printStackTrace();
		} finally {
			if (br != null) {
				try {
					br.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}
}
