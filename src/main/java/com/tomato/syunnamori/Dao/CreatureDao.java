package com.tomato.syunnamori.Dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.tomato.syunnamori.Entity.Creature;

/**
 * @author 雲鳳麟、黄益柱、楊炯
 * @version 2020/05/28　10:00:54 
 * マッパのインタフェース
 */

@Mapper
public interface CreatureDao {
	
	// 作成者：雲鳳麟
	List<Creature> queryAll();
	
	
	// 作成者：雲鳳麟
	List<Creature> queryThisMonth();
	
	
	// 作成者：楊炯
	List<Creature> queryRealTime();
}
