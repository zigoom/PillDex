package com.fiveguys.pilldex.domain;

public class PillVO {
	private String item_name;
	private String drug_shape;
	private String color_class1;
	private String chart;
	private String line_front;
	private String line_back;
	private String print_front;
	private String print_back;
	public String getItem_name() {
		return item_name;
	}
	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}
	public String getDrug_shape() {
		return drug_shape;
	}
	public void setDrug_shape(String drug_shape) {
		this.drug_shape = drug_shape;
	}
	public String getColor_class1() {
		return color_class1;
	}
	public void setColor_class1(String color_class1) {
		this.color_class1 = color_class1;
	}
	public String getChart() {
		return chart;
	}
	public void setChart(String chart) {
		this.chart = chart;
	}
	public String getLine_front() {
		return line_front;
	}
	public void setLine_front(String line_front) {
		this.line_front = line_front;
	}
	public String getLine_back() {
		return line_back;
	}
	public void setLine_back(String line_back) {
		this.line_back = line_back;
	}
	public String getPrint_front() {
		return print_front;
	}
	public void setPrint_front(String print_front) {
		this.print_front = print_front;
	}
	public String getPrint_back() {
		return print_back;
	}
	public void setPrint_back(String print_back) {
		this.print_back = print_back;
	}
	
	@Override
	public String toString() {
		return "PillVO [item_name=" + item_name + ", drug_shape=" + drug_shape + ", color_class1=" + color_class1
				+ ", chart=" + chart + ", line_front=" + line_front + ", line_back=" + line_back + ", print_front="
				+ print_front + ", print_back=" + print_back + "]";
	}
	
	
}
