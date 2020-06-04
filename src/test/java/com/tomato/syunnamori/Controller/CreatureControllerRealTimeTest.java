package com.tomato.syunnamori.Controller;

import com.tomato.syunnamori.SyunnamoriApplication;
import org.junit.Before;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultHandlers;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import static org.junit.jupiter.api.Assertions.*;
@RunWith(SpringRunner.class)
@SpringBootTest(classes = SyunnamoriApplication.class)
@WebAppConfiguration
class CreatureControllerRealTimeTest {

    @Autowired
    private WebApplicationContext webApplicationContext;
    private MockMvc mockMvc;
    @Before
    public void setUp() throws Exception {
        mockMvc = MockMvcBuilders.webAppContextSetup(webApplicationContext).build();
    }
//これはController層にいるリアルタイムControllerが正しく稼働しているかどうかのテストです
    @Test
    public void realTime() throws Exception {
        String responseString = mockMvc.perform(MockMvcRequestBuilders.get("/riarutaimu")
                .contentType(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON)
        ).andExpect(MockMvcResultMatchers.status().isOk())//連携確認
                .andDo(MockMvcResultHandlers.print())//請求と結果をプリントする
                .andReturn().getResponse().getContentAsString();//結果を文字列に転換する

        System.out.println(responseString);
    }
}