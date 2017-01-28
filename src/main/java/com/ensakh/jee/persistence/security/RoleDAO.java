package com.ensakh.jee.persistence.security;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Component;

import com.ensakh.jee.entities.security.Role;
import com.ensakh.jee.persistence.DAO;

@Component
public class RoleDAO implements DAO<Role> {

	@PersistenceContext
	private EntityManager em;

        public RoleDAO() {
            
        }

	@Override
	public void persist(Role entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void remove(Long id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Role find(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Role> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

}
