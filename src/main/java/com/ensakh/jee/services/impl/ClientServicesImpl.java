package com.ensakh.jee.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.ensakh.jee.entities.Client;
import com.ensakh.jee.persistence.ClientDAO;
import com.ensakh.jee.services.ClientServices;
import javax.naming.InitialContext;
import javax.transaction.UserTransaction;
import org.springframework.stereotype.Component;

@Component
public class ClientServicesImpl implements ClientServices {
	
	@Autowired
	private ClientDAO clientDao;

        public ClientServicesImpl() {

        }

	@Override
	public void creerClient(Client cli) throws Exception {
            clientDao.persist(cli);
	}

	@Override
	public void supprimerClient(Long id) throws Exception {
		clientDao.remove(id);
	}

	@Override
	public void modifierClient(Client cli) throws Exception {
		clientDao.persist(cli);
	}

	@Override
	public Client chercherCommande(Long id) throws Exception {
		return clientDao.find(id);
	}

	@Override
	public List<Client> tousLesClients() throws Exception {
		return clientDao.findAll();
	}

}
