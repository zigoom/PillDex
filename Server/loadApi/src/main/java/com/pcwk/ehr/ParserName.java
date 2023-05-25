package com.pcwk.ehr;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class ParserName {
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
					JSONObject itemNameObj = jsonObjectBodyItems.getJSONObject(i);
					try {
						String itemName = itemNameObj.getString("itemName");
						String enptName = itemNameObj.getString("entpName");
						String efcyQesitm = itemNameObj.getString("efcyQesitm");
						String useMethodQesitm = itemNameObj.getString("useMethodQesitm");
						String atpnQesitm = itemNameObj.getString("atpnQesitm");
						String depositMethodQesitm = itemNameObj.getString("depositMethodQesitm");
						String itemImage = itemNameObj.optString("itemImage","이미지가 없습니다");
						System.out.println(itemName);
						System.out.println(enptName);
						System.out.println(efcyQesitm);
						System.out.println(useMethodQesitm);
						System.out.println(atpnQesitm);
						System.out.println(depositMethodQesitm);
						System.out.println(itemImage);
						

						System.out.println("------------------------");

					} catch (JSONException e) {
						e.printStackTrace();
					} 

				}
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
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
