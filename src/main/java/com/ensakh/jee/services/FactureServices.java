package com.ensakh.jee.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.ensakh.jee.entities.Facture;

@Service
public interface FactureServices {

	void creerFacture(Facture fact);
	
	void supprimerFacture(Long id);
	
	void modifierFacture(Facture fact);
	
	Facture chercherFacture(Long id);
	
	List<Facture> toutesLesFactures();

}
