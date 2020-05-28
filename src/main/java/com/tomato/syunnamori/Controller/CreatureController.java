
package com.tomato.syunnamori.Controller;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.TreeSet;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.tomato.syunnamori.Dao.CreatureDao;
import com.tomato.syunnamori.Dto.AjaxResult;
import com.tomato.syunnamori.Entity.Creature;

@RestController
@CrossOrigin(origins = "*", maxAge = 3600)
public class CreatureController {

	@Autowired
	private CreatureDao creatureDao;

	// 作成者：雲鳳麟
	// 全表示画面のAPI
	@GetMapping("/zenhyouji")
	public AjaxResult zenhyouji() {
		// すべとのデータをCreatureDaoから取得
		List<Creature> list = creatureDao.queryAll();

		// ヌロかどうかの確認
		if (list.isEmpty() || list == null)
			// であったら messageを戻す
			return new AjaxResult(0, "NULL");
		//重複データを削除
		list = removeDuplicates(list);
		return new AjaxResult(1, "SUCCESS", list);

	}

	// 作成者：黄益柱
	// 今月表示画面のAPI
	@GetMapping("/kongetsu")
	public AjaxResult kongetsu() {
		// 今月にとれるデータをCreatureDaoから取得
		List<Creature> list = creatureDao.queryThisMonth();

		// listが空っぽかNULLかの判断
		if (list.isEmpty() || list == null)
			// NULLのmessageを戻す
			return new AjaxResult(0, "NULL");
		//重複データを削除
		list = removeDuplicates(list);
		// 成功の場合はlistを戻す
		return new AjaxResult(1, "SUCCESS", list);
	}

	// 作成者=>楊炯
	// 現在時間表現のAPI
	@GetMapping("/riarutaimu")
	public AjaxResult realTime() {
		// 必要なデータをcreatureDaoから取得
		List<Creature> list = creatureDao.queryRealTime();
		// 取得成功したかどうかを確認
		if (list.isEmpty() || list == null)
			// 失敗したら、メッセージを戻す
			return new AjaxResult(0, "NULL");
		//重複データを削除
		list = removeDuplicates(list);
		return new AjaxResult(1, "SUCCESS", list);
	}
	
	
	//重複重複データを削除のメソッド
	private List<Creature> removeDuplicates(List<Creature> list){
		return list.stream().collect(
				Collectors.collectingAndThen(
						Collectors.toCollection(() -> new TreeSet<>(Comparator.comparing(c->c.getC_code()+";"+c.getEarth()))), ArrayList::new));
	}

}
