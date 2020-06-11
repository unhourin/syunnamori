package com.tomato.syunnamori.DataProc;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

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

			if (isCheckHour == true) {
				if (isDuringThisDay(sStartMonth, sEndMonth, startHour, endHour)) {
					sData.add(c);
				}
				if (isDuringThisDay(nStartMonth, nEndMonth, startHour, endHour)) {
					nData.add(c);
				}
				continue;
			}
			if (isDuringThisMonth(sStartMonth, sEndMonth)) {
				sData.add(c);
			}
			if (isDuringThisMonth(nStartMonth, nEndMonth)) {
				nData.add(c);
			}
		}
		resultList.add(sData);
		resultList.add(nData);
		return resultList;
	}

	public Boolean isDuringThisMonth(int startMonth, int endMonth) {
		Calendar calendar = Calendar.getInstance();
		int m = calendar.get(Calendar.MONTH) + 1;
		for (int i = startMonth; i != endMonth; i++) {

			if (i > 12) {
				i = 1;
			}
			if (m == i) {

				return true;
			}
		}
		return false;
	}

	public Boolean isDuringThisDay(int startMonth, int endMonth, int startHour, int endHour) {
		if (!isDuringThisMonth(startMonth, endMonth)) {
			return false;
		}
		Calendar calendar = Calendar.getInstance();
		int h = calendar.get(Calendar.HOUR_OF_DAY);
		for (int i = startHour; i != endHour; i++) {
			if (i > 24) {
				i = 1;
			}
			if (h == i) {
				return true;
			}
		}
		return false;
	}
}
