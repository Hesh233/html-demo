package com.ssm.utils;

import java.util.HashMap;
import java.util.Map;
import net.sf.json.JSONObject;

public class StringtoMaps { // 把json放进map中，再从map中获取
	public static Map toData(String data) throws Exception {
		Map map = new HashMap();
		try {
			map = JSONObject.fromObject(data);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map;
	}
}