package com.ensakh.jee.persistence;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Component;

import com.ensakh.jee.entities.Client;

@Component
public class ClientDAO implements DAO<Client>{

	@PersistenceContext
	private EntityManager em;
	
	@Override
	public void persist(Client entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void remove(Long id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Client find(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Client> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

}
