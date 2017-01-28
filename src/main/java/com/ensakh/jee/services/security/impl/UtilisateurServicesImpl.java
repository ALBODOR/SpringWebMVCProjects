package com.ensakh.jee.services.security.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ensakh.jee.entities.security.Utilisateur;
import com.ensakh.jee.persistence.security.UtilisateurDAO;
import com.ensakh.jee.services.security.UtilisateurServices;

@Service
public class UtilisateurServicesImpl implements UtilisateurServices {

	@Autowired
	private UtilisateurDAO utilisateurDao;
	
        public UtilisateurServicesImpl() {

        }
        
	@Override
	public Utilisateur seConnecter(String login, String pass) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void seDeconnecter(Utilisateur user) {
		// TODO Auto-generated method stub

	}

}
