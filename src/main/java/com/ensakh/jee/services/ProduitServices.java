package com.ensakh.jee.services;

import java.util.List;

import com.ensakh.jee.entities.Produit;

public interface ProduitServices {

	void creerProduit(Produit fact);
	
	void supprimerProduit(Long id);
	
	void modifierProduit(Produit fact);
	
	Produit chercherProduit(Long id);
	
	List<Produit> tousLesProduits();
}
