package chap12;

public class GoodsInfo {
	String gcode = null;
	String title = null;
	String writer = null;
	int price = 0;
	
	public GoodsInfo(String gcode, String title, String writer, int price) {
		super();
		this.gcode = gcode;
		this.title = title;
		this.writer = writer;
		this.price = price;
	}
	
	public GoodsInfo() {

	}

	//getter
	public String getGcode() {
		return gcode;
	}

	public String getTitle() {
		return title;
	}

	public String getWriter() {
		return writer;
	}

	public int getPrice() {
		return price;
	}

	//setter
	public void setGcode(String gcode) {
		this.gcode = gcode;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public void setPrice(int price) {
		this.price = price;
	}
	
}
