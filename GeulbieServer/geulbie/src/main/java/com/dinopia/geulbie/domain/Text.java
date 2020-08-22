package com.dinopia.geulbie.domain;

public class Text {
	private int textIndex;
	private String textTitle;
	private int writerIndex;
	private int seriesIndex;
	private String sampleText;
	private int textPrice;
	private String textContent;
	private int categoryIndex;
		
	public Text() {}

	public Text(int textIndex, String textTitle, int writerIndex, int seriesIndex, String sampleText, int textPrice,
			String textContent, int categoryIndex) {
		this.textIndex = textIndex;
		this.textTitle = textTitle;
		this.writerIndex = writerIndex;
		this.seriesIndex = seriesIndex;
		this.sampleText = sampleText;
		this.textPrice = textPrice;
		this.textContent = textContent;
		this.categoryIndex = categoryIndex;
	}

	public int getTextIndex() {
		return textIndex;
	}


	public void setTextIndex(int textIndex) {
		this.textIndex = textIndex;
	}



	public String getTextTitle() {
		return textTitle;
	}



	public void setTextTitle(String textTitle) {
		this.textTitle = textTitle;
	}



	public int getWriterIndex() {
		return writerIndex;
	}



	public void setWriterIndex(int writerIndex) {
		this.writerIndex = writerIndex;
	}



	public int getSeriesIndex() {
		return seriesIndex;
	}



	public void setSeriesIndex(int seriesIndex) {
		this.seriesIndex = seriesIndex;
	}



	public String getSampleText() {
		return sampleText;
	}



	public void setSampleText(String sampleText) {
		this.sampleText = sampleText;
	}



	public int getTextPrice() {
		return textPrice;
	}



	public void setTextPrice(int textPrice) {
		this.textPrice = textPrice;
	}



	public String getTextContent() {
		return textContent;
	}



	public void setTextContent(String textContent) {
		this.textContent = textContent;
	}



	public int getCategoryIndex() {
		return categoryIndex;
	}



	public void setCategoryIndex(int categoryIndex) {
		this.categoryIndex = categoryIndex;
	}



	@Override
	public String toString() {
		return "Text [textIndex=" + textIndex + ", textTitle=" + textTitle + ", writerIndex=" + writerIndex
				+ ", seriesIndex=" + seriesIndex + ", sampleText=" + sampleText + ", textPrice=" + textPrice
				+ ", textContent=" + textContent + ", categoryIndex=" + categoryIndex + "]";
	}
	
}
