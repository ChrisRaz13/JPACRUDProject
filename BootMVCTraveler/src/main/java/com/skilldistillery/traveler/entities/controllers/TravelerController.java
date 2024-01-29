package com.skilldistillery.traveler.entities.controllers;

import java.util.Comparator;
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

	@PostMapping("/updateTravel")
	public String updateTravel(@ModelAttribute Travels updatedTravel, Model model) {
		Travels updatedTravelEntity = travelerDAO.update(updatedTravel.getId(), updatedTravel);
		model.addAttribute("destinations", updatedTravelEntity);
		return "travels/show";
	}

	@GetMapping("/updateForm")
	public String showUpdateForm(@RequestParam("travelId") int id, Model model) {
		Travels travelToUpdate = travelerDAO.findById(id);

		model.addAttribute("destinations", travelToUpdate);

		return "travels/updateForm";
	}

	@PostMapping("/deleteTravel")
	public String deleteTravel(@ModelAttribute Travels deleteTravel, Model model) {
		try {
			boolean deleted = travelerDAO.destroy(deleteTravel.getId());

			if (deleted) {
				model.addAttribute("message", "Travel entry deleted successfully.");
			} else {
				model.addAttribute("message", "Unable to delete travel entry.");
			}
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("message", "An unexpected error occurred during deletion.");
		}

		return "travels/deleteConfirmation";
	}

	@GetMapping("/deleteForm")
	public String showDelete(@RequestParam("travelId") int travelId, Model model) {
		Travels travelToDelete = travelerDAO.findById(travelId);
		model.addAttribute("deleteTravel", travelToDelete);
		return "travels/deleteConfirmation";
	}

	@GetMapping("/traveledList")
	public String listTravels(Model model) {
		List<Travels> travelsList = travelerDAO.findAll();
		travelsList.sort(Comparator.comparingInt(Travels::getRating).reversed());
		model.addAttribute("travels", travelsList);
		return "travels/traveledList";
	}

}