package com.pcwk.ehr;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

public class ParsingDbMain {
    public static void main(String[] args) throws SQLException {
        String shape = "";
        String color = "자주";
        String chart = "";
        String front = "";
        String back = "";
        String printFB = "";
        ParserDataToDb parserDataToDb = new ParserDataToDb();
        List<String> dataList = new ArrayList<>();
        dataList = parserDataToDb.parseDataFromDb(shape, color, chart, front, back, printFB);
        System.out.println(dataList);
    }
}
