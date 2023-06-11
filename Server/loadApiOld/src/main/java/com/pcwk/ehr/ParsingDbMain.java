package com.pcwk.ehr;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

public class ParsingDbMain {
    public static void main(String[] args) throws SQLException {
        String shape = "원형";		//모양	원형,타원형,삼각형...
        String color = "";			//색깔	하양,주황,노랑 ...
        String chart = "";			//제형	정제, 연질, 경질
        String front = "null";		//front , back은 동일한 것으로만 지정 -,- +,+ null,null
        String back = "null";
        String printFB = ""; 		//알약에 표시된 글자
        ParserDataToDb parserDataToDb = new ParserDataToDb();
        List<String> dataList = new ArrayList<>();
        dataList = parserDataToDb.parseDataFromDb(shape, color, chart, front, back, printFB);
        System.out.println(dataList);
    }
}
