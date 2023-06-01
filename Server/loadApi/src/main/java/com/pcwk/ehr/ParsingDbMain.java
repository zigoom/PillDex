package com.pcwk.ehr;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

public class ParsingDbMain {
    public static void main(String[] args) throws SQLException {
        String shape = "원형";
        String color = "하양";
        String chart = "정제";
        String front = "-";
        String back = "-";
        ParserDataToDb parserDataToDb = new ParserDataToDb();
        List<String> dataList = new ArrayList<>();
        dataList = parserDataToDb.parseDataFromDb(shape, color, chart, front, back);
        System.out.println(dataList);
    }
}
