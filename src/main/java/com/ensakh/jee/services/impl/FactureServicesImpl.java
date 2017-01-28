package com.ensakh.jee.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ensakh.jee.entities.Facture;
import com.ensakh.jee.persistence.FactureDAO;
import com.ensakh.jee.services.FactureServices;

@Service
public class FactureServicesImpl implements FactureServices {

	@Autowired
	private FactureDAO factureDao;

        public FactureServicesImpl() {

        }
        
	@Override
	public void creerFacture(Facture fact) {
		// TODO Auto-generated method stub

	}

	@Override
	public void supprimerFacture(Long id) {
		// TODO Auto-generated method stub

	}

	@Override
	public void modifierFacture(Facture fact) {
		// TODO Auto-generated method stub

	}

	@Override
	public Facture chercherFacture(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Facture> toutesLesFactures() {
		// TODO Auto-generated method stub
		return null;
	}

}
