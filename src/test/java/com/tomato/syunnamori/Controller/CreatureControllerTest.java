package com.tomato.syunnamori.Controller;

import static org.junit.jupiter.api.Assertions.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

import java.util.List;

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

import com.tomato.syunnamori.Dao.CreatureDao;
import com.tomato.syunnamori.Entity.Creature;

/**
*@author 雲鳳麟
*@version 2020/05/2916:40:54
*クラス説明
*/

@SpringBootTest
class CreatureControllerTest {

	@Autowired
	WebApplicationContext context;
	
	@Autowired
	private CreatureDao dao;

	MockMvc mockMvc;

	@BeforeEach
	public void setup() {
		mockMvc = MockMvcBuilders.webAppContextSetup(context).build();
	}


	@Test
	void testZenhyouji() throws Exception {
		mockMvc.perform(MockMvcRequestBuilders.get("/zenhyouji")
				.contentType(MediaType.APPLICATION_JSON_UTF8)).andExpect(MockMvcResultMatchers.status().isOk());
		
		
		List<Creature> list = dao.queryAll();
		if(list.isEmpty()||list==null) {
			
		}else {
			for(Creature c:list) {
				System.out.println(c);
			}
		}
		
	}

}
