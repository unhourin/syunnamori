package com.tomato.syunnamori.Controller;

import java.util.List;

import org.omg.CORBA.PUBLIC_MEMBER;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.tomato.syunnamori.Entity.Creature;

@RestController
@RequestMapping("/syunnamori")
public class CreatureController {
	
	//リアルタイム画面のapi
	//
	@GetMapping("/riarutaimu")
	public List<Creature> Riarutaimu() {
		return null;
	}
	
	@GetMapping("/kongetsu")
	public List<Creature> Kongetsu() {
		return null;
	}
	
	@GetMapping("/zenhyouji")
	public List<Creature> zenhyouji() {
		return null;
	}
}
