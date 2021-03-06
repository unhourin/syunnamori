package com.tomato.syunnamori.DataProc;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import com.tomato.syunnamori.Entity.Creature;

/**
 * @author unhourin
 * @version 2020/06/099:52:00 
 * 時間チェックのコンポーネント
 */
public class TimeCheck {
	public List<List<Creature>> timeCheck(List<Creature> list, boolean isCheckHour) {
		// 戻り値を宣言する
		List<Creature> nData = new ArrayList<Creature>();
		List<Creature> sData = new ArrayList<Creature>();
		List<List<Creature>> resultList = new ArrayList<List<Creature>>();
		// 一行ずづに処理を行う
		for (Creature c : list) {
			// 北半球と南半球の出現月
			int nMonthZone = c.getTimeZone().getnMonth();
			int sMonthZone = c.getTimeZone().getsMonth();
			int timeZone = c.getTimeZone().getTimeZone();

			// 開始月、終了月、開始時間、終了時間を宣言し、
			// 値を付ける
			// 開始時間と月： 百を割って出た数字
			// 終了時間と月： 百を余って出た数字
			int nStartMonth = nMonthZone / 100;
			int nEndMonth = nMonthZone % 100;
			int sStartMonth = sMonthZone / 100;
			int sEndMonth = sMonthZone % 100;
			int startHour = timeZone / 100;
			int endHour = timeZone % 100;

			// isCheckHourがfalseの場合、ここに入れないです。
			// 時間判断
			if (isCheckHour == true) {
				if (isDuringThisDay(sStartMonth, sEndMonth, startHour, endHour)) {
					// 条件に合うデータを格納する
					sData.add(c);
				}
				if (isDuringThisDay(nStartMonth, nEndMonth, startHour, endHour)) {
					// 条件に合うデータを格納する
					nData.add(c);
				}
				continue;
			}

			// 月判断
			if (isDuringThisMonth(sStartMonth, sEndMonth)) {
				// 条件に合うデータを格納する
				sData.add(c);
			}
			if (isDuringThisMonth(nStartMonth, nEndMonth)) {
				// 条件に合うデータを格納する
				nData.add(c);
			}
		}

		// リターンのリストに格納する
		resultList.add(sData);
		resultList.add(nData);

		return resultList;
	}

	public Boolean isDuringThisMonth(int startMonth, int endMonth) {
		// カレンダーから今月を取得する
		Calendar calendar = Calendar.getInstance();
		int m = calendar.get(Calendar.MONTH) + 1;
		// 初期値：開始月
		for (int i = startMonth;i!=endMonth + 1; i++) {
			// 十二月に超えたら一月に戻る
			if (i > 12) {
				i = 1;
			}
			// 今月がiである場合
			// trueをリターン
			if (m == i) {
				return true;
			}
			// 終了条件：終了月まで
//			if (i == endMonth) {
//				break;
//			}
		}

		return false;
	}

	public Boolean isDuringThisDay(int startMonth, int endMonth, int startHour, int endHour) {
		// 月の判断が通らない場合falseをリターンする
		if (!isDuringThisMonth(startMonth, endMonth)) {
			return false;
		}
		// カレンダーから今の時間を取得する
		Calendar calendar = Calendar.getInstance();
		int h = calendar.get(Calendar.HOUR_OF_DAY);
		// 初期値：開始時間

		for (int i = startHour;; i++) {
			// 二十四時に超えたら一時に戻る
			if (i > 24) {
				i = 1;
			}
			// 今の時間がiである場合
			// trueをリターン
			if (h == i) {
				return true;
			}
			// 終了条件：終了時間まで
			if (i == endHour) {
				break;
			}
		}
		return false;
	}
}
