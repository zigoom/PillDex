package com.pcwk.ehr;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class ParsingMain {
    public static void main(String[] args) {
        String ShapeFilePath = "C:\\JSPA_0309\\FIVEGUYS\\Server\\loadApi\\sbShapeData.csv";  // 데이터 파일의 경로로 설정해야 합니다.
        String shape = "원형";  // 원하는 모양 설정
        String color = "연두";  // 원하는 색상 설정
        String chart = "정제";  // 원하는 제형 설정
        String line = "없음";  // 원하는 분할선 설정
        String NameFilePath = "C:\\JSPA_0309\\FIVEGUYS\\Server\\loadApi\\sbNameData.csv";

        
        ParserShape parserShape = new ParserShape();
        Set<String> matchingItems = parserShape.parseData(ShapeFilePath, shape, color, chart, line);
        
        ParserName parserName = new ParserName();
        for (String item : matchingItems) {
          parserName.parseDataDetail(NameFilePath, item);
        }

    }
}
