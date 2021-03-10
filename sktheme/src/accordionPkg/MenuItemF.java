package accordionPkg;

import java.util.ArrayList;

public class MenuItemF {
	private int value;
	String caption;
	int pic;
	private ArrayList<MenuItemF> childs = new ArrayList<MenuItemF>();
	private ArrayList<Values> values = new ArrayList<Values>();

	public MenuItemF(int value, String caption, int pic) {
		this.setValue(value);
		this.caption = caption;
		this.pic = pic;
	}

	public void addChild(MenuItemF m) {
		getChilds().add(m);
	}

	public void Removevalue(Values m) {
		getChilds().remove(m);
	}

	public void addvalue(Values v) {
		getValues().add(v);
	}
	public void RemoveChild(MenuItemF m) {
		getValues().remove(m);
	}

	public ArrayList<MenuItemF> getChilds() {
		return childs;
	}

	public int getValue() {
		return value;
	}

	public void setValue(int value) {
		this.value = value;
	}

	public ArrayList<Values> getValues() {
		return values;
	}

	public void setChilds(ArrayList<MenuItemF> childs) {
		this.childs = childs;
	}

	public class Values {
		int value;
		public String caption;
		public Values(int value, String caption) {
			this.value = value;
			this.caption = caption;
		}
	}
}
