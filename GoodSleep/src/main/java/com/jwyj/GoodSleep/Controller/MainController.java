package com.jwyj.GoodSleep.Controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jwyj.GoodSleep.Command.Command;
import com.jwyj.GoodSleep.util.Constant;

@Controller
public class MainController {
	
	Command command;
	public JdbcTemplate template;
	
	@Autowired
	// @Autowired는 주입하려고 하는 객체의 타입이 일치하는 객체를 자동으로 주입한다.
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
		Constant.template = this.template;
	}
	@RequestMapping("/index")
	public String index() {
		return "index";
	}
	
	@RequestMapping(value = "/sleepCal", method = RequestMethod.GET)
	public String sleepCal(HttpServletRequest request, Model model) {
		String sleepHour = request.getParameter("sleepHour");
		String sleepMin = request.getParameter("sleepMin");
		String sleepType = request.getParameter("sleepType");
		model.addAttribute("sleepHour",sleepHour);
		model.addAttribute("sleepMin",sleepMin);
		model.addAttribute("sleepType",sleepType);
		return "sleepCal";
	}
}