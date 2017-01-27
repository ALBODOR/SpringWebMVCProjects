package com.ensakh.jee.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ensakh.jee.entities.Commande;
import com.ensakh.jee.persistence.CommandeDAO;
import com.ensakh.jee.services.CommandeServices;

@Service
public class CommandeServicesImpl implements CommandeServices {

	@Autowired
	private CommandeDAO commandeDAO;
	
	public CommandeServicesImpl() {
		commandeDAO = new CommandeDAO();
	}
	
	@Override
	public void creerCommande(Commande cmd) {
		commandeDAO.persist(cmd);
	}

	@Override
	public void supprimerCommande(Long id) {
		commandeDAO.remove(id);
	}

	@Override
	public void modifierLivraison(Commande cmd) {
		commandeDAO.persist(cmd);
	}

	@Override
	public Commande chercherCommande(Long id) {
		return commandeDAO.find(id);
	}

	@Override
	public List<Commande> toutesLesCommandes() {
		return commandeDAO.findAll();
	}

}
