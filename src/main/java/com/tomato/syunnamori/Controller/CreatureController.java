package com.tomato.syunnamori.Controller;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.tomato.syunnamori.Dao.CreatureDao;
import com.tomato.syunnamori.DataProc.TimeCheck;
import com.tomato.syunnamori.Dto.AjaxResult;
import com.tomato.syunnamori.Entity.Creature;

/**
 * @author 雲鳳麟、黄益柱、楊炯
 * @version 2020/05/28 10:00:54 Creatureのコントローラ
 */

@RestController
@CrossOrigin(origins = "*", maxAge = 3600)
public class CreatureController {

	@Autowired
	private CreatureDao creatureDao;

	// 全表示画面のAPI
	@GetMapping("/zenhyouji")
	public AjaxResult zenhyouji() {

		// すべとのデータをCreatureDao.queryAllから取得
		List<Creature> list = creatureDao.queryAll();

		// NULLかどうかの確認
		if (list.isEmpty() || list == null)
			// NULLであったら messageを戻す
			return new AjaxResult(0, "NULL");

		//c_codeが小さい順にソートする
		Collections.sort(list,new MyComparatorCode());
		return new AjaxResult(1, "SUCCESS", list);
	}

	// 今月表示画面のAPI
	@GetMapping("/kongetsu")
	public AjaxResult kongetsu() {
		// 今月にとれるデータをCreatureDaoから取得
		List<Creature> list = creatureDao.queryAll();
		// listが空っぽかNULLかの判断
		if (list.isEmpty() || list == null)
			// NULLのmessageを戻す
			return new AjaxResult(0, "NULL");

		//今月に取れる生物のデータを取り出す
		//北半球のデータがnDataに保存
		//南半球のデータがsDataに保存
		TimeCheck timeCheck = new TimeCheck();
		List<List<Creature>> tmpList = timeCheck.timeCheck(list, false);

		List<Creature> sData = tmpList.get(0);
		List<Creature> nData = tmpList.get(1);

		//値段が高い順にソートする
		Collections.sort(sData, new MyComparatorPrice());
		Collections.sort(nData, new MyComparatorPrice());
		// 成功の場合はlistを戻す
		return new AjaxResult(1, "SUCCESS", sData, nData);
//		return null;
	}

	// 現在時間表現のAPI
	@GetMapping("/riarutaimu")
	public AjaxResult riarutaimu() {
		// 必要なデータをcreatureDaoから取得
		List<Creature> list = creatureDao.queryAll();
		// 取得成功したかどうかを確認
		if (list.isEmpty() || list == null)
			// 失敗したら、メッセージを戻す
			return new AjaxResult(0, "NULL");
		
		//今の時間に取れる生物のデータを取り出す
		TimeCheck timeCheck = new TimeCheck();
		List<List<Creature>> tmpList = timeCheck.timeCheck(list, true);
		
		//
		List<Creature> sData = tmpList.get(0);
		List<Creature> nData = tmpList.get(1);

		//c_codeが小さい順にソートする
		Collections.sort(sData, new MyComparatorPrice());
		Collections.sort(nData, new MyComparatorPrice());
		return new AjaxResult(1, "SUCCESS", sData,nData);
	}

	// 作成者：雲鳳麟
	// c_codeのコンパレータ
	static class MyComparatorCode implements Comparator<Creature> {

		@Override
		public int compare(Creature c1, Creature c2) {
			return (Integer.valueOf(c1.getcCode()) - Integer.valueOf(c2.getcCode()));
		}
	}

	// 作成者：雲鳳麟
	// c_priceのコンパレータ
	static class MyComparatorPrice implements Comparator<Creature> {

		@Override
		public int compare(Creature c1, Creature c2) {
			return (Integer.valueOf(c1.getcPrice()) - Integer.valueOf(c2.getcPrice()));
		}
	}

//		// 作成者：雲鳳麟
//		// time_gapのコンパレータ
//		static class MyComparatorTimeGap implements Comparator<Creature> {
//			
//			@Override
//			public int compare(Creature c1, Creature c2) {
//				return (c1.getTime_gap() - c2.getTime_gap());
//			}
//		}

}
