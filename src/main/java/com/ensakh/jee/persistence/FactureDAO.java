package com.ensakh.jee.persistence;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Component;

import com.ensakh.jee.entities.Facture;

@Component
public class FactureDAO implements DAO<Facture>{
	
	@PersistenceContext
	private EntityManager em;
	
	@Override
	public void persist(Facture entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void remove(Long id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Facture find(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Facture> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

}
