package com.pcwk.ehr;

import java.util.List;
import java.util.Set;

public class ParsingMain {
    public static void main(String[] args) {
        String filePath = "C:\\JAVA0309\\FIVEGUYS\\Server\\loadApi\\sbShapeData.csv";  // 데이터 파일의 경로로 설정해야 합니다.
        String shape = "원형";  // 원하는 모양 설정
        String color = "하양";  // 원하는 색상 설정
        String chart = "정제";  // 원하는 제형 설정
        String line = "분할선";  // 원하는 분할선 설정

        ParserShape parser = new ParserShape();
        Set<String> matchingItems = parser.parseData(filePath, shape, color, chart, line);

        for (String item : matchingItems) {
            System.out.println(item);
        }
    }
}
