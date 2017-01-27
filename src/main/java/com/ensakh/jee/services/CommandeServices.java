package com.ensakh.jee.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.ensakh.jee.entities.Commande;

@Service
public interface CommandeServices {
	
	void creerCommande(Commande cmd);
	
	void supprimerCommande(Long id);
	
	void modifierLivraison(Commande cmd);
	
	Commande chercherCommande(Long id);
	
	List<Commande> toutesLesCommandes();

}
