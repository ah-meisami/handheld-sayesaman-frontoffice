package org.sayesaman.tut1.sakhtemankala.behnam;
/*
import java.util.ArrayList;
import dataBase.Product;

public class CompareList {
	private ArrayList<Product> productlist = new ArrayList<Product>();
	private ArrayList<compListener> listeners = new ArrayList<compListener>();
	public CompareList() {
	}
	public void addListeners(compListener clistener) {
		listeners.add(clistener);
	}

	public void removeListeners(compListener clistener) {
		listeners.remove(clistener);
	}

	public boolean addProductlist(Product p) {
		for (int i = 0; i < productlist.size(); i++) {
			if (productlist.get(i).getProdID() == p.getProdID()) {
				return false;
			}
		}
		productlist.add(p);
		changed();
		return true;
	}
	public boolean hasProductInlist(Product p) {
		for (int i = 0; i < productlist.size(); i++) {
			if (productlist.get(i).getProdID() == p.getProdID()) {
				return true;
			}
		}
		return false;
	}
	public boolean removeProductlist(Product p) {
		for (int i = 0; i < productlist.size(); i++) {
			if (productlist.get(i).getProdID() == p.getProdID()) {
				productlist.remove(i);
				changed();
				return true;
			}
		}
		return false;
	}

	private void changed() {
		for (int i = 0; i < listeners.size(); i++) {
			listeners.get(i).cartchanged(this);
		}
	}

	public interface compListener {
		public void cartchanged(CompareList c);
	}

	public int getcount() {
		return productlist.size();
	}

	public Product getproduct(int i) {
		// TODO Auto-generated method stub
		return productlist.get(i);
	}
}
*/