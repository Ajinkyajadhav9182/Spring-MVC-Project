package abcd.controller;

import java.net.http.HttpClient.Redirect;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import abcd.dao.dao;
import abcd.modal.modal;

@Controller
public class AddController {
	dao d = new dao();

	@RequestMapping("/viewAllList")
	public ModelAndView homepage() {
		List<modal> list = d.getAll();
		ModelAndView mv = new ModelAndView("View");
		mv.addObject("list", list);
		return mv;
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
		// System.out.print(m1);
		return "update";
	}

	@RequestMapping("/up")
	public String update(@ModelAttribute modal m) {
		d.updateRow(m);
		System.out.print(m.getId());
		return "redirect:/viewAllList";
	}

	@RequestMapping("/home")
	public String home() {
		return "home";
	}

	@RequestMapping("/add")
	public String add(@ModelAttribute modal m, RedirectAttributes rd) {
		// boolean status=d.save(m);d.save(m);
//		if (status) {
//			rd.addFlashAttribute("msg", "data insert sucessfully");
//		} else {
//			rd.addFlashAttribute("msg", "data not insert");
//		}
		d.save(m);

		return "redirect:/home";
	}
}