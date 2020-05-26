package com.tomato.syunnamori.Dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.tomato.syunnamori.Entity.Creature;

@Mapper
public interface CreatureDao {

	List<Creature> queryAll();

	List<Creature> queryThisMonth();
}
