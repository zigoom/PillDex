package com.pcwk.ehr;

public class ParsingMain {

	public static void main(String[] args) {
		
		//ParserName parserName = new ParserName();
		//parserName.parseData("C:\\JAVA0309\\PROJECT\\FIVEGUYS\\Server\\loadApi\\sbNameData.csv");
		
		ParserShape parserShape = new ParserShape();
		parserShape.parseData("C:\\JAVA0309\\PROJECT\\FIVEGUYS\\Server\\loadApi\\sbShapeData.csv");

	}

}
