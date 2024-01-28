package com.skilldistillery.traveler.entities.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.traveler.entities.Travels;
import com.skilldistillery.traveler.entities.data.TravelerDAO;

@Controller
public class TravelerController {
	@Autowired
	private TravelerDAO travelerDAO;

	@GetMapping({ " ", "/", "home.do" })
	public String index(Model model) {

		List<Travels> travelsList = travelerDAO.findAll();

		model.addAttribute("travels", travelsList);

		return "home";
	}

	@GetMapping(path = "getTravels.do", params = "travelId")
	public String showTravel(@RequestParam("travelId") int id, Model model) {
		Travels travel = travelerDAO.findById(id);

		model.addAttribute("travels", travel);
		return "travels/show";
	}
}