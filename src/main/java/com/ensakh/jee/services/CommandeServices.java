package com.ensakh.jee.services;

import java.util.List;

import com.ensakh.jee.entities.Commande;

public interface CommandeServices {
	
	void creerCommande(Commande cmd);
	
	void supprimerCommande(Long id);
	
	void modifierLivraison(Commande cmd);
	
	Commande chercherCommande(Long id);
	
	List<Commande> toutesLesCommandes();

}
