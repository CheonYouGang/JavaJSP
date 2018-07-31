package chap07;

import java.util.GregorianCalendar;

public class MyDate {
	
	public static String printDate() {
		
		GregorianCalendar now = new GregorianCalendar();
		String nowDate = String.format("%TF %TT", now, now);
	
		return nowDate;
	}
	
//	public static void main(String args[]){
//		
//		String date = MyDate.printDate();
//		System.out.println(date);
//	}
}