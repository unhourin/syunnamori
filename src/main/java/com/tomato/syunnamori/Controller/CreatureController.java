package com.tomato.syunnamori.Controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.tomato.syunnamori.Dto.AjaxResult;
import com.tomato.syunnamori.Service.CreatureService;

@RestController
public class CreatureController {
	
	@Autowired
	private CreatureService service;

	// リアルタイム画面のapi
	//
	@GetMapping("/riarutaimu")
	public AjaxResult Riarutaimu() {
		return service.queryByNowTime();
	}

	@GetMapping("/kongetsu")
	public AjaxResult Kongetsu() {
		return service.queryByThisMonth();
	}

	@GetMapping("/zenhyouji")
	public AjaxResult zenhyouji() {
		return service.queryAll();
	}
}
