package bvrsoftware.com.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import bvrsoftware.com.model.Student;
import bvrsoftware.com.servicedao.MyService;

@Controller
public class Mycontroller {
	
	@Autowired
	private MyService sr;
	
	@RequestMapping("/")
	String indexpage(Model m)
	{
		return "index";
	}
	@GetMapping(value ="/insertpage")
	public String insertpage(Model m)
	{
		m.addAttribute("st", new Student());
		return "studentRe";
	}
	@PostMapping(value ="/insert")
	public String insertDetail(@ModelAttribute("Student")Student s,Model m)
	{
		sr.saveOrUpdate(s);
		return "redirect:/students";
	}
	@GetMapping("/students")
	public String getAllStudent(Model m)
	{
		m.addAttribute("list", sr.getAllStudent());
		return "allstudent";
	}
	@GetMapping("/updatepage/{id}")
	public String UpdatePage(@PathVariable("id")int id,Model m)
	{
		m.addAttribute("st", sr.getById(id));
		return "studentRe";
	}
	@GetMapping("/delete/{id}")
	public String DeleteStudent(@PathVariable("id")int id,Model m)
	{
	   sr.DeleteStudent(id);
		return "redirect:/students";
	}
}
