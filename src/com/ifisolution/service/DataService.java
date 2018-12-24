package com.ifisolution.service;

import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.ifisolution.common.DataUri;
import com.ifisolution.model.Record;

@Service
public class DataService {
	RestTemplate restTemplate=new RestTemplate();
	public List<Record> getRecords(String sheetName,String date){
		Record[] list = restTemplate.getForObject(DataUri.URI_DATA+"/records/"+sheetName+"?date="+date, Record[].class);
		System.out.println(list.length);
		return Arrays.asList(list);
	}
}
