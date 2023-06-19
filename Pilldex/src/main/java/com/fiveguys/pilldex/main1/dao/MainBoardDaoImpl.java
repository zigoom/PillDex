package com.fiveguys.pilldex.main1.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;


import com.fiveguys.pilldex.domain.PillVO2;

@Repository
public class MainBoardDaoImpl implements Main1BoardDao {
	@Inject
	private SqlSessionTemplate sqlSessionTemplate ;
	private static String namespace = "mapper.main1-paging-mapper";
	
	@Override
	public List<PillVO2> list() throws Exception {
		return sqlSessionTemplate.selectList(namespace +".list");
	}
	
	//게시물 총 갯수
	@Override
	public int count() throws Exception {
		return sqlSessionTemplate.selectOne(namespace +".count");
	}
	
	@Override
	public List<PillVO2> listPage(int displayPost, int postNum) throws Exception {

	 HashMap<String,Integer> data = new HashMap<String,Integer>();
	  
	 data.put("displayPost", displayPost);
	 data.put("postNum", postNum);
	  
	 return sqlSessionTemplate.selectList(namespace + ".listPage", data);
	}

	@Override
	public List<PillVO2> listPageSearchBox(
			int displayPost, int postNum, String keyword,
			String keyword_print, String keyword_shape,
			String keyword_color, String keyword_chart, String keyword_line) throws Exception {
		 HashMap<String, Object> data = new HashMap<String, Object>();
		  
		  data.put("displayPost", displayPost);
		  data.put("postNum", postNum);
		  data.put("keyword", keyword);
		  data.put("keyword_print",keyword_print);
		  data.put("keyword_shape",keyword_shape);
		  data.put("keyword_color",keyword_color);
		  data.put("keyword_chart",keyword_chart);
		  data.put("keyword_line ",keyword_line );
		return sqlSessionTemplate.selectList(namespace + ".listPageSearchBox", data);
	}

	@Override
	public int searchCountBox(String keyword, String keyword_print, String keyword_shape,
			String keyword_color,
			String keyword_chart, String keyword_line) throws Exception {
		 	HashMap<String, Object> data = new HashMap<String, Object>();
		 	
		 	System.out.println("keyword:"+keyword);
		 	
		 	data.put("keyword", keyword);
		 	data.put("keyword_print",keyword_print);
		  data.put("keyword_shape",keyword_shape);
		  data.put("keyword_color",keyword_color);
		  data.put("keyword_chart",keyword_chart);
		  data.put("keyword_line ",keyword_line );
		
		  return sqlSessionTemplate.selectOne(namespace + ".searchCountBox", data);
	}

	
		 	
		 
	
}
