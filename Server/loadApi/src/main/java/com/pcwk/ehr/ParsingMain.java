package com.pcwk.ehr;

import java.util.List;

public class ParsingMain {

	public static void main(String[] args) {

		ParserName parserName = new ParserName();
		parserName.parseDataDetail("C:\\JAVA0309\\FIVEGUYS\\Server\\loadApi\\sbNameData.csv", "대화이부");

//		ParserShape parserShape = new ParserShape();
//	    List<String> matchingItems = parserShape.parseDataDetailLine("C:\\JAVA0309\\FIVEGUYS\\Server\\loadApi\\sbShapeData.csv", "없음");
//	    for (String item : matchingItems) {
//	        System.out.println(item);
//	    }
	}

}
