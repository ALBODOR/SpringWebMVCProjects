package com.ensakh.jee.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ensakh.jee.entities.Client;
import com.ensakh.jee.persistence.ClientDAO;
import com.ensakh.jee.services.ClientServices;

@Service
public class ClientServicesImpl implements ClientServices {
	
	@Autowired
	private ClientDAO clientDao;

	@Override
	public void creerClient(Client cli) {
		// TODO Auto-generated method stub

	}

	@Override
	public void supprimerClient(Long id) {
		// TODO Auto-generated method stub

	}

	@Override
	public void modifierClient(Client cli) {
		// TODO Auto-generated method stub

	}

	@Override
	public Client chercherCommande(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Client> tousLesClients() {
		// TODO Auto-generated method stub
		return null;
	}

}
