package com.ensakh.jee.persistence;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Component;

import com.ensakh.jee.entities.Livraison;

@Component
public class LivraisonDAO implements DAO<Livraison>{

	@PersistenceContext
	private EntityManager em;

        public LivraisonDAO() {
            
        }
	
	@Override
	public void persist(Livraison entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void remove(Long id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Livraison find(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Livraison> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

}
