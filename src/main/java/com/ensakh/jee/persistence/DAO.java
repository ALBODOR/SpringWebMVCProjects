package com.ensakh.jee.persistence;

import java.util.List;


public interface DAO<E> {
	
	void persist(E entity) throws Exception;
	
	void remove(Long id) throws Exception;
	
	E find(Long id) throws Exception;
	
	List<E> findAll() throws Exception;
	
}
