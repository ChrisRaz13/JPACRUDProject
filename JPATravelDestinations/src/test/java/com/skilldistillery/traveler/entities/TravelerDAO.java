package com.skilldistillery.traveler.entities;

import java.util.List;

import com.skilldistillery.traveler.entities.Travels;

public interface TravelerDAO {

	
	
	Travels findById(int travelId);
	List <Travels> findAll();
	Travels createTravel (Travels travel);
	Travels update (int id, Travels updatedTravel);
	boolean destroy(int id);
}
