package abcd.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import abcd.dao.dao;
import abcd.modal.modal;

@Controller
public class AddController {
	dao d = new dao();

	@RequestMapping("/viewAllList")
	public String homepage(Model m) {
		List<modal> list = d.getAll();
		m.addAttribute("list", list);
		return "View";
	}

	@RequestMapping("/add")
	public String add(@ModelAttribute modal m) {
		d.save(m);
		return "redirect:/home";
	}

	@RequestMapping("/delete")
	public String delete(HttpServletRequest req) {
		String id = req.getParameter("d");
		d.delete(Integer.parseInt(id));
		return "redirect:/home";
	}

	@RequestMapping("/update")
	public String update(HttpServletRequest req, Model m) {
		String id = req.getParameter("u");
		modal m1 = d.update(Integer.parseInt(id));
		m.addAttribute("m1", m1);
		return "update";
	}

	@RequestMapping("/up")
	public String update(@ModelAttribute modal m) {
		d.updateRow(m);
		return "redirect:/viewAllList";
	}

	@RequestMapping("/home")
	public String home() {
		System.out.print("hello home");
		return "home";
	}
}