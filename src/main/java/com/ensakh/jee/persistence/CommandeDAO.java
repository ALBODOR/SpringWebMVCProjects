package com.ensakh.jee.persistence;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Component;

import com.ensakh.jee.entities.Commande;

@Component
public class CommandeDAO implements DAO<Commande>{

	@PersistenceContext(unitName = "GestionCommandesPU")
	private EntityManager em;

        public CommandeDAO() {

        }
	
	@Override
	public void persist(Commande entity) {
		em.persist(entity);
	}

	@Override
	public void remove(Long id) {
		em.remove(em.find(Commande.class, id));		
	}

	@Override
	public Commande find(Long id) {
		return em.find(Commande.class, id);
	}

	@Override
	public List<Commande> findAll() {
		return em.createNamedQuery("Commande.findById", Commande.class).getResultList();
	}

}
