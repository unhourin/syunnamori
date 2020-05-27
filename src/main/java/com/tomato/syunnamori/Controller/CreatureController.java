package com.tomato.syunnamori.Controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.tomato.syunnamori.Dao.CreatureDao;
import com.tomato.syunnamori.Dto.AjaxResult;
import com.tomato.syunnamori.Entity.Creature;

@RestController
public class CreatureController {

	@Autowired
	private CreatureDao creatureDao;

	@GetMapping("/zenhyouji")
	public AjaxResult zenhyouji() {
		List<Creature> list =creatureDao.queryAll();
		if(list.isEmpty()||list==null)
			return new AjaxResult(0,"NULL");
		return new AjaxResult(1,"SUCCESS",list);

	}
	@GetMapping("/month")
	public AjaxResult kongetsu() {
		List<Creature> list = creatureDao.queryThisMonth();
		if(list.isEmpty()||list==null)
			return new AjaxResult(0,"NULL");
		return new AjaxResult(1,"SUCCESS",list);
	}
	@GetMapping("/realtime")
	public AjaxResult realTime() {
		List<Creature> list = creatureDao.queryRealTime();
		if(list.isEmpty() || list ==null)
			return new AjaxResult(0,"NULL");
		return new AjaxResult(1,"SUCCESS",list);
	}
}
