package com.tomato.syunnamori.Service;

import org.springframework.stereotype.Service;

import com.tomato.syunnamori.Dto.AjaxResult;

public interface CreatureService {
	
	AjaxResult queryByNowTime();
	
	AjaxResult queryByThisMonth();
	
	AjaxResult queryAll();

}
