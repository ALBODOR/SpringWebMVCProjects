package com.ensakh.jee.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.ensakh.jee.entities.Produit;

@Service
public interface ProduitServices {

	void creerProduit(Produit fact);
	
	void supprimerProduit(Long id);
	
	void modifierProduit(Produit fact);
	
	Produit chercherProduit(Long id);
	
	List<Produit> tousLesProduits();
}
