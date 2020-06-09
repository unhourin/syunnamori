package com.tomato.syunnamori.DataProc;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.tomato.syunnamori.Entity.Creature;

/**
 * @author unhourin
 * @version 2020/06/099:52:00 クラス説明
 */
public class TimeCheck {
	public List<List<Creature>> timeCheck(List<Creature> list, boolean isCheckHour) {
		List<Creature> nData = new ArrayList<Creature>();
		List<Creature> sData = new ArrayList<Creature>();
		List<List<Creature>> resultList = new ArrayList<List<Creature>>();
		for (Creature c : list) {

			int nMonthZone = c.getTimeZone().getnMonth();
			int sMonthZone = c.getTimeZone().getsMonth();
			int timeZone = c.getTimeZone().getTimeZone();

			int nStartMonth = nMonthZone / 100;
			int nEndMonth = nMonthZone % 100;
			int sStartMonth = sMonthZone / 100;
			int sEndMonth = sMonthZone % 100;
			int startHour = timeZone / 100;
			int endHour = timeZone % 100;
			
			if(isCheckHour == true) {
				if(isDuringThisDay(sStartMonth, sEndMonth,startHour,endHour)) {
					sData.add(c);
				}
				if(isDuringThisDay(nStartMonth, nEndMonth,startHour,endHour)) {
					nData.add(c);
				}
				break;
			}
			if(isDuringThisMonth(sStartMonth, sEndMonth)) {
				sData.add(c);
			}
			if(isDuringThisMonth(nStartMonth, nEndMonth)) {
				nData.add(c);
			}
		}
		resultList.add(sData);
		resultList.add(nData);
		return resultList;
	}

	public Boolean isDuringThisMonth(int startMonth, int endMonth) {
		Date nowDate = new Date();
		int thisYear = nowDate.getYear();
		Date startDate = new Date(thisYear, startMonth - 1, 1);
		Date endDate = new Date(thisYear, endMonth - 1, 1);
		if (startMonth > endMonth) {
			endDate = new Date(thisYear + 1, endMonth - 1, 1);
		}
		int i=1;
		
		System.out.println(i++);
		System.out.println(startDate);
		System.out.println(nowDate);
		
		System.out.println(endDate);

		if (nowDate.after(startDate) && nowDate.before(endDate)) {
			return true;
		} else {
			return false;
		}
	}

	public Boolean isDuringThisDay(int startMonth, int endMonth, int startHour, int endHour) {
		Date nowDate = new Date();
		int thisYear = nowDate.getYear();
		if (startMonth > endMonth) {

		}
		return null;
	}
}
