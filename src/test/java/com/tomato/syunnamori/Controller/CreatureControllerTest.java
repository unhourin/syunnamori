package com.tomato.syunnamori.Controller;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.tomato.syunnamori.Dao.CreatureDao;

/**
 * @author unhourin
 * @version 2020/05/2612:50:43 クラス説明
 */

@RunWith(SpringJUnit4ClassRunner.class)
public class CreatureControllerTest {

	/**
	 * Test method for
	 * {@link com.tomato.syunnamori.Controller.CreatureController#zenhyouji()}.
	 */
	@Autowired
	@Resource
	private CreatureDao dao;

	@Test
	public void testZenhyouji() {
		System.out.print(dao.queryAll());
	}

}
