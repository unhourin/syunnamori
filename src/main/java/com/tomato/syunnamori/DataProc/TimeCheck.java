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
		// 今の時間をdateで取る
		Date nowDate = new Date();
		// 年を取る
		int thisYear = nowDate.getYear();
		// startMonth,endMonthを作成
		Date startDate = new Date(thisYear, startMonth - 1, 1);
		Date endDate = new Date(thisYear, endMonth - 1, 1);
		// startMonthがendMonthより多き場合
		if (startMonth > endMonth) {
			endDate = new Date(thisYear + 1, endMonth - 1, 1);
		}
		// 今の時間を比べる
		if (nowDate.after(startDate) && nowDate.before(endDate)) {

			return true;
		} else {
			return false;
		}
	}

	public Boolean isDuringThisDay(int startMonth, int endMonth, int startHour, int endHour) {
		if (!isDuringThisMonth(startMonth, endMonth)) {
			return false;
		}
		Date nowDate = new Date();
		// 年を取る
		int thisYear = nowDate.getYear();
		int thisMonth = nowDate.getMonth() + 1;
		int thisDay = nowDate.getDate();
		System.out.println(thisDay);
		// startMonth,endMonthを作成
		Date startDate = new Date(thisYear, thisMonth - 1, thisDay, startHour, 0);
		Date endDate = new Date(thisYear, thisMonth - 1, thisDay, endHour, 0);
		if (startHour > endHour) {
			endDate = new Date(thisYear, thisMonth - 1, thisDay + 1, endHour, 0);
		}
		System.out.println(startDate);
		System.out.println(nowDate);
		System.out.println(endDate);
		if (nowDate.after(startDate) && nowDate.before(endDate)) {

			System.out.println(true);
			return true;
		} else {
			System.out.println(false);
			return false;
		}
	}
}
