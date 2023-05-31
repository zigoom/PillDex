package com.pcwk.ehr;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class ParserShape {
	public HashSet<String> parseData(String filePath, String shape, String color, String chart, String line) {
		HashSet<String> matchingItemsSet = new HashSet<>();

		try (BufferedReader br = new BufferedReader(new FileReader(filePath))) {
			String str;
			while ((str = br.readLine()) != null) {
				JSONObject jsonObject = new JSONObject(str);
				JSONObject jsonObjectBody = jsonObject.getJSONObject("body");
				JSONArray jsonObjectBodyItems = jsonObjectBody.getJSONArray("items");

				for (int i = 0; i < jsonObjectBodyItems.length(); i++) {
					JSONObject itemObj = jsonObjectBodyItems.getJSONObject(i);
					String itemName = itemObj.getString("ITEM_NAME");
					String drugShape = itemObj.getString("DRUG_SHAPE");
					String colorClass = itemObj.optString("COLOR_CLASS1", "null");
					String drugChart = itemObj.getString("CHART");
					String lineFront = itemObj.optString("LINE_FRONT", "null");
					String lineBack = itemObj.optString("LINE_BACK", "null");

					if (checkConditions(drugShape, colorClass, drugChart, lineFront, lineBack, shape, color, chart,
							line)) {
						matchingItemsSet.add(itemName);
					}
				}
			}
		} catch (IOException e) {
			e.printStackTrace();
		} catch (JSONException e) {
			e.printStackTrace();
		}

		return matchingItemsSet;
	}

	private boolean checkConditions(String drugShape, String colorClass, String drugChart, String lineFront,
			String lineBack, String shape, String color, String chart, String line) {
		if (!drugShape.equalsIgnoreCase(shape)) {
			return false;
		}

		if (!colorClass.equalsIgnoreCase(color)) {
			return false;
		}

		if (!drugChart.contains(chart)) {
			return false;
		}

		if (line.equals("분할선") && !(lineFront.equals("-") || lineBack.equals("-"))) {
			return false;
		}

		if (line.equals("십자분할선") && !(lineFront.equals("+") || lineBack.equals("+"))) {
			return false;
		}

		if (line.equals("없음") && !(lineFront.equals("null") || lineBack.equals("null"))) {
			return false;
		}

		return true;
	}

}
