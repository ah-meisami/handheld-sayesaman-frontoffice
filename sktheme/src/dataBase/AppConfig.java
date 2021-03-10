package dataBase;

import android.content.Context;

public final class AppConfig {
	public static int FontSize;
	public static String FontName;
	public static String AppName;
	public static String DBName = "test.db3";
	public static Context CurrentContext;
	public enum FontReshapMethod{
		StringNormal,
		StringReshap,
		NumberNormal,
		NumberReshap
    }	
	public AppConfig(){
		FontSize = 15;
		FontName = "tahoma.ttf";
		AppName = "SakhtemanKala";
	}	
}
