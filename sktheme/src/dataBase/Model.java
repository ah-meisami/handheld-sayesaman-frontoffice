package dataBase;

import java.util.ArrayList;
import java.util.Collections;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import dataBase.DBUtil.LimitTail;
import dataBase.DBUtil.LimitType;
import dataBase.DBUtil.SortType;
import dataBase.DBUtil.TblFields;

public abstract class Model {

	public void load() {
	}

	public void save() {
	}

	public void update(Boolean checkNullFields) {
	}

	public void delete() {
	}

	public ArrayList<?> getAll(ArrayList<TblFields> fields,
			ArrayList<Limit> limits, String limitNum, ArrayList<Sort> sorts) {
		return null;
	}

	public String gueryBuilder(ArrayList<TblFields> fields,
			ArrayList<Limit> limits, String limitNum, String mTableName,
			ArrayList<Sort> sorts) {
		Collections.sort(limits);
		// set which fields i need
		String fieldsQuery = "";
		if (fields != null) {
			for (TblFields field : fields) {	
				fieldsQuery += "[" + field.name() + "]";
				if (field != fields.get(fields.size() - 1)) {
					fieldsQuery += ",";
				}
			}
		}else{
			fieldsQuery = "*";
		}
		// set filter to query
		String selectQuery = "SELECT " + fieldsQuery + " FROM " + mTableName;
		if (limits != null) {
			selectQuery += " where ";
			boolean passOR = false;
			if(limits.get(0).getLimitTail() == LimitTail.OR && limits.size()>1){
				selectQuery += "(";
				passOR = true;
			}
			for (Limit limit : limits) {
				if (!limit.equals(limits.get(0))) {
					if (limit.getLimitTail() == LimitTail.AND) {		
						if(passOR){
							selectQuery += ")";
						    passOR = !passOR;
						}
						selectQuery += " " + limit.getLimitTail().name();						
					} else if (limit.getLimitTail() == LimitTail.OR) {
						selectQuery += " " + limit.getLimitTail().name();
					}
				}
				if (limit.getLimitType() == LimitType.ItIs) {
					selectQuery += " " + limit.getLimitField().name() + " = "
							+ limit.getLimitValue();
				} else if (limit.getLimitType() == LimitType.ItIsNot) {
					selectQuery += " " + limit.getLimitField().name() + " != "
							+ limit.getLimitValue();
				} else if (limit.getLimitType() == LimitType.HeadLike) {
					selectQuery += " " + limit.getLimitField().name()
							+ " LIKE '" + limit.getLimitValue() + "%'";
				} else if (limit.getLimitType() == LimitType.TailLike) {
					selectQuery += " " + limit.getLimitField().name()
							+ " LIKE '%" + limit.getLimitValue() + "'";
				} else if (limit.getLimitType() == LimitType.Like) {
					selectQuery += " " + limit.getLimitField().name()
							+ " LIKE '%" + limit.getLimitValue() + "%'";
				} else if (limit.getLimitType() == LimitType.UnLike) {
					selectQuery += " " + limit.getLimitField().name()
							+ " NOT LIKE '%" + limit.getLimitValue() + "%'";
				}
			}
			if(passOR){
				selectQuery+=")";
				passOR=!passOR;
			}
		}
		if (sorts != null) {
			selectQuery += " Order By ";
			for (Sort sort : sorts) {
				if (sort.getSortType() == SortType.Asc) {
					selectQuery += " " + sort.getSortField().name()
							+" "+ sort.getSortType();
				} else if (sort.getSortType() == SortType.Desc) {
					selectQuery += " " + sort.getSortType().name()
							+" "+ sort.getSortType();
				}
				if (!sort.equals(sorts.get(sorts.size() - 1))) {
					selectQuery += ",";
				}
			}
		}
		// set number of rows limit
		if (limitNum != null)
			selectQuery += limitNum;
		selectQuery += ";";

		return selectQuery;
	}

	public int Count(TblFields field, String mTableName, ArrayList<Limit> limits) {
		int count = 0;
		String selectQuery = "SELECT Count() FROM " + mTableName;
		if (field != null) {		
			selectQuery = "SELECT Count(" + field.name() + ") FROM " + mTableName;
			if (limits != null) {
				selectQuery += " where ";
				for (Limit limit : limits) {
					if (!limit.equals(limits.get(0))) {
						if (limit.getLimitTail() == LimitTail.AND) {
							selectQuery += " " + limit.getLimitTail().name();
						} else if (limit.getLimitTail() == LimitTail.OR) {
							selectQuery += " " + limit.getLimitTail().name();
						}
					}
					if (limit.getLimitType() == LimitType.ItIs) {
						selectQuery += " " + limit.getLimitField().name()
								+ " = " + limit.getLimitValue();
					} else if (limit.getLimitType() == LimitType.ItIsNot) {
						selectQuery += " " + limit.getLimitField().name()
								+ " != " + limit.getLimitValue();
					} else if (limit.getLimitType() == LimitType.HeadLike) {
						selectQuery += " " + limit.getLimitField().name()
								+ " LIKE '" + limit.getLimitValue() + "%'";
					} else if (limit.getLimitType() == LimitType.TailLike) {
						selectQuery += " " + limit.getLimitField().name()
								+ " LIKE '%" + limit.getLimitValue() + "'";
					} else if (limit.getLimitType() == LimitType.Like) {
						selectQuery += " " + limit.getLimitField().name()
								+ " LIKE '%" + limit.getLimitValue() + "%'";
					} else if (limit.getLimitType() == LimitType.UnLike) {
						selectQuery += " " + limit.getLimitField().name()
								+ " NOT LIKE '%" + limit.getLimitValue() + "%'";
					}
				}
			}
		}
		Cursor c = null;
		try {
			c = DataSourceTools.findAllObject(selectQuery);
			if (c.moveToFirst()) {
				count = c.getInt(c.getColumnIndex("Count(" + field.name() + ")"));
			}
		} catch (Exception e) {
		}
		return count;
	}
	public synchronized void close(SQLiteDatabase db){
		if (db != null && db.isOpen()) {
			try{
			    db.close();
			}catch(Exception ex){};
		}
	}
	public synchronized void close(Cursor c){
		if (c != null) {
			try{
			    c.close();
			}catch(Exception ex){};
		}
	}
}
