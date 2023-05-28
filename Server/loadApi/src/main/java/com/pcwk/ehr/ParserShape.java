package com.pcwk.ehr;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

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

	public List<String> parseDataDetailShape(String filePath, String item) {
		List<String> matchingItems = new ArrayList<>();
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
					String drugShape = itemObj.getString("DRUG_SHAPE");

					switch (drugShape) {
					case "원형":
						if (item.equals("원형")) {
							matchingItems.add(itemName);
						}
						break;
					case "타원형":
						if (item.equals("타원형")) {
							matchingItems.add(itemName);
						}
						break;
					case "장방형":
						if (item.equals("장방형")) {
							matchingItems.add(itemName);
						}
						break;
					case "반원형":
						if (item.equals("반원형")) {
							matchingItems.add(itemName);
						}
						break;
					case "삼각형":
						if (item.equals("삼각형")) {
							matchingItems.add(itemName);
						}
						break;
					case "사각형":
						if (item.equals("사각형")) {
							matchingItems.add(itemName);
						}
						break;
					case "오각형":
						if (item.equals("오각형")) {
							matchingItems.add(itemName);
						}
						break;
					case "육각형":
						if (item.equals("육각형")) {
							matchingItems.add(itemName);
						}
						break;
					case "팔각형":
						if (item.equals("팔각형")) {
							matchingItems.add(itemName);
						}
						break;
					default:
						break;
					}
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
		return matchingItems;
	}

	public List<String> parseDataDetailColor(String filePath, String item) {
		List<String> matchingItems = new ArrayList<>();
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
					String colorClass = itemObj.getString("COLOR_CLASS1");
					switch (colorClass) {
					case "하양":
						if (item.equals("하양")) {
							matchingItems.add(itemName);
						}
						break;
					case "노랑":
						if (item.equals("노랑")) {
							matchingItems.add(itemName);
						}
						break;
					case "주황":
						if (item.equals("주황")) {
							matchingItems.add(itemName);
						}
						break;
					case "분홍":
						if (item.equals("분홍")) {
							matchingItems.add(itemName);
						}
						break;
					case "빨강":
						if (item.equals("빨강")) {
							matchingItems.add(itemName);
						}
						break;
					case "갈색":
						if (item.equals("갈색")) {
							matchingItems.add(itemName);
						}
						break;
					case "연두":
						if (item.equals("연두")) {
							matchingItems.add(itemName);
						}
						break;
					case "초록":
						if (item.equals("초록")) {
							matchingItems.add(itemName);
						}
						break;
					case "청록":
						if (item.equals("청록")) {
							matchingItems.add(itemName);
						}
						break;
					case "파랑":
						if (item.equals("파랑")) {
							matchingItems.add(itemName);
						}
						break;
					case "남색":
						if (item.equals("남색")) {
							matchingItems.add(itemName);
						}
						break;
					case "자주":
						if (item.equals("자주")) {
							matchingItems.add(itemName);
						}
						break;
					case "보라":
						if (item.equals("보라")) {
							matchingItems.add(itemName);
						}
						break;
					case "회색":
						if (item.equals("회색")) {
							matchingItems.add(itemName);
						}
						break;
					case "검정":
						if (item.equals("검정")) {
							matchingItems.add(itemName);
						}
						break;
					case "투명":
						if (item.equals("투명")) {
							matchingItems.add(itemName);
						}
						break;
					default:
						break;
					}
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
		return matchingItems;
	}

	public List<String> parseDataDetailChart(String filePath, String item) {
		List<String> matchingItems = new ArrayList<>();
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
					String chart = itemObj.getString("CHART");
					if (chart.contains("정제") && item.equals("정제")) {
						matchingItems.add(itemName);
					} else if (chart.contains("경질") && item.equals("경질")) {
						matchingItems.add(itemName);
					} else if (chart.contains("연질") && item.equals("연질")) {
						matchingItems.add(itemName);
					}
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
		return matchingItems;
	}

	public List<String> parseDataDetailLine(String filePath, String item) {
		List<String> matchingItems = new ArrayList<>();
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
					String lineFront = itemObj.optString("LINE_FRONT", "null");
					if (lineFront.equals("-") && item.equals("분할선")) {
						matchingItems.add(itemName);
					} else if (lineFront.equals("+") && item.equals("십자분할선")) {
						matchingItems.add(itemName);
					} else if (lineFront.equals("null") && item.equals("없음")) {
						matchingItems.add(itemName);
					}

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
		return matchingItems;
	}

}
