package com.tomato.syunnamori.Controller;

import static org.junit.jupiter.api.Assertions.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

import java.util.Collections;
import java.util.List;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.mock.web.MockHttpServletResponse;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.ResultActions;
import org.springframework.test.web.servlet.request.MockHttpServletRequestBuilder;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.servlet.config.MvcNamespaceHandler;

import com.mysql.cj.log.Log;
import com.tomato.syunnamori.Controller.CreatureController.MyComparatorCode;
import com.tomato.syunnamori.Dao.CreatureDao;
import com.tomato.syunnamori.Entity.Creature;

/**
 * @author 雲鳳麟
 * @version 2020/05/2916:40:54 クラス説明
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

	//全表示APIのテスト
	// テスト項目：１、status ２、レスポンス
	@Test
	void testZenhyouji() throws Exception {
		MockHttpServletRequestBuilder requestBuilder = MockMvcRequestBuilders.get("/zenhyouji").contentType("text/html")
				.accept(MediaType.APPLICATION_JSON_UTF8);

		// リクエストを送信して結果を取得する
		ResultActions perform = mockMvc.perform(requestBuilder);

		// リクエスト結果を確認する
		// １、statusの確認
		perform.andExpect(MockMvcResultMatchers.status().isOk());

		// ２、レスポンス（response）の確認
		MvcResult mvcResult = perform.andReturn();
		String response = mvcResult.getResponse().getContentAsString();
		System.out.println(response);
	}

	// 今月APIのテスト
	// テスト項目：１、status ２、レスポンス
	@Test
	void kongetsu() throws Exception {
		// リクエストを構築する
		MockHttpServletRequestBuilder requestBuilder = MockMvcRequestBuilders.get("/kongetsu").contentType("text/html")
				.accept(MediaType.APPLICATION_JSON_UTF8);

		// リクエストを送信して結果を取得する
		ResultActions perform = mockMvc.perform(requestBuilder);

		// リクエスト結果を確認する
		// statusの確認
		perform.andExpect(MockMvcResultMatchers.status().isOk());

		// レスポンス（response）の確認
		MvcResult mvcResult = perform.andReturn();
		String response = mvcResult.getResponse().getContentAsString();
		System.out.println(response);
	}

	// リアルタイムAPIのテスト
	// テスト項目：１、status ２、レスポンス
	@Test
	void riarutaimu() throws Exception {
		MockHttpServletRequestBuilder requestBuilder = MockMvcRequestBuilders.get("/riarutaimu")
				.contentType("text/html").accept(MediaType.APPLICATION_JSON_UTF8);

		// リクエストを送信して結果を取得する
		ResultActions perform = mockMvc.perform(requestBuilder);

		// リクエスト結果を確認する
		// statusの確認
		perform.andExpect(MockMvcResultMatchers.status().isOk());

		// レスポンス（response）の確認
		MvcResult mvcResult = perform.andReturn();
		String response = mvcResult.getResponse().getContentAsString();
		System.out.println(response);
	}

}
