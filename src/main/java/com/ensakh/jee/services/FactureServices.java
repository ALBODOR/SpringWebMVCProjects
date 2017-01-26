package com.ensakh.jee.services;

import java.util.List;

import com.ensakh.jee.entities.Facture;

public interface FactureServices {

	void creerFacture(Facture fact);
	
	void supprimerFacture(Long id);
	
	void modifierFacture(Facture fact);
	
	Facture chercherFacture(Long id);
	
	List<Facture> toutesLesFactures();

}
