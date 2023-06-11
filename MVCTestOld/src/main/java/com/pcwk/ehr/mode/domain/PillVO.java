package com.pcwk.ehr.mode.domain;

public class PillVO {
	String itemName                ;
	String entpName                ;
	String efcyQesitm              ;
	String useMethodQesitm         ;
	String atpnQesitm              ;
	String depositMethodQesitm     ;
	String itemImage               ;
	String printFront			   ;
	String printBack			   ;
	String drugShape               ;
	String colorClass			   ;
	String chart			       ;
	String lineFront	  		   ;
	String lineBack				   ;
	
	public String getDrugShape() {
		return drugShape;
	}
	public void setDrugShape(String drugShape) {
		this.drugShape = drugShape;
	}
	public String getColorClass() {
		return colorClass;
	}
	public void setColorClass(String colorClass) {
		this.colorClass = colorClass;
	}
	public String getChart() {
		return chart;
	}
	public void setChart(String chart) {
		this.chart = chart;
	}
	public String getLineFront() {
		return lineFront;
	}
	public void setLineFront(String lineFront) {
		this.lineFront = lineFront;
	}
	public String getLineBack() {
		return lineBack;
	}
	public void setLineBack(String lineBack) {
		this.lineBack = lineBack;
	}
	public String getPrintFront() {
		return printFront;
	}
	public void setPrintFront(String printFront) {
		this.printFront = printFront;
	}
	public String getPrintBack() {
		return printBack;
	}
	public void setPrintBack(String printBack) {
		this.printBack = printBack;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public String getEntpName() {
		return entpName;
	}
	public void setEntpName(String entpName) {
		this.entpName = entpName;
	}
	public String getEfcyQesitm() {
		return efcyQesitm;
	}
	public void setEfcyQesitm(String efcyQesitm) {
		this.efcyQesitm = efcyQesitm;
	}
	public String getUseMethodQesitm() {
		return useMethodQesitm;
	}
	public void setUseMethodQesitm(String useMethodQesitm) {
		this.useMethodQesitm = useMethodQesitm;
	}
	public String getAtpnQesitm() {
		return atpnQesitm;
	}
	public void setAtpnQesitm(String atpnQesitm) {
		this.atpnQesitm = atpnQesitm;
	}
	public String getDepositMethodQesitm() {
		return depositMethodQesitm;
	}
	public void setDepositMethodQesitm(String depositMethodQesitm) {
		this.depositMethodQesitm = depositMethodQesitm;
	}
	public String getItemImage() {
		return itemImage;
	}
	public void setItemImage(String itemImage) {
		this.itemImage = itemImage;
	}
	@Override
	public String toString() {
		return "PillVO [itemName=" + itemName + ", entpName=" + entpName + ", efcyQesitm=" + efcyQesitm
				+ ", useMethodQesitm=" + useMethodQesitm + ", atpnQesitm=" + atpnQesitm + ", depositMethodQesitm="
				+ depositMethodQesitm + ", itemImage=" + itemImage + ", printFront=" + printFront + ", printBack="
				+ printBack + ", drugShape=" + drugShape + ", colorClass=" + colorClass + ", chart=" + chart
				+ ", lineFront=" + lineFront + ", lineBack=" + lineBack + "]";
	}
	
	
	
	
	
}
