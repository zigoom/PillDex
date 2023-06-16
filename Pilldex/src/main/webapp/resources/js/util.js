/**
 * 
 */
let eUtil = {}

// str이 비어잇으면 true
// 그렇지 않으면 false
eUtil.ISEmpty = function(str){
	if(null!=str || undefined !=str){
		str = str.toString();
		
		// (/ )슬러시+공백은 공백을 의미한다
		//공백 제거: "james "->"james"
		if(str.replace(/ /gi,"").length ==0){
			return true;
		}
	}
	return false;
}
