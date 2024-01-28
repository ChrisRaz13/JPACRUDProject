package com.skilldistillery.traveler.entities;

import static org.junit.jupiter.api.Assertions.assertDoesNotThrow;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertNull;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

class TravelsTest {

	private static EntityManagerFactory emf;
	private EntityManager em;
	private Travels travels;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("TravelDestinations");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		em.getTransaction().begin();
		travels = em.find(Travels.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		try {
			if (em.getTransaction().isActive()) {
				em.getTransaction().rollback();
			}
		} finally {
			em.close();
		}

	}

//	    @Test
//	    void test_Travels_entity_mapping() {
//	        assertNotNull(travels);
//	        assertEquals("Vigo", travels.getCity());
//	    }

	@Test
	void test_CreateTravel() {
		Travels newTravel = new Travels();
		newTravel.setCity("NewCity");
		newTravel.setCountry("NewCountry");
		newTravel.setRating(6);

		em.persist(newTravel);

		assertNotNull(newTravel.getId());

		Travels retrievedTravel = em.find(Travels.class, newTravel.getId());

		assertNotNull(retrievedTravel);
		assertEquals("NewCity", retrievedTravel.getCity());
		assertEquals("NewCountry", retrievedTravel.getCountry());
		assertEquals(6, retrievedTravel.getRating());
	}

	@Test
	void testUpdateTravel() {
		Travels existingTravel = em.find(Travels.class, 1);

		existingTravel.setCity("Updated City");
		existingTravel.setCountry("Updated Country");
		existingTravel.setRating(90);

		Travels updatedTravelEntity = em.find(Travels.class, 1);

		assertEquals("Updated City", updatedTravelEntity.getCity());
		assertEquals("Updated Country", updatedTravelEntity.getCountry());
		assertEquals(90, updatedTravelEntity.getRating());
	}

	@Test
	void testShowUpdateForm() {
		Travels travelToUpdate = new Travels();
		travelToUpdate.setId(1);
		travelToUpdate.setCity("Existing City");
		travelToUpdate.setCountry("Existing Country");
		travelToUpdate.setRating(85);

		Travels mergedTravel = em.merge(travelToUpdate);

		mergedTravel.setCity("Updated City");
		mergedTravel.setCountry("Updated Country");
		mergedTravel.setRating(90);

		em.flush();

		Travels retrievedTravel = em.find(Travels.class, 1);

		assertEquals("Updated City", retrievedTravel.getCity());
		assertEquals("Updated Country", retrievedTravel.getCountry());
		assertEquals(90, retrievedTravel.getRating());
	}

	@Test
	void testDestroyTravel() {
		Travels travelToDestroy = new Travels();
		travelToDestroy.setCity("To Be Deleted");
		travelToDestroy.setCountry("Delete Country");
		travelToDestroy.setRating(75);

		em.persist(travelToDestroy);
		em.getTransaction().commit();

		int travelId = travelToDestroy.getId();

		em.getTransaction().begin();
		em.remove(travelToDestroy);
		em.getTransaction().commit();

		assertDoesNotThrow(() -> {
			em.find(Travels.class, travelId);
		});

		assertNull(em.find(Travels.class, travelId), "Deleted travel entry should not exist in the database");
	}
}