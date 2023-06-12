package com.pcwk.ehr.mode.domain;

public class PillVO {
	private String itemName;
	private String entpName;
	private String efcyQesitm;
	private String useMethodQesitm;
	private String atpnQesitm;
	private String depositMethodQesitm;
	private String itemImage;
	private String drugShape;
	private String colorClass;
	private String lineFront;
	private String lineBack;
	private String printFront;
	private String printBack;
	private String chart;
	public PillVO() {
		super();
		this.chart = chart;
		this.itemName = itemName;
		this.entpName = entpName;
		this.efcyQesitm = efcyQesitm;
		this.useMethodQesitm = useMethodQesitm;
		this.atpnQesitm = atpnQesitm;
		this.depositMethodQesitm = depositMethodQesitm;
		this.itemImage = itemImage;
		this.drugShape = drugShape;
		this.colorClass = colorClass;
		this.lineFront = lineFront;
		this.lineBack = lineBack;
		this.printFront = printFront;
		this.printBack = printBack;
	}
	
	public String getChart() {
		return chart;
	}

	public void setChart(String chart) {
		this.chart = chart;
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

	@Override
	public String toString() {
		return "PillVO [itemName=" + itemName + ", entpName=" + entpName + ", efcyQesitm=" + efcyQesitm
				+ ", useMethodQesitm=" + useMethodQesitm + ", atpnQesitm=" + atpnQesitm + ", depositMethodQesitm="
				+ depositMethodQesitm + ", itemImage=" + itemImage + ", drugShape=" + drugShape + ", colorClass="
				+ colorClass + ", lineFront=" + lineFront + ", lineBack=" + lineBack + ", printFront=" + printFront
				+ ", printBack=" + printBack + ", chart=" + chart + "]";
	}
	

	

}
