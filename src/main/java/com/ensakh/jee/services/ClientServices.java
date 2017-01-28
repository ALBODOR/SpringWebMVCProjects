package com.ensakh.jee.services;

import java.util.List;
import com.ensakh.jee.entities.Client;
import org.springframework.stereotype.Component;

@Component
public interface ClientServices {

	void creerClient(Client cli) throws Exception;
	
	void supprimerClient(Long id) throws Exception;
	
	void modifierClient(Client cli) throws Exception;
	
	Client chercherCommande(Long id) throws Exception;
	
	List<Client> tousLesClients() throws Exception;

}
