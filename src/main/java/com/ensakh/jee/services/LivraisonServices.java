package com.ensakh.jee.services;

import java.util.List;

import com.ensakh.jee.entities.Livraison;

public interface LivraisonServices {
	
	void creerLivraison(Livraison liv);
	
	void supprimerLivraison(Long id);
	
	void modifierLivraison(Livraison liv);
	
	Livraison chercherLivraison(Long id);
	
	List<Livraison> toutesLesLivraisons();

}
