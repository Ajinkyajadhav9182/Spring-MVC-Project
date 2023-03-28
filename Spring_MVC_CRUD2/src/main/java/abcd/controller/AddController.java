package abcd.controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.*;
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
    public String delete(HttpServletRequest req, RedirectAttributes rd) {
        String id = req.getParameter("d");
        rd.addFlashAttribute("msg1", "Deleted Successfully");
        d.delete(Integer.parseInt(id));
        return "redirect:/viewAllList";
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
    public String update(@ModelAttribute modal m, RedirectAttributes rd) {
        boolean status = d.updateRow(m);
        if (status) {
            rd.addFlashAttribute("msg", "Changes Successfully");
        } else {
            rd.addFlashAttribute("msg", "Changes Failed");
        }

        return "redirect:/viewAllList";
    }

    @RequestMapping("/register")
    public String home() {
        return "home";
    }

    @RequestMapping("/search")
    public String searchd(@RequestParam("searchdata") String abc) {
        System.out.print(abc);
        return "home";
    }

    @RequestMapping("/add")
    public String add(@ModelAttribute modal m, RedirectAttributes rd) {
        boolean as = d.checkEmail(m);
        if (as) {
            boolean status = d.save(m);
            if (status) {
                rd.addFlashAttribute("msg", "Data Inserted Successfully");
            } else {
                rd.addFlashAttribute("msg", "Data Already Exist");
            }
        } else {
            rd.addFlashAttribute("msg", "Data Already Exist");
        }
        return "redirect:/viewAllList";
    }
}