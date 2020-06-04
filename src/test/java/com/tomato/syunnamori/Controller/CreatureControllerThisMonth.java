package com.tomato.syunnamori.Controller;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;


@SpringBootTest
class CreatureControllerThisMonth {

	@Autowired
	WebApplicationContext context;

	MockMvc mockMvc;

	@BeforeEach
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(context).build();
	}

	@Test
	void testKongetsu() throws Exception {
			mockMvc.perform(MockMvcRequestBuilders.get("/kongetsu"))
			.andReturn()
			.getModelAndView()
			.getModelMap();

	}
}
