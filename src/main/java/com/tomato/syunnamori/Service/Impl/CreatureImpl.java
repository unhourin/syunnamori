package com.tomato.syunnamori.Service.Impl;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tomato.syunnamori.Dao.CreatureDao;
import com.tomato.syunnamori.Dto.AjaxResult;
import com.tomato.syunnamori.Entity.Creature;
import com.tomato.syunnamori.Service.CreatureService;

@Service
public class CreatureImpl implements CreatureService {

	@Autowired
	private CreatureDao dao;

	@Override
	public AjaxResult queryByNowTime() {

		Calendar nowCalendar = Calendar.getInstance();
		int thisMonth = nowCalendar.get(Calendar.MONTH) + 1;
		int thisHour = nowCalendar.get(Calendar.HOUR_OF_DAY);

		List<Creature> sList = dao.queryAll();
		List<Creature> nList = sList;
		ArrayList<Creature> msgSList = new ArrayList<Creature>();
		ArrayList<Creature> msgNList = new ArrayList<Creature>();
		if (sList != null && !sList.isEmpty()) {
			for (int i = 0; i < sList.size(); i++) {

				String strSSet = "南：";
				String sTime = sList.get(i).getS_time();
				String[] strSTime = sTime.split(" ");
				String[] tmpSTime = null;
				boolean sAddFlg = false;
				for (int j = 0; j < strSTime.length; j++) {
					tmpSTime = strSTime[j].split(",");
					int startMonth = Integer.valueOf(tmpSTime[0]);
					int endMonth = Integer.valueOf(tmpSTime[1]);
					int startHour = Integer.valueOf(tmpSTime[2]);
					int endHour = Integer.valueOf(tmpSTime[3]);
					strSSet += startMonth + "月~" + endMonth + "月（" + startHour + "時~" + endHour + "時）";
					if (startMonth <= endMonth) {
						if (thisMonth >= startMonth && thisMonth <= endMonth) {
							if (startHour < endHour) {
								if (thisHour >= startHour && thisHour <= endHour) {
									sList.get(i).setTime_dif(endHour - thisHour);
									sAddFlg = true;
								}
							} else {
								if (thisHour >= startHour || thisHour <= endHour) {
									sList.get(i).setTime_dif(12 + endHour - thisHour);
									sAddFlg = true;
								}
							}
						}
					} else {
						if (thisMonth >= startMonth || thisMonth <= endMonth) {
							if (startHour < endHour) {
								if (thisHour >= startHour && thisHour <= endHour) {
									sList.get(i).setTime_dif(endHour - thisHour);
									sAddFlg = true;
								}
							} else {
								if (thisHour >= startHour || thisHour <= endHour) {
									sList.get(i).setTime_dif(12 + endHour - thisHour);
									sAddFlg = true;
								}
							}
						}
					}
				}
				sList.get(i).setS_time(strSSet);
				if (sAddFlg == true) {
					msgSList.add(sList.get(i));
				}

				// 北
				String strNSet = "北：";
				String nTime = nList.get(i).getN_time();
				String[] strNTime = nTime.split(" ");
				String[] tmpNTime = null;
				boolean nAddFlg = false;
				for (int j = 0; j < strNTime.length; j++) {
					tmpNTime = strNTime[j].split(",");
					int startMonth = Integer.valueOf(tmpNTime[0]);
					int endMonth = Integer.valueOf(tmpNTime[1]);
					int startHour = Integer.valueOf(tmpNTime[2]);
					int endHour = Integer.valueOf(tmpNTime[3]);
					strNSet += startMonth + "月~" + endMonth + "月（" + startHour + "時~" + endHour + "時）";
					if (startMonth <= endMonth) {
						if (thisMonth >= startMonth && thisMonth <= endMonth) {
							if (startHour < endHour) {
								if (thisHour >= startHour && thisHour <= endHour) {
									nList.get(i).setTime_dif(endHour - thisHour);
									nAddFlg = true;
								}
							} else {
								if (thisHour >= startHour || thisHour <= endHour) {
									nList.get(i).setTime_dif(12 + endHour - thisHour);
									nAddFlg = true;
								}
							}
						}
					} else {
						if (thisMonth >= startMonth || thisMonth <= endMonth) {
							if (startHour < endHour) {
								if (thisHour >= startHour && thisHour <= endHour) {
									nList.get(i).setTime_dif(endHour - thisHour);
									nAddFlg = true;
								}
							} else {
								if (thisHour >= startHour || thisHour <= endHour) {
									nList.get(i).setTime_dif(12 + endHour - thisHour);
									nAddFlg = true;
								}
							}
						}
					}
				}
				nList.get(i).setN_time(strNSet);
				if (nAddFlg == true) {
					msgNList.add(nList.get(i));
				}
			}
			sList.sort(Comparator.comparing(Creature::getTime_dif));
			nList.sort(Comparator.comparing(Creature::getTime_dif));
		
			return new AjaxResult(1, "SUCCESS", msgNList, msgSList);
		} else {
			return new AjaxResult(0, "NULL");
		}
	}

