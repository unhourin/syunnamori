package com.tomato.syunnamori.Controller;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collector;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.tomato.syunnamori.Dao.CreatureDao;
import com.tomato.syunnamori.Dto.AjaxResult;
import com.tomato.syunnamori.Entity.Creature;

@RestController
public class DemoCreatureController {

	@Autowired
	private CreatureDao creatureDao;

	@GetMapping("/kongetsu")
	public AjaxResult zenhyouji() {

		List<Creature> list = creatureDao.queryAll();

		if (list.isEmpty() || list == null)
			return new AjaxResult(0, "NULL");

		Calendar nowCalendar = Calendar.getInstance();
		int thisMonth = nowCalendar.get(Calendar.MONTH) + 1;
		int thisHour = nowCalendar.get(Calendar.HOUR_OF_DAY);

		List<Creature> specList = list.stream().filter(c -> c.getMonth().getStart_month() > c.getMonth().getEnd_month())
				.collect(Collectors.toList());
		List<Creature> newSpecList = specList.stream()
				.filter(c -> (c.getMonth().getStart_month() < thisMonth && thisMonth < 12)
						|| (0 < thisMonth && thisMonth < c.getMonth().getEnd_month()))
				.collect(Collectors.toList());
		List<Creature> comcList = list.stream().filter(c -> c.getMonth().getStart_month() < c.getMonth().getEnd_month())
				.collect(Collectors.toList());
		List<Creature> newComcList = list.stream()
				.filter(c -> c.getMonth().getStart_month() < thisMonth && thisMonth < c.getMonth().getEnd_month())
				.collect(Collectors.toList());

		List<Creature> tmpList = new ArrayList<Creature>();
		tmpList.addAll(newComcList);
		tmpList.addAll(newSpecList);
//		list.stream().filter(c -> c.getMonth().getStart_month() > c.getMonth().getEnd_month()).forEach(System.out::println);
//		list.stream().filter(c -> c.getMonth().getStart_month() < c.getMonth().getEnd_month()).forEach(System.out::println);

		return new AjaxResult(1, "SUCCESS", tmpList);

	}

}
