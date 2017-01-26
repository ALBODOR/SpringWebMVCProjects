package com.ensakh.jee.services.security;

import com.ensakh.jee.entities.security.Utilisateur;

public interface UtilisateurServices {

	Utilisateur seConnecter(String login, String pass);
	
	void seDeconnecter(Utilisateur user);
	
}