	@Override
	public AjaxResult queryByThisMonth() {
		Calendar nowCalendar = Calendar.getInstance();
		int thisMonth = nowCalendar.get(Calendar.MONTH) + 1;
		List<Creature> sList = dao.queryAll();
		List<Creature> nList = sList;
		ArrayList<Creature> msgSList = new ArrayList<Creature>();
		ArrayList<Creature> msgNList = new ArrayList<Creature>();
		if (sList != null && !sList.isEmpty()) {
			for (int i = 0; i < sList.size(); i++) {

				String strSSet = "南：";
				String sTime = sList.get(i).getS_time();
				String[] strSTime = sTime.split(" ");
				String[] tmpSTime = null;
				boolean sAddFlg = false;
				for (int j = 0; j < strSTime.length; j++) {
					tmpSTime = strSTime[j].split(",");
					int startMonth = Integer.valueOf(tmpSTime[0]);
					int endMonth = Integer.valueOf(tmpSTime[1]);
					int startHour = Integer.valueOf(tmpSTime[2]);
					int endHour = Integer.valueOf(tmpSTime[3]);
					strSSet += startMonth + "月~" + endMonth + "月（" + startHour + "時~" + endHour + "時）";
					if (startMonth <= endMonth) {
						if (thisMonth >= startMonth && thisMonth <= endMonth) {
							sAddFlg = true;
						}
					} else {
						if (thisMonth >= startMonth || thisMonth <= endMonth) {
							sAddFlg = true;
						}
					}
				}
				sList.get(i).setS_time(strSSet);
				if (sAddFlg == true) {
					msgSList.add(sList.get(i));
				}

				// 北
				String strNSet = "北：";
				String nTime = nList.get(i).getN_time();
				String[] strNTime = nTime.split(" ");
				String[] tmpNTime = null;
				boolean nAddFlg = false;
				for (int j = 0; j < strNTime.length; j++) {
					tmpNTime = strNTime[j].split(",");
					int startMonth = Integer.valueOf(tmpNTime[0]);
					int endMonth = Integer.valueOf(tmpNTime[1]);
					int startHour = Integer.valueOf(tmpNTime[2]);
					int endHour = Integer.valueOf(tmpNTime[3]);
					strNSet += startMonth + "月~" + endMonth + "月（" + startHour + "時~" + endHour + "時）";
					if (startMonth <= endMonth) {
						if (thisMonth >= startMonth && thisMonth <= endMonth) {
							nAddFlg = true;
						}
					} else {
						if (thisMonth >= startMonth || thisMonth <= endMonth) {
							nAddFlg = true;
						}
					}
				}
				nList.get(i).setN_time(strNSet);
				if (nAddFlg == true) {
					msgNList.add(nList.get(i));
				}

			}
			msgNList.sort(Comparator.comparing(Creature::getC_price));
			msgSList.sort(Comparator.comparing(Creature::getC_price));
			return new AjaxResult(1, "SUCCESS", msgNList, msgSList);
		} else {
			return new AjaxResult(0, "NULL");
		}
	}

	@Override
	public AjaxResult queryAll() {
		List<Creature> list = dao.queryAll();
		if (list != null && !list.isEmpty()) {
			for (int i = 0; i < list.size(); i++) {

				String strSSet = "南：";
				String tmpSTime = list.get(i).getS_time();
				String[] strSTime = tmpSTime.split(" ");
				for (int j = 0; j < strSTime.length; j++) {
					String[] tmpTime = strSTime[j].split(",");
					strSSet += tmpTime[0] + "月~" + tmpTime[1] + "月（" + tmpTime[2] + "時~" + tmpTime[3] + "時）";
				}
				list.get(i).setS_time(strSSet);

				String strNSet = "北：";
				String tmpNTime = list.get(i).getN_time();
				String[] strNTime = tmpNTime.split(" ");
				for (int j = 0; j < strNTime.length; j++) {
					String[] tmpTime = strNTime[j].split(",");
					strNSet += tmpTime[0] + "月~" + tmpTime[1] + "月（" + tmpTime[2] + "時~" + tmpTime[3] + "時）";
				}
				list.get(i).setN_time(strNSet);
			}
			return new AjaxResult(1, "SUCCESS", list);
		} else {
			return new AjaxResult(0, "NULL");
		}
	}

}
