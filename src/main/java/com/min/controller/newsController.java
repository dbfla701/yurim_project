package com.min.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class newsController {
	
	@RequestMapping(value="/newsList.do", method = RequestMethod.GET)
		public String newsList() {
		return "newsList";
	}
	
	@RequestMapping(value="/book.do", method = RequestMethod.GET)
	public String book() {
		return "book";
	}
	
}
