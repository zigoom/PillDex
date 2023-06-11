package com.pcwk.ehr;

public class PillVO {
	String ITEM_NAME                ;
	String ENTP_NAME                ;
	String EFCY_QESITM              ;
	String USE_METHOD_QESITM        ;
	String ATPN_QESITM              ;
	String DEPOSIT_METHOD_QESITM    ;
	String ITEM_IMAGE               ;
	public String getITEM_NAME() {
		return ITEM_NAME;
	}
	public void setITEM_NAME(String iTEM_NAME) {
		ITEM_NAME = iTEM_NAME;
	}
	public String getENTP_NAME() {
		return ENTP_NAME;
	}
	public void setENTP_NAME(String eNTP_NAME) {
		ENTP_NAME = eNTP_NAME;
	}
	public String getEFCY_QESITM() {
		return EFCY_QESITM;
	}
	public void setEFCY_QESITM(String eFCY_QESITM) {
		EFCY_QESITM = eFCY_QESITM;
	}
	public String getUSE_METHOD_QESITM() {
		return USE_METHOD_QESITM;
	}
	public void setUSE_METHOD_QESITM(String uSE_METHOD_QESITM) {
		USE_METHOD_QESITM = uSE_METHOD_QESITM;
	}
	public String getATPN_QESITM() {
		return ATPN_QESITM;
	}
	public void setATPN_QESITM(String aTPN_QESITM) {
		ATPN_QESITM = aTPN_QESITM;
	}
	public String getDEPOSIT_METHOD_QESITM() {
		return DEPOSIT_METHOD_QESITM;
	}
	public void setDEPOSIT_METHOD_QESITM(String dEPOSIT_METHOD_QESITM) {
		DEPOSIT_METHOD_QESITM = dEPOSIT_METHOD_QESITM;
	}
	public String getITEM_IMAGE() {
		return ITEM_IMAGE;
	}
	public void setITEM_IMAGE(String iTEM_IMAGE) {
		ITEM_IMAGE = iTEM_IMAGE;
	}
	@Override
	public String toString() {
		return "PillVO [ITEM_NAME=" + ITEM_NAME + ", ENTP_NAME=" + ENTP_NAME + ", EFCY_QESITM=" + EFCY_QESITM
				+ ", USE_METHOD_QESITM=" + USE_METHOD_QESITM + ", ATPN_QESITM=" + ATPN_QESITM
				+ ", DEPOSIT_METHOD_QESITM=" + DEPOSIT_METHOD_QESITM + ", ITEM_IMAGE=" + ITEM_IMAGE + "]";
	}
	
	
}
