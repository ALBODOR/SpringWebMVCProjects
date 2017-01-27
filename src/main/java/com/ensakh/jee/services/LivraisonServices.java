package com.ensakh.jee.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.ensakh.jee.entities.Livraison;

@Service
public interface LivraisonServices {
	
	void creerLivraison(Livraison liv);
	
	void supprimerLivraison(Long id);
	
	void modifierLivraison(Livraison liv);
	
	Livraison chercherLivraison(Long id);
	
	List<Livraison> toutesLesLivraisons();

}
