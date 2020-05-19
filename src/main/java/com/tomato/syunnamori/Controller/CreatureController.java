package com.tomato.syunnamori.Controller;

import java.awt.List;

import org.omg.CORBA.PUBLIC_MEMBER;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/syunnamori")
public class CreatureController {

	
	//リアルタイム画面のapi
	//
	@GetMapping("/riarutaimu")
	public List<> Riarutaimu() {
		
	}
	
	@GetMapping("/kongetsu")
	public List<> Kongetsu() {
		
	}
	
	@GetMapping("/zenhyouji")
	public List<> Kongetsu() {
		
	}
}
