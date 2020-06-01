package com.tomato.syunnamori.Controller;

import static org.junit.jupiter.api.Assertions.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

/**
*@author unhourin
*@version 2020/05/2916:40:54
*クラス説明
*/

@SpringBootTest
class CreatureControllerTest {

	@Autowired
	WebApplicationContext context;

	MockMvc mockMvc;

	@BeforeEach
	public void setup() {
		mockMvc = MockMvcBuilders.webAppContextSetup(context).build();
	}


	@Test
	void testZenhyouji() throws Exception {
		mockMvc.perform(MockMvcRequestBuilders.get("/zenhyouji")
				.contentType(MediaType.APPLICATION_JSON_UTF8)).andExpect(MockMvcResultMatchers.status().isOk());
	}

	@Test
	void testKongetsu() throws Exception {
		mockMvc.perform(MockMvcRequestBuilders.get("/kongetsu")
				.contentType(MediaType.APPLICATION_JSON_UTF8)).andExpect(MockMvcResultMatchers.status().isOk());
	}

	@Test
	void testRealTime() throws Exception{
		mockMvc.perform(MockMvcRequestBuilders.get("/riarutaimu")
				.contentType(MediaType.APPLICATION_JSON_UTF8)).andExpect(MockMvcResultMatchers.status().isOk());
	}

}
