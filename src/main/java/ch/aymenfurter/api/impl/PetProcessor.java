package ch.aymenfurter.api.impl;

import org.apache.camel.Exchange;
import org.apache.camel.Processor;

import ch.aymenfurter.api.model.Pet;
import ch.aymenfurter.api.model.Pets;

public class PetProcessor implements Processor {

	@Override
	public void process(Exchange exchange) throws Exception {
		Pets pets = new Pets();

		Pet merlin = new Pet();
		merlin.setName("Merlin");
		merlin.setTag("cat");
		merlin.setId(1L);
		
		pets.add(merlin);
		exchange.getIn().setBody(pets);
	}

}
