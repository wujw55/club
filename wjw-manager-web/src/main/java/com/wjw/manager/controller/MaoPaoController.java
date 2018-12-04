package com.wjw.manager.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wjw.common.pojo.SuanFaResult;

@Controller
public class MaoPaoController {
	
	@RequestMapping("/maopao")
	@ResponseBody
	public SuanFaResult maoPao(String numberStr){
		System.err.println(numberStr);
		SuanFaResult suanFaResult = new SuanFaResult();
		try {
			String [] numberArray = numberStr.split(",");
			int [] array = new int [numberArray.length];
			for (int i = 0; i < numberArray.length; i++) {
				array[i] = (int)(Integer.parseInt(numberArray[i]));
			}
			long begin = System.currentTimeMillis();
			int[] maoPao = maoPao(array);
			long end = System.currentTimeMillis();
			String time = String.valueOf(end-begin);
			
			suanFaResult.setResult(maoPao.toString());
			suanFaResult.setResult(time);
		} catch (Exception e) {
			suanFaResult.setMessage("输入数组错误！！");
			e.printStackTrace();
		}
		
		return suanFaResult;
		
	}
	
	public int [] maoPao(int [] arr){
		
		for (int i = 0; i < arr.length-1; i++) {
			//外层循环控制排序趟数，因为最后一次可以确定两个值的位置，所以需要 arr.length-1次。
			for (int j = 0; j < arr.length-1-i; j++) {
				//内层循环控制每趟排序次数，每趟都能确定一个值的位置。
				if(arr[j]>arr[j+1]){
					int temp = arr[j];
					arr[j] = arr[j+1];
					arr[j+1] = temp;
				}
			}
		}
		return arr;
	}

}
