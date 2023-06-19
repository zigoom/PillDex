package com.fiveguys.pilldex.domain;


public class main1page {
	// 현재 페이지 번호
	private int num;
	
	// 게시물 총 갯수
	private int count;

	// 한 페이지에 출력할 게시물 갯수
	private int postNum = 6;

	// 하단 페이징 번호 ([ 게시물 총 갯수 ÷ 한 페이지에 출력할 갯수 ]의 올림)
	private int pageNum;

	// 출력할 게시물
	private int displayPost;

	// 한번에 표시할 페이징 번호의 갯수
	private int pageNumCnt = 5;

	// 표시되는 페이지 번호 중 마지막 번호
	private int endPageNum;

	// 표시되는 페이지 번호 중 첫번째 번호
	private int startPageNum;

	// 다음/이전 표시 여부
	private boolean prev;
	private boolean next;
	
	public void setNum(int num) {
	 this.num = num;
	}


	public int getPostNum() {
	 return postNum;
	}
	
	
	
	public int getPageNum() {
	 return pageNum;
	}

	public int getDisplayPost() {
	 return displayPost;
	}

	public int getPageNumCnt() {
	 return pageNumCnt;
	}

	public int getEndPageNum() {
	 return endPageNum;
	}

	public int getStartPageNum() {
	 return startPageNum;
	}

	public boolean getPrev() {
	 return prev;
	} 

	public boolean getNext() {
	 return next;
	}
	

	public void setCount(int count) {
	 this.count = count;
	 dataCalc();
	}
	
	public int getCount() {
		 return count;
		}
	
	private void dataCalc() {
	
		 endPageNum = (int)(Math.ceil((double)num / (double)pageNumCnt) * pageNumCnt);
		 
		 // 시작 번호
		 startPageNum = endPageNum - (pageNumCnt - 1);
		 
		 // 마지막 번호 재계산
		 int endPageNum_tmp = (int)(Math.ceil((double)count / (double)postNum));
		 
		 if(endPageNum > endPageNum_tmp) {
		  endPageNum = endPageNum_tmp;
		 }
		 
		 prev = startPageNum == 1 ? false : true;
		 next = endPageNum * postNum >= count ? false : true;
		 
		 displayPost = ((num - 1) * postNum)+1;
		 
		}

	
	public String getSearchTypeKeywordBox() {
		 
		 if( 	 keyword.equals("") ||
				 keyword_print.equals("") ||
				 keyword_shape.equals("") ||
				 keyword_color.equals("") ||
				 keyword_chart.equals("") ||
				 keyword_line .equals("")) {
		  return ""; 
		 } else {
		  return   "&keyword=" + keyword
				 + "&keyword_print=" + keyword_print
                 + "&keyword_shape=" + keyword_shape
                 + "&keyword_color=" + keyword_color
                 + "&keyword_chart=" + keyword_chart
                 + "&keyword_line =" + keyword_line;
		 	}	
		}
		private String keyword; 	
		private String keyword_print;
        private String keyword_shape;
        private String keyword_color;
        private String keyword_chart;
        private String keyword_line;
        
		
		public void setKeyword(String keyword) {
		 this.keyword = keyword;  
		} 

		public String getKeyword() {
		 return keyword;
		}
		public String getKeyword_print() {
			return keyword_print;
		}

		public void setKeyword_print(String keyword_print) {
			this.keyword_print = keyword_print;
		}

		public String getKeyword_shape() {
			return keyword_shape;
		}

		public void setKeyword_shape(String keyword_shape) {
			this.keyword_shape = keyword_shape;
		}

		public String getKeyword_color() {
			return keyword_color;
		}

		public void setKeyword_color(String keyword_color) {
			this.keyword_color = keyword_color;
		}

		public String getKeyword_chart() {
			return keyword_chart;
		}

		public void setKeyword_chart(String keyword_chart) {
			this.keyword_chart = keyword_chart;
		}

		public String getKeyword_line() {
			return keyword_line;
		}

		public void setKeyword_line(String keyword_line) {
			this.keyword_line = keyword_line;
		}
}

