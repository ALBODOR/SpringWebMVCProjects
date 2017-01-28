package com.ensakh.jee.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ensakh.jee.entities.Livraison;
import com.ensakh.jee.persistence.LivraisonDAO;
import com.ensakh.jee.services.LivraisonServices;

@Service
public class LivraisonServicesImpl implements LivraisonServices {

	@Autowired
	private LivraisonDAO livraisonDao;

        public LivraisonServicesImpl() {

        }
        
	@Override
	public void creerLivraison(Livraison liv) {
		// TODO Auto-generated method stub

	}

	@Override
	public void supprimerLivraison(Long id) {
		// TODO Auto-generated method stub

	}

	@Override
	public void modifierLivraison(Livraison liv) {
		// TODO Auto-generated method stub

	}

	@Override
	public Livraison chercherLivraison(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Livraison> toutesLesLivraisons() {
		// TODO Auto-generated method stub
		return null;
	}

}
