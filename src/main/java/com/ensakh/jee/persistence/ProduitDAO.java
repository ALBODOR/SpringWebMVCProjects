package com.ensakh.jee.persistence;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Component;

import com.ensakh.jee.entities.Produit;

@Component
public class ProduitDAO implements DAO<Produit> {

	@PersistenceContext
	private EntityManager em;

        public ProduitDAO() {
            
        }
	
	@Override
	public void persist(Produit entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void remove(Long id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Produit find(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Produit> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

}
