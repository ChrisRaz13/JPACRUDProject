package com.skilldistillery.traveler.entities.data;

import java.util.List;

import org.springframework.stereotype.Service;

import com.skilldistillery.traveler.entities.Travels;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;

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
	public Travels create(Travels traveler) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("TravelDestinations");
		EntityManager em = emf.createEntityManager();

		// start the transaction
		em.getTransaction().begin();
		// write the customer to the database
		em.persist(traveler);
		// commit the changes (actually perform the operation)
		em.getTransaction().commit();

		// return the Customer object
		return traveler;
	}

	@Override
	public Travels update(int id, Travels updateTravel) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("TravelDestinations");
		EntityManager em = emf.createEntityManager();

		em.getTransaction().begin();
		Travels managed = em.find(Travels.class, id);

		managed.setCity(updateTravel.getCity());
		managed.setCountry(updateTravel.getCountry());
		managed.setRating(updateTravel.getRating());

		em.getTransaction().commit();
		em.close();
		emf.close();
		return managed;
	}

	@Override
	public boolean destroy(int id) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("TravelDestinations");
		EntityManager em = emf.createEntityManager();

		em.getTransaction().begin();
		Travels traveler = em.find(Travels.class, id);

		em.remove(traveler);

		em.getTransaction().commit();

		traveler.getCity();

		return em.find(Travels.class, id) == null;
	}

	@Override
	public List<Travels> findAll() {
		return em.createQuery("SELECT t FROM Travels t", Travels.class).getResultList();
	}

}