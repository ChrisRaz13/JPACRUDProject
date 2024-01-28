package com.skilldistillery.traveler.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

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
		travels = em.find(Travels.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		travels = null;
		em.close();
	}

	@Test
	void test_Travels_entity_mapping() {
		assertNotNull(travels);
		assertEquals("Vigo", travels.getCity());

	}

}
