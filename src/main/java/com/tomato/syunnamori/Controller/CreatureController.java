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
	
	private CreatureDao creatureDao;
	
	public List<Creature> kongetsu() {
		
		return creatureDao.queryThisMonth();
		
	}

}
