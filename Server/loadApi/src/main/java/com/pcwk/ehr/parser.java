package com.pcwk.ehr;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class Parser {
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
					String itemName = itemNameObj.getString("itemName");
					String enptName = itemNameObj.getString("entpName");

					System.out.println(itemName);
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
