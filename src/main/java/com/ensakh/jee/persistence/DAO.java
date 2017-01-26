package com.ensakh.jee.persistence;

import java.util.List;


public interface DAO<E> {
	
	void persist(E entity);
	
	void remove(Long id);
	
	E find(Long id);
	
	List<E> findAll();
	
}
