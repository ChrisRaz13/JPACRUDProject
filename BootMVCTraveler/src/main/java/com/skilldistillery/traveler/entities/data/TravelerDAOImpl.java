package com.skilldistillery.traveler.entities.data;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.skilldistillery.traveler.entities.Travels;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;
@Repository
@Service
@Transactional
public class TravelerDAOImpl implements TravelerDAO {
	@PersistenceContext
	private EntityManager em;

	@Override
	public Travels findById(int id) {
		Travels managed = em.find(Travels.class, id);
		return managed;
	}

	@Override
	public Travels createTravel(Travels travel) {

		em.persist(travel);

		return travel;
	}

	@Override
	public Travels update(int id, Travels updateTravel) {

		Travels managed = em.find(Travels.class, id);

		if (managed != null) {
			managed.setCity(updateTravel.getCity());
			managed.setCountry(updateTravel.getCountry());
			managed.setRating(updateTravel.getRating());

		}
		return managed;
	}

	@Override
	public boolean destroy(int id) {
	    try {
	        Travels traveler = em.find(Travels.class, id);

	        if (traveler != null) {
	            em.remove(traveler); 
	            return true;
	        } else {
	            return false;
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	        return false;
	    }
	}
	

	@Override
	public List<Travels> findAll() {
		return em.createQuery("SELECT t FROM Travels t", Travels.class).getResultList();
	}

}