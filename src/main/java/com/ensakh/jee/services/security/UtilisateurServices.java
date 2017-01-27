package com.ensakh.jee.services.security;

import org.springframework.stereotype.Service;

import com.ensakh.jee.entities.security.Utilisateur;

@Service
public interface UtilisateurServices {

	Utilisateur seConnecter(String login, String pass);
	
	void seDeconnecter(Utilisateur user);
	
}
