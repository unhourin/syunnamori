package com.tomato.syunnamori.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.tomato.syunnamori.Dao.CreatureDao;
import com.tomato.syunnamori.Dto.AjaxResult;
import com.tomato.syunnamori.Entity.Creature;

@RestController
public class CreatureController {

	@Autowired
	private CreatureDao creatureDao;

	
	//作成者：雲鳳麟
	//全表示画面のAPI
	@GetMapping("/zenhyouji")
	public AjaxResult zenhyouji() {
		// すべとのデータをCreatureDaoから取得
		List<Creature> list =creatureDao.queryAll();
		
		//ヌロかどうかの確認
		if(list.isEmpty()||list==null)
			//であったら　messageを戻す
			return new AjaxResult(0,"NULL");
		return new AjaxResult(1,"SUCCESS",list);

	}
	
	
	@GetMapping("/kongetsu")
	public AjaxResult kongetsu() {
		List<Creature> list = creatureDao.queryThisMonth();
		if(list.isEmpty()||list==null)
			return new AjaxResult(0,"NULL");
		return new AjaxResult(1,"SUCCESS",list);
	}
	
	
	
	@GetMapping("/riarutaimu")
	public AjaxResult riarutaimu() {
		List<Creature> list = creatureDao.queryRealTime();
		if(list.isEmpty() || list ==null)
			return new AjaxResult(0,"NULL");
		return new AjaxResult(1,"SUCCESS",list);
	}
	
//	@GetMapping("/kongetsu")
//	public AjaxResult zenhyouji() {
//
//		List<Creature> list = creatureDao.queryAll();
//
//		if (list.isEmpty() || list == null)
//			return new AjaxResult(0, "NULL");
//
//		Calendar nowCalendar = Calendar.getInstance();
//		int thisMonth = nowCalendar.get(Calendar.MONTH) + 1;
//		int thisHour = nowCalendar.get(Calendar.HOUR_OF_DAY);
//
//		List<Creature> specList = list.stream().filter(c -> c.getMonth().getStart_month() > c.getMonth().getEnd_month())
//				.collect(Collectors.toList());
//		List<Creature> newSpecList = specList.stream()
//				.filter(c -> (c.getMonth().getStart_month() < thisMonth && thisMonth < 12)
//						|| (0 < thisMonth && thisMonth < c.getMonth().getEnd_month()))
//				.collect(Collectors.toList());
//		List<Creature> comcList = list.stream().filter(c -> c.getMonth().getStart_month() < c.getMonth().getEnd_month())
//				.collect(Collectors.toList());
//		List<Creature> newComcList = list.stream()
//				.filter(c -> c.getMonth().getStart_month() < thisMonth && thisMonth < c.getMonth().getEnd_month())
//				.collect(Collectors.toList());
//
//		List<Creature> tmpList = new ArrayList<Creature>();
//		tmpList.addAll(newComcList);
//		tmpList.addAll(newSpecList);
//
//		return new AjaxResult(1, "SUCCESS", tmpList);
//
//	}
}
