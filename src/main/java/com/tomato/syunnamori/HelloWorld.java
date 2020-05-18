package com.tomato.syunnamori;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/syunnamori")
public class HelloWorld {
	
	@GetMapping("/helloworld")
	public String hello() {
		return "Hello World!!!,hello springboot!!!";
	}
	
	
}
