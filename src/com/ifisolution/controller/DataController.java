package com.ifisolution.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import com.ifisolution.model.Record;
import com.ifisolution.service.DataService;

@RestController
@RequestMapping("/services")
public class DataController {
	@Autowired
	DataService dataService;
	
	@GetMapping("/records/{sheetName}")
	public List<Record> getRecords(@PathVariable(value="sheetName") String sheetName){
		RestTemplate restTemplate=new RestTemplate();
		return dataService.getRecords(sheetName,"2016-10-24");
	}
	
}
