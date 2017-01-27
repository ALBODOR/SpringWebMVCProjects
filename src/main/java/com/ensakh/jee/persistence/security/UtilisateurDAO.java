package com.ensakh.jee.persistence.security;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Component;

import com.ensakh.jee.entities.security.Utilisateur;
import com.ensakh.jee.persistence.DAO;

@Component
public class UtilisateurDAO implements DAO<Utilisateur> {
	
	@PersistenceContext
	private EntityManager em;
	
	@Override
	public void persist(Utilisateur entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void remove(Long id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Utilisateur find(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Utilisateur> findAll() {
		// TODO Auto-generated method stub
		return null;
	}
	
	public Utilisateur findByLogin(String login) {
		// TODO Auto-generated method stub
		return null;
	}

}
