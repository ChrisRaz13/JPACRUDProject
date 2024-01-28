package com.skilldistillery.traveler.entities.data;

import java.util.List;

import com.skilldistillery.traveler.entities.Travels;

public interface TravelerDAO {

	
	
	public Travels findById(int id);
	public List <Travels> findAll();
	public Travels create (Travels actor);
	public Travels update (int id, Travels updatedActor);
	public boolean destroy(int id);
}
