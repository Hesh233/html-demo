package com.ssm.utils;


import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.context.annotation.Configuration;



//这里写正则表达式拦截sql注入
@Configuration
public class  myFilter {
	public boolean checkboolean(String username,String password)
	{
		//这里写正则表达式拦截sql注入
		/**
		 * username匹配英文（1-10）
		 */
		String yingwen = "^[A-Za-z]{1,10}";
		/**
		 * username匹配汉字输入(2-7个汉字之间)
		 */
		String hanzi = "/([\\u4e00-\\u9fa5]){2,7}$/";
		/**
		 * password限制为英文和数字之间，不能全部是数字，不能全部是字母，必须是数字或字母
		 */
		String mima = "^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{4,16}$";
		
		/**
		 * Matcher匹配相应的正则表达式
		 */
		Matcher m1 = Pattern.compile("hanzi").matcher(username);
		Matcher m2 = Pattern.compile("yingwen").matcher(username);
		Matcher m3 = Pattern.compile("mima").matcher(password);
		
		/**
		 * 
		 */
		if(!((username.matches(hanzi)||username.matches(yingwen))&&
				(password.matches(mima)))){
			return false;
		}
		
		return true;
	}	
	}

