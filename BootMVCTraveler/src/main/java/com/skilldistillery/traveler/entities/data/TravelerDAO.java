package com.skilldistillery.traveler.entities.data;

import java.util.List;

import com.skilldistillery.traveler.entities.Travels;

public interface TravelerDAO {

	
	
	Travels findById(int travelId);
	List <Travels> findAll();
	Travels create (Travels actor);
	Travels update (int id, Travels updatedActor);
	boolean destroy(int id);
}
