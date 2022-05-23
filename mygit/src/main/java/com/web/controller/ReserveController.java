package com.web.controller;


import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.web.service.ReservationServiceImpl;
import com.web.vo.PostReservationVO;
import com.web.vo.PreReservationVO;


@Controller
public class ReserveController {
	
	@Autowired
	private ReservationServiceImpl reservationService;
	
	@RequestMapping(value="/reservation.do", method=RequestMethod.GET)
	public ModelAndView reservation() {
		ModelAndView mv = new ModelAndView();
		ArrayList<PreReservationVO> list = reservationService.list();
		
		mv.addObject("list", list);
		mv.setViewName("reservation/reservation");
		
		return mv;
	}
	@RequestMapping(value="/reservation.do", method=RequestMethod.POST)
	public ModelAndView reservation(PostReservationVO vo, RedirectAttributes re) {
		ModelAndView mv = new ModelAndView();
		
		int result = reservationService.insert(vo);
		
		if(result==1) {
			re.addFlashAttribute("res_result", "succ");
		} else {
			re.addFlashAttribute("res_result", "fail");
		}
		
		mv.setViewName("redirect:/reservation.do");	
		return mv;
	}
}