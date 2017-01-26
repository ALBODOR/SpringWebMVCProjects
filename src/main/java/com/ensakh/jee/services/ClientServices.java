package com.ensakh.jee.services;

import java.util.List;

import com.ensakh.jee.entities.Client;

public interface ClientServices {

	void creerClient(Client cli);
	
	void supprimerClient(Long id);
	
	void modifierClient(Client cli);
	
	Client chercherCommande(Long id);
	
	List<Client> tousLesClients();

}
