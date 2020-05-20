package com.tomato.syunnamori.Service;

import com.tomato.syunnamori.Dto.AjaxResult;

public interface CreatureService {
	
	AjaxResult queryByNowTime();
	
	AjaxResult queryByThisMonth();
	
	AjaxResult queryAll();

}
