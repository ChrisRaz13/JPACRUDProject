package com.skilldistillery.traveler.entities.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
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

	@GetMapping(path = "getDestinations.do", params = "travelId")
	public String showTravel(@RequestParam("travelId") int id, Model model) {
		Travels destinations = travelerDAO.findById(id);

		model.addAttribute("destinations", destinations);
		return "travels/show";
	}

	@PostMapping("/addTravel")
	public String addTravel(@ModelAttribute Travels travel, Model model) {
		Travels createdTravel = travelerDAO.createTravel(travel);

		model.addAttribute("destinations", createdTravel);
		return "travels/create";
	}
	
	@GetMapping("/createTravel")
	public String showCreateTravelForm() {
	    return "travels/create";
	
	}
	
//
//	@PostMapping("/editTravel")
//	public String editTravel(@ModelAttribute Travels updatedTravel, Model model) {
//	    // Implement logic to update an existing travel destination
//	    // Redirect to the updated list view or show the edited travel
//	}
//
//	@GetMapping("/deleteTravel")
//	public String deleteTravel(@RequestParam("travelId") int id, Model model) {
//	    // Implement logic to delete a travel destination
//	    // Redirect to the updated list view
//	}

}