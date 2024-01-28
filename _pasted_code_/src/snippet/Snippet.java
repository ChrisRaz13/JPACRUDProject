package snippet;

public class Snippet {
	@Test
	void testShowUpdateForm() {
	    em.getTransaction().begin();
	
	    Travels travelToUpdate = new Travels();
	    travelToUpdate.setId(1);
	    travelToUpdate.setCity("Existing City");
	    travelToUpdate.setCountry("Existing Country");
	    travelToUpdate.setRating(85);
	
	    // Merge the detached entity to make it managed
	    Travels mergedTravel = em.merge(travelToUpdate);
	
	    // Commit the existing transaction before starting a new one
	    em.getTransaction().commit();
	
	    // Start a new transaction
	    em.getTransaction().begin();
	
	    // Update the managed entity
	    mergedTravel.setCity("Updated City");
	    mergedTravel.setCountry("Updated Country");
	    mergedTravel.setRating(90);
	
	    // Commit the new transaction
	    em.getTransaction().commit();
	
	    // Verify the changes
	    Travels retrievedTravel = em.find(Travels.class, 1);
	
	    assertEquals("Updated City", retrievedTravel.getCity());
	    assertEquals("Updated Country", retrievedTravel.getCountry());
	    assertEquals(90, retrievedTravel.getRating());
	}
	
}

