package com.ensakh.jee.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ensakh.jee.entities.Produit;
import com.ensakh.jee.persistence.ProduitDAO;
import com.ensakh.jee.services.ProduitServices;

@Service	
public class ProduitServicesImpl implements ProduitServices {

	@Autowired
	private ProduitDAO produitDao;
	
	@Override
	public void creerProduit(Produit fact) {
		// TODO Auto-generated method stub

	}

	@Override
	public void supprimerProduit(Long id) {
		// TODO Auto-generated method stub

	}

	@Override
	public void modifierProduit(Produit fact) {
		// TODO Auto-generated method stub

	}

	@Override
	public Produit chercherProduit(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Produit> tousLesProduits() {
		// TODO Auto-generated method stub
		return null;
	}

}
